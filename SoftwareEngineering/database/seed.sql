\echo 'Starting CanCook seed...'

-- 1️⃣ Drop everything first (optional, for clean start)
\i drop.sql

-- 2️⃣ Recreate tables, constraints, and schema
\i schema.sql

\echo '1) users'
\i 01_users.sql

-- \echo '2) grocery_stores'
-- \i 02_grocery_stores.sql

-- \echo '3) categories'
-- \i 03_categories.sql

-- \echo '4) units'
-- \i 04_units.sql

-- \echo '5) items'
-- \i 05_items.sql

-- \echo '6) store_inventory'
-- \i 06_storeInventory.sql

-- \echo '7) pantries'
-- \i 07_pantries.sql

\echo '8) recipes'
\i 08_recipes.sql

-- \echo '9) pantry_items'
-- \i 10_pantry_items.sql

-- \echo '10) recipe_ingredients'
-- \i 11_recipe_ingredients.sql


-- \echo '12) recipe_feedback'
-- \i recipe_feedback.sql
-- \echo '13) account_unlock_requests'
-- \i account_unlock_requests.sql

\echo 'Seed completed.'