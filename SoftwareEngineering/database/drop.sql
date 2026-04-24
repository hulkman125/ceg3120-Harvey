-- ============================
-- CanCook Drop Script
-- ============================

-- Drop tables in dependency order

DROP TABLE IF EXISTS comments CASCADE;
DROP TABLE IF EXISTS ratings CASCADE;
DROP TABLE IF EXISTS recipe_steps CASCADE;
DROP TABLE IF EXISTS recipe_ingredients CASCADE;
DROP TABLE IF EXISTS recipes CASCADE;

DROP TABLE IF EXISTS pantry_items CASCADE;

DROP TABLE IF EXISTS grocery_items CASCADE;
DROP TABLE IF EXISTS grocery_stores CASCADE;

DROP TABLE IF EXISTS users CASCADE;

-- Drop custom types if you use them

DROP TYPE IF EXISTS user_role CASCADE;
DROP TYPE IF EXISTS recipe_visibility CASCADE;
DROP TYPE IF EXISTS grocery_category CASCADE;
DROP TYPE IF EXISTS unit_type CASCADE;
