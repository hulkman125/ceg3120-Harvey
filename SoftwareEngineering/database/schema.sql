------------------ Drop existing objects ---------------------

DROP TRIGGER IF EXISTS account_unlock_requests_set_updated_at ON account_unlock_requests;
DROP TRIGGER IF EXISTS recipe_feedback_set_updated_at ON recipe_feedback;
DROP TRIGGER IF EXISTS recipe_ingredients_set_updated_at ON recipe_ingredients;
DROP TRIGGER IF EXISTS recipe_steps_set_updated_at ON recipe_steps;
DROP TRIGGER IF EXISTS recipes_set_updated_at ON recipes;
DROP TRIGGER IF EXISTS pantry_items_set_updated_at ON pantry_items;
DROP TRIGGER IF EXISTS pantries_set_updated_at ON pantries;
DROP TRIGGER IF EXISTS store_inventory_set_updated_at ON store_inventory;
DROP TRIGGER IF EXISTS units_set_updated_at ON units;
DROP TRIGGER IF EXISTS items_set_updated_at ON items;
DROP TRIGGER IF EXISTS categories_set_updated_at ON categories;
DROP TRIGGER IF EXISTS grocery_stores_set_updated_at ON grocery_stores;
DROP TRIGGER IF EXISTS users_set_updated_at ON users;
DROP TRIGGER IF EXISTS grocery_stores_enforce_admin_role ON grocery_stores;

DROP FUNCTION IF EXISTS enforce_grocery_admin_role();
DROP FUNCTION IF EXISTS set_updated_at();

DROP TABLE IF EXISTS account_unlock_requests CASCADE;
DROP TABLE IF EXISTS recipe_feedback CASCADE;
DROP TABLE IF EXISTS recipe_ingredients CASCADE;
DROP TABLE IF EXISTS recipe_steps CASCADE;
DROP TABLE IF EXISTS recipes CASCADE;
DROP TABLE IF EXISTS pantry_items CASCADE;
DROP TABLE IF EXISTS pantries CASCADE;
DROP TABLE IF EXISTS store_inventory CASCADE;
DROP TABLE IF EXISTS units CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS grocery_stores CASCADE;
DROP TABLE IF EXISTS users CASCADE;

DROP TYPE IF EXISTS user_status;
DROP TYPE IF EXISTS user_role;
DROP TYPE IF EXISTS stock_status;
DROP TYPE IF EXISTS recipe_visibility;

CREATE EXTENSION IF NOT EXISTS citext;

----------------------------------------------------
--------------------- ENUMS ------------------------
----------------------------------------------------

CREATE TYPE user_role AS ENUM (
  'user',
  'administrator',
  'grocery_admin'
);

CREATE TYPE user_status AS ENUM (
  'pending',
  'approved',
  'rejected'
);

CREATE TYPE stock_status AS ENUM (
  'in_stock',
  'out_of_stock',
  'low_stock',
  'unknown'
);

CREATE TYPE recipe_visibility AS ENUM (
  'private',
  'public'
);

----------------------------------------------------
--------------------- FUNCTIONS ---------------------
----------------------------------------------------

CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION enforce_grocery_admin_role()
RETURNS TRIGGER AS $$
DECLARE r user_role;
BEGIN
  SELECT role INTO r FROM users WHERE user_id = NEW.grocery_admin_id;

  IF r IS DISTINCT FROM 'grocery_admin' THEN
    RAISE EXCEPTION 'grocery_admin_id must reference a user with role grocery_admin';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

----------------------------------------------------
--------------------- TABLES ------------------------
----------------------------------------------------

--------------------- USERS -------------------------
CREATE TABLE users (
  user_id               BIGSERIAL PRIMARY KEY,

  role                  user_role NOT NULL,
  status                user_status NOT NULL DEFAULT 'pending',

  username              CHAR(8) NOT NULL UNIQUE,
  name                  VARCHAR(150) NOT NULL,
  password         TEXT NOT NULL,
  email            VARCHAR(255) NOT NULL UNIQUE,
  Date_of_Birth    DATE NOT NULL,

  failed_login_attempts SMALLINT NOT NULL DEFAULT 0,
  is_locked             BOOLEAN NOT NULL DEFAULT FALSE,
  locked_at             TIMESTAMPTZ,

  approved_by           BIGINT,
  approved_at           TIMESTAMPTZ,

  created_at            TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at            TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT users_username_format_chk
    CHECK (username ~ '^[a-z]{8}$'),

  CONSTRAINT users_failed_attempts_chk
    CHECK (failed_login_attempts BETWEEN 0 AND 3),

  CONSTRAINT users_lock_consistency_chk
    CHECK (
      (is_locked = FALSE AND locked_at IS NULL)
      OR (is_locked = TRUE AND locked_at IS NOT NULL)
    ),

  CONSTRAINT users_approval_consistency_chk
    CHECK (
      status <> 'approved'
      OR role = 'administrator'
      OR role = 'grocery_admin'
      OR (approved_by IS NOT NULL AND approved_at IS NOT NULL)
    ),

  CONSTRAINT users_approved_by_fk
    FOREIGN KEY (approved_by)
    REFERENCES users(user_id)
    DEFERRABLE INITIALLY DEFERRED
);

--------------------- GROCERY STORES ----------------
CREATE TABLE grocery_stores (
  store_id           BIGSERIAL PRIMARY KEY,

  grocery_admin_id   BIGINT NOT NULL UNIQUE,

  store_name         VARCHAR(150) NOT NULL,

  address_line1      VARCHAR(200) NOT NULL,
  address_line2      VARCHAR(200),
  city               VARCHAR(100) NOT NULL,
  state              VARCHAR(50)  NOT NULL,
  postal_code        VARCHAR(20)  NOT NULL,
  country            VARCHAR(60)  NOT NULL DEFAULT 'US',

  phone              VARCHAR(25),

  created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT grocery_stores_admin_fk
    FOREIGN KEY (grocery_admin_id)
    REFERENCES users(user_id),

  CONSTRAINT grocery_stores_name_city_unique
    UNIQUE (store_name, city, state, postal_code)
);

--------------------- CATEGORIES --------------------
CREATE TABLE categories (
  category_id   BIGSERIAL PRIMARY KEY,

  category_name CITEXT NOT NULL,

  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT categories_name_unique
    UNIQUE (category_name)
);

--------------------- ITEMS -------------------------
CREATE TABLE items (
  item_id     BIGSERIAL PRIMARY KEY,

  category_id BIGINT NOT NULL,

  item_name   CITEXT NOT NULL,
  is_active   BOOLEAN NOT NULL DEFAULT TRUE,

  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT items_category_fk
    FOREIGN KEY (category_id) REFERENCES categories(category_id),

  CONSTRAINT items_name_unique
    UNIQUE (item_name)
);

--------------------- STORE INVENTORY ---------------
CREATE TABLE store_inventory (
  store_id        BIGINT NOT NULL,
  item_id         BIGINT NOT NULL,

  status          stock_status NOT NULL DEFAULT 'unknown',

  quantity        NUMERIC(12,3),
  -- unit_id         BIGINT,

  last_checked_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT store_inventory_pk
    PRIMARY KEY (store_id, item_id),

  CONSTRAINT store_inventory_store_fk
    FOREIGN KEY (store_id) REFERENCES grocery_stores(store_id)
    ON DELETE CASCADE,

  CONSTRAINT store_inventory_item_fk
    FOREIGN KEY (item_id) REFERENCES items(item_id)
    ON DELETE CASCADE,

  CONSTRAINT store_inventory_unit_fk
    FOREIGN KEY (unit_id) REFERENCES units(unit_id)
    ON DELETE RESTRICT,

  CONSTRAINT store_inventory_quantity_chk
    CHECK (quantity IS NULL OR quantity >= 0),

  CONSTRAINT store_inventory_quantity_unit_pair_chk
    CHECK (
      (quantity IS NULL AND unit_id IS NULL)
      OR (quantity IS NOT NULL AND unit_id IS NOT NULL)
    )
);

--------------------- UNITS -------------------------
CREATE TABLE units (
  unit_id     BIGSERIAL PRIMARY KEY,

  unit_name   CITEXT NOT NULL,
  unit_abbr   CITEXT,

  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT units_name_unique
    UNIQUE (unit_name),

  CONSTRAINT units_abbr_unique
    UNIQUE (unit_abbr)
);


--------------------- PANTRIES ----------------------
CREATE TABLE pantries (
  pantry_id   BIGSERIAL PRIMARY KEY,

  user_id     BIGINT NOT NULL UNIQUE,

  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT pantries_user_fk
    FOREIGN KEY (user_id) REFERENCES users(user_id)
    ON DELETE CASCADE
);

--------------------- PANTRY ITEMS ------------------
CREATE TABLE pantry_items (
  pantry_item_id BIGSERIAL PRIMARY KEY,

  pantry_id      BIGINT NOT NULL,
  item_id        BIGINT NOT NULL,

  quantity       NUMERIC(12,3) NOT NULL DEFAULT 1 CHECK (quantity > 0),
  unit_id        BIGINT NOT NULL,

  notes          TEXT,

  created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT pantry_items_pantry_fk
    FOREIGN KEY (pantry_id) REFERENCES pantries(pantry_id)
    ON DELETE CASCADE,

  CONSTRAINT pantry_items_item_fk
    FOREIGN KEY (item_id) REFERENCES items(item_id)
    ON DELETE RESTRICT,

  CONSTRAINT pantry_items_unit_fk
    FOREIGN KEY (unit_id) REFERENCES units(unit_id)
    ON DELETE RESTRICT,

  CONSTRAINT pantry_items_one_row_per_item_per_pantry
    UNIQUE (pantry_id, item_id)
);

--------------------- RECIPES -----------------------
CREATE TABLE recipes (
  recipe_id     BIGSERIAL PRIMARY KEY,

  owner_user_id BIGINT NOT NULL,

  title         VARCHAR(200) NOT NULL,
  description   TEXT,

  visibility    recipe_visibility NOT NULL DEFAULT 'private',

  category_id   BIGINT,

  servings      SMALLINT CHECK (servings IS NULL OR servings > 0),
  prep_minutes  INTEGER  CHECK (prep_minutes IS NULL OR prep_minutes >= 0),
  cook_minutes  INTEGER  CHECK (cook_minutes IS NULL OR cook_minutes >= 0),

  instructions  TEXT NOT NULL,
  image_url     TEXT,

  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT recipes_owner_fk
    FOREIGN KEY (owner_user_id) REFERENCES users(user_id)
    ON DELETE CASCADE,

  CONSTRAINT recipes_category_fk
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
    ON DELETE SET NULL
);

--------------------- RECIPE STEPS ------------------
CREATE TABLE recipe_steps (
  recipe_step_id BIGSERIAL PRIMARY KEY,

  recipe_id      BIGINT NOT NULL,

  step_number    SMALLINT NOT NULL CHECK (step_number > 0),
  instruction    TEXT NOT NULL,

  created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT recipe_steps_recipe_fk
    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id)
    ON DELETE CASCADE,

  CONSTRAINT recipe_steps_unique_step_per_recipe
    UNIQUE (recipe_id, step_number)
);

--------------------- RECIPE INGREDIENTS ------------
CREATE TABLE recipe_ingredients (
  recipe_ingredient_id BIGSERIAL PRIMARY KEY,

  recipe_id            BIGINT NOT NULL,
  item_id              BIGINT NOT NULL,

  quantity             NUMERIC(12,3),
  unit_id              BIGINT,

  notes                TEXT,

  created_at           TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at           TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT recipe_ingredients_recipe_fk
    FOREIGN KEY (recipe_id)
    REFERENCES recipes(recipe_id)
    ON DELETE CASCADE,

  CONSTRAINT recipe_ingredients_item_fk
    FOREIGN KEY (item_id)
    REFERENCES items(item_id)
    ON DELETE RESTRICT,

  CONSTRAINT recipe_ingredients_unit_fk
    FOREIGN KEY (unit_id)
    REFERENCES units(unit_id)
    ON DELETE RESTRICT,

  CONSTRAINT recipe_ingredients_quantity_chk
    CHECK (quantity IS NULL OR quantity > 0),

  CONSTRAINT recipe_ingredients_unique_item_per_recipe
    UNIQUE (recipe_id, item_id)
);

--------------------- RECIPE FEEDBACK ---------------
CREATE TABLE recipe_feedback (
  recipe_feedback_id BIGSERIAL PRIMARY KEY,

  recipe_id          BIGINT NOT NULL,
  user_id            BIGINT NOT NULL,

  rating             SMALLINT
    CHECK (rating IS NULL OR rating BETWEEN 1 AND 5),

  comment_text       TEXT,

  created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT recipe_feedback_recipe_fk
    FOREIGN KEY (recipe_id)
    REFERENCES recipes(recipe_id)
    ON DELETE CASCADE,

  CONSTRAINT recipe_feedback_user_fk
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
    ON DELETE CASCADE,

  CONSTRAINT recipe_feedback_at_least_one_chk
    CHECK (
      rating IS NOT NULL
      OR comment_text IS NOT NULL
    ),

  CONSTRAINT recipe_feedback_one_per_user
    UNIQUE (recipe_id, user_id)
);

--------------------- ACCOUNT UNLOCK REQUESTS -------
CREATE TABLE account_unlock_requests (
  unlock_request_id BIGSERIAL PRIMARY KEY,

  user_id           BIGINT NOT NULL,

  request_reason    TEXT,

  status            VARCHAR(20) NOT NULL DEFAULT 'pending',

  reviewed_by       BIGINT,
  reviewed_at       TIMESTAMPTZ,

  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),

  CONSTRAINT unlock_requests_user_fk
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
    ON DELETE CASCADE,

  CONSTRAINT unlock_requests_reviewer_fk
    FOREIGN KEY (reviewed_by)
    REFERENCES users(user_id)
    ON DELETE SET NULL,

  CONSTRAINT unlock_requests_status_chk
    CHECK (status IN ('pending', 'approved', 'rejected')),

  CONSTRAINT unlock_requests_one_active_per_user
    UNIQUE (user_id)
);

----------------------------------------------------
--------------------- TRIGGERS ----------------------
----------------------------------------------------

CREATE TRIGGER grocery_stores_enforce_admin_role
BEFORE INSERT OR UPDATE ON grocery_stores
FOR EACH ROW
EXECUTE FUNCTION enforce_grocery_admin_role();

CREATE TRIGGER users_set_updated_at
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER grocery_stores_set_updated_at
BEFORE UPDATE ON grocery_stores
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER categories_set_updated_at
BEFORE UPDATE ON categories
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER items_set_updated_at
BEFORE UPDATE ON items
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER units_set_updated_at
BEFORE UPDATE ON units
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER store_inventory_set_updated_at
BEFORE UPDATE ON store_inventory
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER pantries_set_updated_at
BEFORE UPDATE ON pantries
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER pantry_items_set_updated_at
BEFORE UPDATE ON pantry_items
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER recipes_set_updated_at
BEFORE UPDATE ON recipes
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER recipe_steps_set_updated_at
BEFORE UPDATE ON recipe_steps
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER recipe_ingredients_set_updated_at
BEFORE UPDATE ON recipe_ingredients
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER recipe_feedback_set_updated_at
BEFORE UPDATE ON recipe_feedback
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER account_unlock_requests_set_updated_at
BEFORE UPDATE ON account_unlock_requests
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

----------------------------------------------------
--------------------- INDEXES -----------------------
----------------------------------------------------

CREATE INDEX idx_grocery_stores_grocery_admin_id
ON grocery_stores(grocery_admin_id);

CREATE INDEX idx_items_category_id
ON items(category_id);

CREATE INDEX idx_store_inventory_status
ON store_inventory(status);

CREATE INDEX idx_pantry_items_pantry_id
ON pantry_items(pantry_id);

CREATE INDEX idx_pantry_items_item_id
ON pantry_items(item_id);

CREATE INDEX idx_recipes_owner_user_id
ON recipes(owner_user_id);

CREATE INDEX idx_recipes_visibility
ON recipes(visibility);

CREATE INDEX idx_recipes_category_id
ON recipes(category_id);

CREATE INDEX idx_recipe_steps_recipe_id
ON recipe_steps(recipe_id);

CREATE INDEX idx_recipe_ingredients_recipe_id
ON recipe_ingredients(recipe_id);

CREATE INDEX idx_recipe_ingredients_item_id
ON recipe_ingredients(item_id);

CREATE INDEX idx_recipe_feedback_recipe_id
ON recipe_feedback(recipe_id);

CREATE INDEX idx_recipe_feedback_user_id
ON recipe_feedback(user_id);

CREATE INDEX idx_recipe_feedback_recipe_created
ON recipe_feedback(recipe_id, created_at DESC);

CREATE INDEX idx_unlock_requests_status
ON account_unlock_requests(status);

CREATE INDEX idx_unlock_requests_user_id
ON account_unlock_requests(user_id);

CREATE INDEX store_inventory_item_idx
ON store_inventory(item_id);

CREATE INDEX store_inventory_store_idx
ON store_inventory(store_id);