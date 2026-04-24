INSERT INTO pantry_items (pantry_id, item_id, quantity, notes)
VALUES
-- cookmate
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Eggs' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 12,

 'Large eggs'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Whole Milk' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 1,

 'For breakfast and cooking'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Butter' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 2,

 'Unsalted sticks'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'White Rice' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 5,

 'Staple for meals'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Olive Oil' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Extra virgin'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Salt' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Fine sea salt'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'cookmate')),
 (SELECT item_id FROM items WHERE item_name = 'Black Pepper' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Ground pepper'),

-- foodlvrx
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Banana' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 8,

 'For smoothies'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Strawberries' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 2,

 'Fresh'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Greek Yogurt' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 32,

 'Plain'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Honey' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 16,

 'For topping'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Granola' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 12,

 'Crunchy snack'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'foodlvrx')),
 (SELECT item_id FROM items WHERE item_name = 'Bottled Water' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Beverages')),
 24,

 'Case of water'),

-- chefella
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Spaghetti' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 2,

 'Dinner pasta'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Tomato Sauce' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 3,

 'Jarred'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Parmesan Cheese' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 8,

 'Grated'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Garlic' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 6,

 'Bupounds'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Onion' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 4,

 'Yellow'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Olive Oil' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Cooking oil'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'chefella')),
 (SELECT item_id FROM items WHERE item_name = 'Oregano' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Dried'),

-- tastebud
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'tastebud')),
 (SELECT item_id FROM items WHERE item_name = 'Chicken Broth' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 4,

 'Cartons'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'tastebud')),
 (SELECT item_id FROM items WHERE item_name = 'White Rice' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 5,

 'Any rice works'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'tastebud')),
 (SELECT item_id FROM items WHERE item_name = 'Carrot' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 2,

 'For soups'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'tastebud')),
 (SELECT item_id FROM items WHERE item_name = 'Celery' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 1,

 'Stalks'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'tastebud')),
 (SELECT item_id FROM items WHERE item_name = 'Onion Powder' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Backup seasoning'),

-- spicegal
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'spicegal')),
 (SELECT item_id FROM items WHERE item_name = 'Paprika' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Smoked'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'spicegal')),
 (SELECT item_id FROM items WHERE item_name = 'Cumin' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Ground'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'spicegal')),
 (SELECT item_id FROM items WHERE item_name = 'Chili Powder' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Medium heat'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'spicegal')),
 (SELECT item_id FROM items WHERE item_name = 'Hot Sauce' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Spicy'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'spicegal')),
 (SELECT item_id FROM items WHERE item_name = 'Serrano Pepper' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 10,

 'Fresh peppers'),

-- mealprep
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'mealprep')),
 (SELECT item_id FROM items WHERE item_name = 'Whole Chicken' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Meat and Seafood')),
 6,

 'For weekly prep'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'mealprep')),
 (SELECT item_id FROM items WHERE item_name = 'Brown Rice' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 10,

 'Bulk'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'mealprep')),
 (SELECT item_id FROM items WHERE item_name = 'Broccoli' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 3,

 'Steam bags'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'mealprep')),
 (SELECT item_id FROM items WHERE item_name = 'Olive Oil' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Cooking'),

-- homechef
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'homechef')),
 (SELECT item_id FROM items WHERE item_name = 'Sandwich Bread' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Bakery')),
 1,

 'Loaf'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'homechef')),
 (SELECT item_id FROM items WHERE item_name = 'Cheddar Cheese' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 1,

 'Sliced'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'homechef')),
 (SELECT item_id FROM items WHERE item_name = 'Tomato' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 4,

 'For sandwiches'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'homechef')),
 (SELECT item_id FROM items WHERE item_name = 'Cucumber' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 2,

 'Fresh'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'homechef')),
 (SELECT item_id FROM items WHERE item_name = 'Mayonnaise' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Condiment'),

-- yumsterx
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'yumsterx')),
 (SELECT item_id FROM items WHERE item_name = 'Cookies' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Snacks')),
 2,

 'Sweet treats'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'yumsterx')),
 (SELECT item_id FROM items WHERE item_name = 'Chocolate Bar' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Snacks')),
 6,

 'Variety'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'yumsterx')),
 (SELECT item_id FROM items WHERE item_name = 'Cola Soda' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Beverages')),
 12,

 'Cans'),

-- bakerjoy
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'bakerjoy')),
 (SELECT item_id FROM items WHERE item_name = 'All Purpose Flour' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 10,

 'Baking'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'bakerjoy')),
 (SELECT item_id FROM items WHERE item_name = 'White Sugar' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 5,

 'Granulated'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'bakerjoy')),
 (SELECT item_id FROM items WHERE item_name = 'Baking Powder' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'Leavening'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'bakerjoy')),
 (SELECT item_id FROM items WHERE item_name = 'Butter' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 4,

 'For baking'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'bakerjoy')),
 (SELECT item_id FROM items WHERE item_name = 'Eggs' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 18,

 'Large'),

-- grillpro
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'grillpro')),
 (SELECT item_id FROM items WHERE item_name = 'Ribeye Steak' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Meat and Seafood')),
 6,

 'For grilling'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'grillpro')),
 (SELECT item_id FROM items WHERE item_name = 'Corn' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 8,

 'Grill sides'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'grillpro')),
 (SELECT item_id FROM items WHERE item_name = 'Barbecue Sauce' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 2,

 'BBQ'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'grillpro')),
 (SELECT item_id FROM items WHERE item_name = 'Black Pepper' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Seasoning'),

-- flavorfy
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'flavorfy')),
 (SELECT item_id FROM items WHERE item_name = 'Green Tea' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Beverages')),
 1,

 'Tea bags'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'flavorfy')),
 (SELECT item_id FROM items WHERE item_name = 'Lemon' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 6,

 'For tea'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'flavorfy')),
 (SELECT item_id FROM items WHERE item_name = 'Honey' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 12,

 'Sweetener'),

-- herbally
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'herbally')),
 (SELECT item_id FROM items WHERE item_name = 'Basil' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Dried basil'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'herbally')),
 (SELECT item_id FROM items WHERE item_name = 'Oregano' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Dried oregano'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'herbally')),
 (SELECT item_id FROM items WHERE item_name = 'Garlic Powder' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Spices and Herbs')),
 1,

 'Spice jar'),

-- kitchenn                                                                                  
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'kitchenn')),
 (SELECT item_id FROM items WHERE item_name = 'Coffee' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Beverages')),
 1,

 'Ground coffee'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'kitchenn')),
 (SELECT item_id FROM items WHERE item_name = 'Half and Half' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Dairy')),
 1,
 (SELECT unit_id FROM units WHERE unit_name = 'quart'),
 'For coffee'),

-- dishdash
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'dishdash')),
 (SELECT item_id FROM items WHERE item_name = 'Tortillas' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Bakery')),
 2,

 'Pack'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'dishdash')),
 (SELECT item_id FROM items WHERE item_name = 'Ground Turkey' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Meat and Seafood')),
 2,

 'Taco meat'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'dishdash')),
 (SELECT item_id FROM items WHERE item_name = 'Avocado' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 4,

 'Guac'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'dishdash')),
 (SELECT item_id FROM items WHERE item_name = 'Hot Sauce' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Pantry Staples')),
 1,

 'If available'),

-- snackify
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'snackify')),
 (SELECT item_id FROM items WHERE item_name = 'Gummy Candy' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Snacks')),
 5,

 'Candy bags'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'snackify')),
 (SELECT item_id FROM items WHERE item_name = 'Pretzels' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Snacks')),
 2,

 'Snack'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'snackify')),
 (SELECT item_id FROM items WHERE item_name = 'Sparkling Water' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Beverages')),
 12,

 'Cans'),

-- freshpal
((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'freshpal')),
 (SELECT item_id FROM items WHERE item_name = 'Spinach' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 10,

 'For salads'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'freshpal')),
 (SELECT item_id FROM items WHERE item_name = 'Romaine Lettuce' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 2,

 'Heads'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'freshpal')),
 (SELECT item_id FROM items WHERE item_name = 'Cucumber' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 3,

 'Fresh'),

((SELECT pantry_id FROM pantries WHERE user_id = (SELECT user_id FROM users WHERE username = 'freshpal')),
 (SELECT item_id FROM items WHERE item_name = 'Tomato' AND category_id = (SELECT category_id FROM categories WHERE category_name = 'Produce')),
 5,

 'Vine tomatoes');