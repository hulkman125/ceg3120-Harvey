-- done
INSERT INTO store_inventory (store_id, item_id, status, quantity)
VALUES
(1, (SELECT item_id FROM items WHERE item_name = 'Apple'),
 'in_stock', 185),

(1, (SELECT item_id FROM items WHERE item_name = 'Banana'),
 'in_stock', 240),

(1, (SELECT item_id FROM items WHERE item_name = 'Orange'),
 'in_stock', 172),

(1, (SELECT item_id FROM items WHERE item_name = 'Mandarin'),
 'in_stock', 98),

(1, (SELECT item_id FROM items WHERE item_name = 'Grapefruit'),
 'in_stock', 63),

(1, (SELECT item_id FROM items WHERE item_name = 'Lemon'),
 'in_stock', 210),

(1, (SELECT item_id FROM items WHERE item_name = 'Lime'),
 'in_stock', 195),

(1, (SELECT item_id FROM items WHERE item_name = 'Strawberries'),
 'in_stock', 88),

(1, (SELECT item_id FROM items WHERE item_name = 'Blueberries'),
 'in_stock', 74),

(1, (SELECT item_id FROM items WHERE item_name = 'Raspberries'),
 'in_stock', 69),

(1, (SELECT item_id FROM items WHERE item_name = 'Blackberries'),
 'in_stock', 52),

(1, (SELECT item_id FROM items WHERE item_name = 'Grapes'),
 'in_stock', 315),

(1, (SELECT item_id FROM items WHERE item_name = 'Watermelon'),
 'in_stock', 34),

(1, (SELECT item_id FROM items WHERE item_name = 'Cantaloupe'),
 'in_stock', 41),

(1, (SELECT item_id FROM items WHERE item_name = 'Honeydew'),
 'in_stock', 27),

(1, (SELECT item_id FROM items WHERE item_name = 'Pineapple'),
 'in_stock', 56),

(1, (SELECT item_id FROM items WHERE item_name = 'Mango'),
 'in_stock', 143),

(1, (SELECT item_id FROM items WHERE item_name = 'Papaya'),
 'in_stock', 48),

(1, (SELECT item_id FROM items WHERE item_name = 'Kiwi'),
 'in_stock', 132),

(1, (SELECT item_id FROM items WHERE item_name = 'Peach'),
 'in_stock', 116),

(1, (SELECT item_id FROM items WHERE item_name = 'Nectarine'),
 'in_stock', 89),

(1, (SELECT item_id FROM items WHERE item_name = 'Plum'),
 'in_stock', 97),

(1, (SELECT item_id FROM items WHERE item_name = 'Cherry'),
 'in_stock', 210),

(1, (SELECT item_id FROM items WHERE item_name = 'Pear'),
 'in_stock', 140),

(1, (SELECT item_id FROM items WHERE item_name = 'Apricot'),
 'in_stock', 66),

(1, (SELECT item_id FROM items WHERE item_name = 'Pomegranate'),
 'in_stock', 53),

(1, (SELECT item_id FROM items WHERE item_name = 'Cranberries'),
 'in_stock', 120),

(1, (SELECT item_id FROM items WHERE item_name = 'Fig'),
 'in_stock', 39),

(1, (SELECT item_id FROM items WHERE item_name = 'Date'),
 'in_stock', 185),

(1, (SELECT item_id FROM items WHERE item_name = 'Guava'),
 'in_stock', 72),

(1, (SELECT item_id FROM items WHERE item_name = 'Passion Fruit'),
 'in_stock', 46),

(1, (SELECT item_id FROM items WHERE item_name = 'Lychee'),
 'in_stock', 84),

(1, (SELECT item_id FROM items WHERE item_name = 'Dragon Fruit'),
 'in_stock', 29),

(1, (SELECT item_id FROM items WHERE item_name = 'Jackfruit'),
 'in_stock', 18),

(1, (SELECT item_id FROM items WHERE item_name = 'Starfruit'),
 'in_stock', 35),

(1, (SELECT item_id FROM items WHERE item_name = 'Persimmon'),
 'in_stock', 57),

(1, (SELECT item_id FROM items WHERE item_name = 'Coconut'),
 'in_stock', 49),

(1, (SELECT item_id FROM items WHERE item_name = 'Plantain'),
 'in_stock', 112),

(1, (SELECT item_id FROM items WHERE item_name = 'Tangerine'),
 'in_stock', 104),

(1, (SELECT item_id FROM items WHERE item_name = 'Clementine'),
 'in_stock', 168),

(1, (SELECT item_id FROM items WHERE item_name = 'Avocado'),
 'in_stock', 123),

(1, (SELECT item_id FROM items WHERE item_name = 'Tomato'),
 'in_stock', 295),

(1, (SELECT item_id FROM items WHERE item_name = 'Cherry Tomato'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Grape Tomato'),
 'in_stock', 101),

(1, (SELECT item_id FROM items WHERE item_name = 'Roma Tomato'),
 'in_stock', 167),

(1, (SELECT item_id FROM items WHERE item_name = 'Beefsteak Tomato'),
 'in_stock', 144),

(1, (SELECT item_id FROM items WHERE item_name = 'Cucumber'),
 'in_stock', 134),

(1, (SELECT item_id FROM items WHERE item_name = 'English Cucumber'),
 'in_stock', 92),

(1, (SELECT item_id FROM items WHERE item_name = 'Zucchini'),
 'in_stock', 184),

(1, (SELECT item_id FROM items WHERE item_name = 'Yellow Squash'),
 'in_stock', 152),

(1, (SELECT item_id FROM items WHERE item_name = 'Eggplant'),
 'in_stock', 87),

(1, (SELECT item_id FROM items WHERE item_name = 'Bell Pepper'),
 'in_stock', 141),

(1, (SELECT item_id FROM items WHERE item_name = 'Red Bell Pepper'),
 'in_stock', 129),

(1, (SELECT item_id FROM items WHERE item_name = 'Green Bell Pepper'),
 'in_stock', 164),

(1, (SELECT item_id FROM items WHERE item_name = 'Jalapeno Pepper'),
 'in_stock', 93),

(1, (SELECT item_id FROM items WHERE item_name = 'Serrano Pepper'),
 'in_stock', 68),

(1, (SELECT item_id FROM items WHERE item_name = 'Habanero Pepper'),
 'in_stock', 41),

(1, (SELECT item_id FROM items WHERE item_name = 'Poblano Pepper'),
 'in_stock', 76),

(1, (SELECT item_id FROM items WHERE item_name = 'Chili Pepper'),
 'in_stock', 58),

(1, (SELECT item_id FROM items WHERE item_name = 'Onion'),
 'in_stock', 420),

(1, (SELECT item_id FROM items WHERE item_name = 'Yellow Onion'),
 'in_stock', 395),

(1, (SELECT item_id FROM items WHERE item_name = 'Red Onion'),
 'in_stock', 276),

(1, (SELECT item_id FROM items WHERE item_name = 'White Onion'),
 'in_stock', 221),

(1, (SELECT item_id FROM items WHERE item_name = 'Green Onion'),
 'in_stock', 134),

(1, (SELECT item_id FROM items WHERE item_name = 'Garlic'),
 'in_stock', 158),

(1, (SELECT item_id FROM items WHERE item_name = 'Shallot'),
 'in_stock', 72),

(1, (SELECT item_id FROM items WHERE item_name = 'Leek'),
 'in_stock', 63),

(1, (SELECT item_id FROM items WHERE item_name = 'Ginger'),
 'in_stock', 94),

(1, (SELECT item_id FROM items WHERE item_name = 'Potato'),
 'in_stock', 510),

(1, (SELECT item_id FROM items WHERE item_name = 'Russet Potato'),
 'in_stock', 462),

(1, (SELECT item_id FROM items WHERE item_name = 'Red Potato'),
 'in_stock', 388),

(1, (SELECT item_id FROM items WHERE item_name = 'Yukon Gold Potato'),
 'in_stock', 347),

(1, (SELECT item_id FROM items WHERE item_name = 'Sweet Potato'),
 'in_stock', 289),

(1, (SELECT item_id FROM items WHERE item_name = 'Carrot'),
 'in_stock', 312),

(1, (SELECT item_id FROM items WHERE item_name = 'Baby Carrots'),
 'in_stock', 144),

(1, (SELECT item_id FROM items WHERE item_name = 'Celery'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Radish'),
 'in_stock', 96),

(1, (SELECT item_id FROM items WHERE item_name = 'Beet'),
 'in_stock', 85),

(1, (SELECT item_id FROM items WHERE item_name = 'Turnip'),
 'in_stock', 74),

(1, (SELECT item_id FROM items WHERE item_name = 'Parsnip'),
 'in_stock', 61),

(1, (SELECT item_id FROM items WHERE item_name = 'Broccoli'),
 'in_stock', 173),

(1, (SELECT item_id FROM items WHERE item_name = 'Cauliflower'),
 'in_stock', 88),

(1, (SELECT item_id FROM items WHERE item_name = 'Brussels Sprouts'),
 'in_stock', 132),

(1, (SELECT item_id FROM items WHERE item_name = 'Cabbage'),
 'in_stock', 198),

(1, (SELECT item_id FROM items WHERE item_name = 'Red Cabbage'),
 'in_stock', 102),

(1, (SELECT item_id FROM items WHERE item_name = 'Bok Choy'),
 'in_stock', 67),

(1, (SELECT item_id FROM items WHERE item_name = 'Kale'),
 'in_stock', 149),

(1, (SELECT item_id FROM items WHERE item_name = 'Spinach'),
 'in_stock', 133),

(1, (SELECT item_id FROM items WHERE item_name = 'Romaine Lettuce'),
 'in_stock', 158),

(1, (SELECT item_id FROM items WHERE item_name = 'Iceberg Lettuce'),
 'in_stock', 141),

(1, (SELECT item_id FROM items WHERE item_name = 'Arugula'),
 'in_stock', 52),

(1, (SELECT item_id FROM items WHERE item_name = 'Swiss Chard'),
 'in_stock', 48),

(1, (SELECT item_id FROM items WHERE item_name = 'Asparagus'),
 'in_stock', 109),

(1, (SELECT item_id FROM items WHERE item_name = 'Green Beans'),
 'in_stock', 178),

(1, (SELECT item_id FROM items WHERE item_name = 'Peas'),
 'in_stock', 96),

(1, (SELECT item_id FROM items WHERE item_name = 'Corn'),
 'in_stock', 204),

(1, (SELECT item_id FROM items WHERE item_name = 'Mushrooms'),
 'in_stock', 165),

(1, (SELECT item_id FROM items WHERE item_name = 'Portobello Mushrooms'),
 'in_stock', 89),

-- Meat and Seafood (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Whole Chicken'),
 'in_stock', 62),

(1, (SELECT item_id FROM items WHERE item_name = 'Chicken Wings'),
 'in_stock', 185),

(1, (SELECT item_id FROM items WHERE item_name = 'Chicken Drumsticks'),
 'in_stock', 142),

(1, (SELECT item_id FROM items WHERE item_name = 'Ground Chicken'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Chicken Tenderloins'),
 'in_stock', 95),

(1, (SELECT item_id FROM items WHERE item_name = 'Ribeye Steak'),
 'in_stock', 210),

(1, (SELECT item_id FROM items WHERE item_name = 'Sirloin Steak'),
 'in_stock', 176),

(1, (SELECT item_id FROM items WHERE item_name = 'T Bone Steak'),
 'low_stock', 18),

(1, (SELECT item_id FROM items WHERE item_name = 'Filet Mignon'),
 'low_stock', 12),

(1, (SELECT item_id FROM items WHERE item_name = 'Beef Chuck Roast'),
 'in_stock', 149),

(1, (SELECT item_id FROM items WHERE item_name = 'Beef Brisket'),
 'in_stock', 133),

(1, (SELECT item_id FROM items WHERE item_name = 'Beef Short Ribs'),
 'in_stock', 104),

(1, (SELECT item_id FROM items WHERE item_name = 'Ground Turkey'),
 'in_stock', 168),

(1, (SELECT item_id FROM items WHERE item_name = 'Turkey Breast'),
 'in_stock', 72),

(1, (SELECT item_id FROM items WHERE item_name = 'Turkey Sausage'),
 'in_stock', 115),

(1, (SELECT item_id FROM items WHERE item_name = 'Pork Tenderloin'),
 'in_stock', 92),

(1, (SELECT item_id FROM items WHERE item_name = 'Pork Ribs'),
 'in_stock', 144),

(1, (SELECT item_id FROM items WHERE item_name = 'Pork Shoulder'),
 'in_stock', 201),

(1, (SELECT item_id FROM items WHERE item_name = 'Pork Belly'),
 'low_stock', 9),

(1, (SELECT item_id FROM items WHERE item_name = 'Ground Pork'),
 'in_stock', 123),

(1, (SELECT item_id FROM items WHERE item_name = 'Italian Sausage'),
 'in_stock', 88),

(1, (SELECT item_id FROM items WHERE item_name = 'Breakfast Sausage'),
 'in_stock', 96),

(1, (SELECT item_id FROM items WHERE item_name = 'Hot Dogs'),
 'in_stock', 134),

(1, (SELECT item_id FROM items WHERE item_name = 'Deli Ham'),
 'in_stock', 78),

(1, (SELECT item_id FROM items WHERE item_name = 'Deli Turkey'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Pepperoni'),
 'in_stock', 54),

(1, (SELECT item_id FROM items WHERE item_name = 'Salami'),
 'in_stock', 61),

(1, (SELECT item_id FROM items WHERE item_name = 'Cod Fillet'),
 'in_stock', 112),

(1, (SELECT item_id FROM items WHERE item_name = 'Halibut'),
 'in_stock', 69),

(1, (SELECT item_id FROM items WHERE item_name = 'Mahi Mahi'),
 'in_stock', 73),

(1, (SELECT item_id FROM items WHERE item_name = 'Catfish'),
 'in_stock', 98),

(1, (SELECT item_id FROM items WHERE item_name = 'Swordfish'),
 'in_stock', 44),

(1, (SELECT item_id FROM items WHERE item_name = 'Trout'),
 'in_stock', 86),

(1, (SELECT item_id FROM items WHERE item_name = 'Sardines'),
 'in_stock', 39),

(1, (SELECT item_id FROM items WHERE item_name = 'Anchovies'),
 'in_stock', 28),

(1, (SELECT item_id FROM items WHERE item_name = 'Lobster Tail'),
 'in_stock', 22),

(1, (SELECT item_id FROM items WHERE item_name = 'Crab Legs'),
 'in_stock', 58),

(1, (SELECT item_id FROM items WHERE item_name = 'Clams'),
 'in_stock', 74),

(1, (SELECT item_id FROM items WHERE item_name = 'Mussels'),
 'in_stock', 66),

(1, (SELECT item_id FROM items WHERE item_name = 'Scallops'),
 'in_stock', 47),

(1, (SELECT item_id FROM items WHERE item_name = 'Lamb Chops'),
 'in_stock', 59),

(1, (SELECT item_id FROM items WHERE item_name = 'Lamb Shank'),
 'in_stock', 34),

(1, (SELECT item_id FROM items WHERE item_name = 'Veal Cutlets'),
 'in_stock', 26),

(1, (SELECT item_id FROM items WHERE item_name = 'Bison Steak'),
 'in_stock', 31),

(1, (SELECT item_id FROM items WHERE item_name = 'Duck Breast'),
 'in_stock', 41),

(1, (SELECT item_id FROM items WHERE item_name = 'Cornish Hen'),
 'in_stock', 38),   

 

-- Dairy (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Whole Milk'),
 'in_stock', 48),

(1, (SELECT item_id FROM items WHERE item_name = '2 Percent Milk'),
 'in_stock', 52),

(1, (SELECT item_id FROM items WHERE item_name = 'Half and Half'),
 'in_stock', 36),

(1, (SELECT item_id FROM items WHERE item_name = 'Butter'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Sour Cream'),
 'in_stock', 64),

(1, (SELECT item_id FROM items WHERE item_name = 'Cream Cheese'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Cheddar Cheese'),
 'in_stock', 142),

(1, (SELECT item_id FROM items WHERE item_name = 'Mozzarella Cheese'),
 'in_stock', 126),
(1, (SELECT item_id FROM items WHERE item_name = 'Parmesan Cheese'),
 'in_stock', 58),
(1, (SELECT item_id FROM items WHERE item_name = 'Greek Yogurt'),
 'in_stock', 97),
(1, (SELECT item_id FROM items WHERE item_name = 'Eggs'),
 'in_stock', 75),   

 

-- Bakery (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Sandwich Bread'),
 'in_stock', 88),
(1, (SELECT item_id FROM items WHERE item_name = 'Whole Wheat Bread'),
 'in_stock', 74),
(1, (SELECT item_id FROM items WHERE item_name = 'Bagels'),
 'in_stock', 132),
(1, (SELECT item_id FROM items WHERE item_name = 'English Muffins'),
 'in_stock', 69),
(1, (SELECT item_id FROM items WHERE item_name = 'Tortillas'),
 'in_stock', 101),
(1, (SELECT item_id FROM items WHERE item_name = 'Pita Bread'),
 'in_stock', 57),
(1, (SELECT item_id FROM items WHERE item_name = 'Hamburger Buns'),
 'in_stock', 93),
(1, (SELECT item_id FROM items WHERE item_name = 'Croissants'),
 'low_stock', 12),
(1, (SELECT item_id FROM items WHERE item_name = 'Muffins'),
 'in_stock', 72),
(1, (SELECT item_id FROM items WHERE item_name = 'Cinnamon Rolls'),
 'low_stock', 8),   

 

-- Rice & Grains (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'White Rice'),
 'in_stock', 420),
(1, (SELECT item_id FROM items WHERE item_name = 'Brown Rice'),
 'in_stock', 310),
(1, (SELECT item_id FROM items WHERE item_name = 'Jasmine Rice'),
 'in_stock', 275),
(1, (SELECT item_id FROM items WHERE item_name = 'Basmati Rice'),
 'in_stock', 238),
(1, (SELECT item_id FROM items WHERE item_name = 'Wild Rice'),
 'in_stock', 118),
(1, (SELECT item_id FROM items WHERE item_name = 'Quinoa'),
 'in_stock', 164),
(1, (SELECT item_id FROM items WHERE item_name = 'Couscous'),
 'in_stock', 142),
(1, (SELECT item_id FROM items WHERE item_name = 'Bulgur'),
 'in_stock', 97),
(1, (SELECT item_id FROM items WHERE item_name = 'Farro'),
 'in_stock', 83),
(1, (SELECT item_id FROM items WHERE item_name = 'Barley'),
 'in_stock', 126),   


 

-- Pasta (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Spaghetti'),
 'in_stock', 186),

(1, (SELECT item_id FROM items WHERE item_name = 'Penne'),
 'in_stock', 149),

(1, (SELECT item_id FROM items WHERE item_name = 'Fusilli'),
 'in_stock', 138),

(1, (SELECT item_id FROM items WHERE item_name = 'Linguine'),
 'in_stock', 121),

(1, (SELECT item_id FROM items WHERE item_name = 'Macaroni'),
 'in_stock', 202),

(1, (SELECT item_id FROM items WHERE item_name = 'Lasagna Noodles'),
 'in_stock', 96),

(1, (SELECT item_id FROM items WHERE item_name = 'Angel Hair Pasta'),
 'in_stock', 88),

(1, (SELECT item_id FROM items WHERE item_name = 'Whole Wheat Pasta'),
 'in_stock', 73),

(1, (SELECT item_id FROM items WHERE item_name = 'Gluten Free Pasta'),
 'in_stock', 59),   


 

-- Flour & Baking (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'All Purpose Flour'),
 'in_stock', 360),
(1, (SELECT item_id FROM items WHERE item_name = 'Bread Flour'),
 'in_stock', 211),
(1, (SELECT item_id FROM items WHERE item_name = 'Cake Flour'),
 'in_stock', 142),
(1, (SELECT item_id FROM items WHERE item_name = 'Self Rising Flour'),
 'in_stock', 94),
(1, (SELECT item_id FROM items WHERE item_name = 'Cornmeal'),
 'in_stock', 108),
(1, (SELECT item_id FROM items WHERE item_name = 'Baking Powder'),
 'in_stock', 67),
(1, (SELECT item_id FROM items WHERE item_name = 'Baking Soda'),
 'in_stock', 72),
(1, (SELECT item_id FROM items WHERE item_name = 'Active Dry Yeast'),
 'in_stock', 54),
(1, (SELECT item_id FROM items WHERE item_name = 'Instant Yeast'),
 'in_stock', 49),   

  

-- Sugar & Sweeteners (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'White Sugar'),
 'in_stock', 395),
(1, (SELECT item_id FROM items WHERE item_name = 'Brown Sugar'),
 'in_stock', 184),
(1, (SELECT item_id FROM items WHERE item_name = 'Powdered Sugar'),
 'in_stock', 121),
(1, (SELECT item_id FROM items WHERE item_name = 'Honey'),
 'in_stock', 93),

(1, (SELECT item_id FROM items WHERE item_name = 'Maple Syrup'),
 'in_stock', 64),

(1, (SELECT item_id FROM items WHERE item_name = 'Agave Nectar'),
 'in_stock', 52),

(1, (SELECT item_id FROM items WHERE item_name = 'Molasses'),
 'in_stock', 38),   


 

-- Oils & Vinegars (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Olive Oil'),
 'in_stock', 92),

(1, (SELECT item_id FROM items WHERE item_name = 'Vegetable Oil'),
 'in_stock', 104),

(1, (SELECT item_id FROM items WHERE item_name = 'Canola Oil'),
 'in_stock', 78),

(1, (SELECT item_id FROM items WHERE item_name = 'Sesame Oil'),
 'in_stock', 46),

(1, (SELECT item_id FROM items WHERE item_name = 'Coconut Oil'),
 'in_stock', 63),

(1, (SELECT item_id FROM items WHERE item_name = 'Apple Cider Vinegar'),
 'in_stock', 57),

(1, (SELECT item_id FROM items WHERE item_name = 'White Vinegar'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Balsamic Vinegar'),
 'in_stock', 41),

(1, (SELECT item_id FROM items WHERE item_name = 'Red Wine Vinegar'),
 'in_stock', 38),   

 

-- Canned Vegetables (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Corn'),
 'in_stock', 132),

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Peas'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Green Beans'),
 'in_stock', 109),

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Carrots'),
 'in_stock', 97),

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Spinach'),
 'in_stock', 64),   

 

-- Canned Beans (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Black Beans'),
 'in_stock', 176),

(1, (SELECT item_id FROM items WHERE item_name = 'Pinto Beans'),
 'in_stock', 149),

(1, (SELECT item_id FROM items WHERE item_name = 'Kidney Beans'),
 'in_stock', 121),

(1, (SELECT item_id FROM items WHERE item_name = 'Garbanzo Beans'),
 'in_stock', 133),

(1, (SELECT item_id FROM items WHERE item_name = 'Lentils'),
 'in_stock', 102),   

 

-- Canned Tomatoes (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Canned Tomatoes'),
 'in_stock', 142),

(1, (SELECT item_id FROM items WHERE item_name = 'Crushed Tomatoes'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Tomato Sauce'),
 'in_stock', 159),

(1, (SELECT item_id FROM items WHERE item_name = 'Tomato Paste'),
 'in_stock', 88),   

 

-- Soups & Broths (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Chicken Broth'),
 'in_stock', 110),

(1, (SELECT item_id FROM items WHERE item_name = 'Beef Broth'),
 'in_stock', 96),

(1, (SELECT item_id FROM items WHERE item_name = 'Vegetable Broth'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Chicken Noodle Soup'),
 'in_stock', 74),

(1, (SELECT item_id FROM items WHERE item_name = 'Tomato Soup'),
 'in_stock', 69),  

 

-- Sauces & Condiments (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Soy Sauce'),
 'in_stock', 61),

(1, (SELECT item_id FROM items WHERE item_name = 'Hot Sauce'),
 'in_stock', 72),

(1, (SELECT item_id FROM items WHERE item_name = 'Ketchup'),
 'in_stock', 134),

(1, (SELECT item_id FROM items WHERE item_name = 'Mustard'),
 'in_stock', 98),

(1, (SELECT item_id FROM items WHERE item_name = 'Mayonnaise'),
 'in_stock', 84),

(1, (SELECT item_id FROM items WHERE item_name = 'Barbecue Sauce'),
 'in_stock', 76),

(1, (SELECT item_id FROM items WHERE item_name = 'Teriyaki Sauce'),
 'in_stock', 53),

(1, (SELECT item_id FROM items WHERE item_name = 'Worcestershire Sauce'),
 'in_stock', 47),

(1, (SELECT item_id FROM items WHERE item_name = 'Peanut Butter'),
 'in_stock', 112),

(1, (SELECT item_id FROM items WHERE item_name = 'Almond Butter'),
 'in_stock', 58),   


 

-- Breakfast & Dry Snacks (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Oats'),
 'in_stock', 142),

(1, (SELECT item_id FROM items WHERE item_name = 'Granola'),
 'in_stock', 97),

(1, (SELECT item_id FROM items WHERE item_name = 'Cornflakes'),
 'in_stock', 121),

(1, (SELECT item_id FROM items WHERE item_name = 'Pancake Mix'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Waffle Mix'),
 'in_stock', 72),

(1, (SELECT item_id FROM items WHERE item_name = 'Popcorn Kernels'),
 'in_stock', 88),

(1, (SELECT item_id FROM items WHERE item_name = 'Nutty Trail Mix'),
 'in_stock', 64),

(1, (SELECT item_id FROM items WHERE item_name = 'Raisins'),
 'in_stock', 55),

(1, (SELECT item_id FROM items WHERE item_name = 'Dried Cranberries'),
 'in_stock', 48),

(1, (SELECT item_id FROM items WHERE item_name = 'Chia Seeds'),
 'in_stock', 39),

(1, (SELECT item_id FROM items WHERE item_name = 'Flax Seeds'),
 'in_stock', 44),   

 

-- Spices & Herbs (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Salt'),
 'in_stock', 184),
(1, (SELECT item_id FROM items WHERE item_name = 'Black Pepper'),
 'in_stock', 136),
(1, (SELECT item_id FROM items WHERE item_name = 'Garlic Powder'),
 'in_stock', 92),
(1, (SELECT item_id FROM items WHERE item_name = 'Onion Powder'),
 'in_stock', 88),
(1, (SELECT item_id FROM items WHERE item_name = 'Paprika'),
 'in_stock', 73),
(1, (SELECT item_id FROM items WHERE item_name = 'Cumin'),
 'in_stock', 64),
(1, (SELECT item_id FROM items WHERE item_name = 'Chili Powder'),
 'in_stock', 79),
(1, (SELECT item_id FROM items WHERE item_name = 'Oregano'),
 'in_stock', 58),
(1, (SELECT item_id FROM items WHERE item_name = 'Basil'),
 'in_stock', 62),
(1, (SELECT item_id FROM items WHERE item_name = 'Cinnamon'),
 'in_stock', 54),   

  

-- Beverages (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Bottled Water'),
 'in_stock', 320),

(1, (SELECT item_id FROM items WHERE item_name = 'Sparkling Water'),
 'in_stock', 198),

(1, (SELECT item_id FROM items WHERE item_name = 'Orange Juice'),
 'in_stock', 94),

(1, (SELECT item_id FROM items WHERE item_name = 'Apple Juice'),
 'in_stock', 83),

(1, (SELECT item_id FROM items WHERE item_name = 'Cola Soda'),
 'in_stock', 276),

(1, (SELECT item_id FROM items WHERE item_name = 'Lemon Lime Soda'),
 'in_stock', 221),

(1, (SELECT item_id FROM items WHERE item_name = 'Coffee'),
 'in_stock', 112),

(1, (SELECT item_id FROM items WHERE item_name = 'Green Tea'),
 'in_stock', 86),

(1, (SELECT item_id FROM items WHERE item_name = 'Black Tea'),
 'in_stock', 79),

(1, (SELECT item_id FROM items WHERE item_name = 'Sports Drink'),
 'in_stock', 142),   

  

-- Snacks (Kroger)

(1, (SELECT item_id FROM items WHERE item_name = 'Potato Chips'),
 'in_stock', 167),

(1, (SELECT item_id FROM items WHERE item_name = 'Tortilla Chips'),
 'in_stock', 143),

(1, (SELECT item_id FROM items WHERE item_name = 'Pretzels'),
 'in_stock', 129),

(1, (SELECT item_id FROM items WHERE item_name = 'Popcorn'),
 'in_stock', 118),

(1, (SELECT item_id FROM items WHERE item_name = 'Crackers'),
 'in_stock', 136),

(1, (SELECT item_id FROM items WHERE item_name = 'Trail Mix'),
 'in_stock', 74),

(1, (SELECT item_id FROM items WHERE item_name = 'Granola Bars'),
 'in_stock', 97),

(1, (SELECT item_id FROM items WHERE item_name = 'Chocolate Bar'),
 'in_stock', 188),
(1, (SELECT item_id FROM items WHERE item_name = 'Cookies'),
 'in_stock', 121),

(1, (SELECT item_id FROM items WHERE item_name = 'Gummy Candy'),
 'in_stock', 109),   













-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

 
(2, (SELECT item_id FROM items WHERE item_name = 'Apple'),
 'in_stock', 94),
(2, (SELECT item_id FROM items WHERE item_name = 'Banana'),
 'low_stock', 21),
(2, (SELECT item_id FROM items WHERE item_name = 'Orange'),
 'in_stock', 158),
(2, (SELECT item_id FROM items WHERE item_name = 'Mandarin'),
 'in_stock', 76),
(2, (SELECT item_id FROM items WHERE item_name = 'Grapefruit'),
 'low_stock', 12),
(2, (SELECT item_id FROM items WHERE item_name = 'Lemon'),
 'in_stock', 145),
(2, (SELECT item_id FROM items WHERE item_name = 'Lime'),
 'in_stock', 111),
(2, (SELECT item_id FROM items WHERE item_name = 'Strawberries'),
 'in_stock', 52),
(2, (SELECT item_id FROM items WHERE item_name = 'Blueberries'),
 'low_stock', 8),
(2, (SELECT item_id FROM items WHERE item_name = 'Raspberries'),
 'out_of_stock', 0),
(2, (SELECT item_id FROM items WHERE item_name = 'Blackberries'),
 'in_stock', 37),
(2, (SELECT item_id FROM items WHERE item_name = 'Grapes'),
 'in_stock', 210),
(2, (SELECT item_id FROM items WHERE item_name = 'Watermelon'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Cantaloupe'),
 'in_stock', 33),
(2, (SELECT item_id FROM items WHERE item_name = 'Honeydew'),
 'in_stock', 18),
(2, (SELECT item_id FROM items WHERE item_name = 'Pineapple'),
 'in_stock', 47),
(2, (SELECT item_id FROM items WHERE item_name = 'Mango'),
 'in_stock', 89),
(2, (SELECT item_id FROM items WHERE item_name = 'Papaya'),
 'low_stock', 6),
(2, (SELECT item_id FROM items WHERE item_name = 'Kiwi'),
 'in_stock', 72),
(2, (SELECT item_id FROM items WHERE item_name = 'Peach'),
 'in_stock', 101),
(2, (SELECT item_id FROM items WHERE item_name = 'Nectarine'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Plum'),
 'in_stock', 83),
(2, (SELECT item_id FROM items WHERE item_name = 'Cherry'),
 'in_stock', 142),
(2, (SELECT item_id FROM items WHERE item_name = 'Pear'),
 'in_stock', 95),
(2, (SELECT item_id FROM items WHERE item_name = 'Apricot'),
 'low_stock', 11),
 (2, (SELECT item_id FROM items WHERE item_name = 'Pomegranate'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Cranberries'),
 'in_stock', 74),
(2, (SELECT item_id FROM items WHERE item_name = 'Fig'),
 'in_stock', 22),
(2, (SELECT item_id FROM items WHERE item_name = 'Date'),
 'in_stock', 96),
(2, (SELECT item_id FROM items WHERE item_name = 'Guava'),
 'low_stock', 6),
(2, (SELECT item_id FROM items WHERE item_name = 'Passion Fruit'),
 'in_stock', 31),
(2, (SELECT item_id FROM items WHERE item_name = 'Lychee'),
 'in_stock', 45),
(2, (SELECT item_id FROM items WHERE item_name = 'Dragon Fruit'),
 'out_of_stock', 0),
(2, (SELECT item_id FROM items WHERE item_name = 'Jackfruit'),
 'low_stock', 3),
(2, (SELECT item_id FROM items WHERE item_name = 'Starfruit'),
 'in_stock', 19),
(2, (SELECT item_id FROM items WHERE item_name = 'Persimmon'),
 'in_stock', 28),
(2, (SELECT item_id FROM items WHERE item_name = 'Coconut'),
 'in_stock', 34),
(2, (SELECT item_id FROM items WHERE item_name = 'Plantain'),
 'in_stock', 67),
(2, (SELECT item_id FROM items WHERE item_name = 'Tangerine'),
 'in_stock', 58),
(2, (SELECT item_id FROM items WHERE item_name = 'Clementine'),
 'in_stock', 104),
(2, (SELECT item_id FROM items WHERE item_name = 'Avocado'),
 'low_stock', 11),
(2, (SELECT item_id FROM items WHERE item_name = 'Tomato'),
 'in_stock', 162),
(2, (SELECT item_id FROM items WHERE item_name = 'Cherry Tomato'),
 'in_stock', 66),
(2, (SELECT item_id FROM items WHERE item_name = 'Grape Tomato'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Roma Tomato'),
 'in_stock', 109),
(2, (SELECT item_id FROM items WHERE item_name = 'Beefsteak Tomato'),
 'in_stock', 86),
(2, (SELECT item_id FROM items WHERE item_name = 'Cucumber'),
 'in_stock', 77),
(2, (SELECT item_id FROM items WHERE item_name = 'English Cucumber'),
 'low_stock', 8),
(2, (SELECT item_id FROM items WHERE item_name = 'Zucchini'),
 'in_stock', 94),
(2, (SELECT item_id FROM items WHERE item_name = 'Yellow Squash'),
 'in_stock', 81),
 (2, (SELECT item_id FROM items WHERE item_name = 'Eggplant'),
 'in_stock', 52),
(2, (SELECT item_id FROM items WHERE item_name = 'Bell Pepper'),
 'in_stock', 88),
(2, (SELECT item_id FROM items WHERE item_name = 'Red Bell Pepper'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Green Bell Pepper'),
 'in_stock', 103),
(2, (SELECT item_id FROM items WHERE item_name = 'Jalapeno Pepper'),
 'in_stock', 37),
(2, (SELECT item_id FROM items WHERE item_name = 'Serrano Pepper'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Habanero Pepper'),
 'out_of_stock', 0),
(2, (SELECT item_id FROM items WHERE item_name = 'Poblano Pepper'),
 'in_stock', 41),
(2, (SELECT item_id FROM items WHERE item_name = 'Chili Pepper'),
 'in_stock', 28),
(2, (SELECT item_id FROM items WHERE item_name = 'Onion'),
 'in_stock', 260),
(2, (SELECT item_id FROM items WHERE item_name = 'Yellow Onion'),
 'in_stock', 214),
(2, (SELECT item_id FROM items WHERE item_name = 'Red Onion'),
 'low_stock', 33),
(2, (SELECT item_id FROM items WHERE item_name = 'White Onion'),
 'in_stock', 140),
(2, (SELECT item_id FROM items WHERE item_name = 'Green Onion'),
 'in_stock', 74),
(2, (SELECT item_id FROM items WHERE item_name = 'Garlic'),
 'low_stock', 12),
(2, (SELECT item_id FROM items WHERE item_name = 'Shallot'),
 'in_stock', 39),
(2, (SELECT item_id FROM items WHERE item_name = 'Leek'),
 'in_stock', 36),
(2, (SELECT item_id FROM items WHERE item_name = 'Ginger'),
 'in_stock', 58),
(2, (SELECT item_id FROM items WHERE item_name = 'Potato'),
 'in_stock', 305),
(2, (SELECT item_id FROM items WHERE item_name = 'Russet Potato'),
 'in_stock', 271),
(2, (SELECT item_id FROM items WHERE item_name = 'Red Potato'),
 'in_stock', 188),
(2, (SELECT item_id FROM items WHERE item_name = 'Yukon Gold Potato'),
 'low_stock', 41),
(2, (SELECT item_id FROM items WHERE item_name = 'Sweet Potato'),
 'in_stock', 149),
(2, (SELECT item_id FROM items WHERE item_name = 'Carrot'),
 'in_stock', 204),
(2, (SELECT item_id FROM items WHERE item_name = 'Baby Carrots'),
 'in_stock', 68),
 (2, (SELECT item_id FROM items WHERE item_name = 'Celery'),
 'in_stock', 74),
(2, (SELECT item_id FROM items WHERE item_name = 'Radish'),
 'low_stock', 18),
(2, (SELECT item_id FROM items WHERE item_name = 'Beet'),
 'in_stock', 46),
(2, (SELECT item_id FROM items WHERE item_name = 'Turnip'),
 'in_stock', 39),
(2, (SELECT item_id FROM items WHERE item_name = 'Parsnip'),
 'low_stock', 11),
(2, (SELECT item_id FROM items WHERE item_name = 'Broccoli'),
 'in_stock', 96),
(2, (SELECT item_id FROM items WHERE item_name = 'Cauliflower'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Brussels Sprouts'),
 'in_stock', 62),
(2, (SELECT item_id FROM items WHERE item_name = 'Cabbage'),
 'in_stock', 101),
(2, (SELECT item_id FROM items WHERE item_name = 'Red Cabbage'),
 'in_stock', 58),
(2, (SELECT item_id FROM items WHERE item_name = 'Bok Choy'),
 'low_stock', 7),
(2, (SELECT item_id FROM items WHERE item_name = 'Kale'),
 'in_stock', 88),
(2, (SELECT item_id FROM items WHERE item_name = 'Spinach'),
 'in_stock', 77),
(2, (SELECT item_id FROM items WHERE item_name = 'Romaine Lettuce'),
 'in_stock', 94),
(2, (SELECT item_id FROM items WHERE item_name = 'Iceberg Lettuce'),
 'low_stock', 16),
(2, (SELECT item_id FROM items WHERE item_name = 'Arugula'),
 'in_stock', 28),
(2, (SELECT item_id FROM items WHERE item_name = 'Swiss Chard'),
 'out_of_stock', 0),
(2, (SELECT item_id FROM items WHERE item_name = 'Asparagus'),
 'in_stock', 52),
(2, (SELECT item_id FROM items WHERE item_name = 'Green Beans'),
 'in_stock', 94),
(2, (SELECT item_id FROM items WHERE item_name = 'Peas'),
 'low_stock', 12),
(2, (SELECT item_id FROM items WHERE item_name = 'Corn'),
 'in_stock', 121),
(2, (SELECT item_id FROM items WHERE item_name = 'Mushrooms'),
 'in_stock', 84),
(2, (SELECT item_id FROM items WHERE item_name = 'Portobello Mushrooms'),
 'in_stock', 46),   

  

-- Meat and Seafood (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Whole Chicken'),
 'in_stock', 38),
(2, (SELECT item_id FROM items WHERE item_name = 'Chicken Wings'),
 'in_stock', 122),
(2, (SELECT item_id FROM items WHERE item_name = 'Chicken Drumsticks'),
 'in_stock', 97),
(2, (SELECT item_id FROM items WHERE item_name = 'Ground Chicken'),
 'low_stock', 22),
(2, (SELECT item_id FROM items WHERE item_name = 'Chicken Tenderloins'),
 'in_stock', 64),
(2, (SELECT item_id FROM items WHERE item_name = 'Ribeye Steak'),
 'low_stock', 19),
(2, (SELECT item_id FROM items WHERE item_name = 'Sirloin Steak'),
 'in_stock', 103),
(2, (SELECT item_id FROM items WHERE item_name = 'T Bone Steak'),
 'low_stock', 11),
(2, (SELECT item_id FROM items WHERE item_name = 'Filet Mignon'),
 'low_stock', 6),
(2, (SELECT item_id FROM items WHERE item_name = 'Beef Chuck Roast'),
 'in_stock', 88),
(2, (SELECT item_id FROM items WHERE item_name = 'Beef Brisket'),
 'in_stock', 75),
(2, (SELECT item_id FROM items WHERE item_name = 'Beef Short Ribs'),
 'in_stock', 54),
(2, (SELECT item_id FROM items WHERE item_name = 'Ground Turkey'),
 'in_stock', 91),
(2, (SELECT item_id FROM items WHERE item_name = 'Turkey Breast'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Turkey Sausage'),
 'in_stock', 63),
(2, (SELECT item_id FROM items WHERE item_name = 'Pork Tenderloin'),
 'in_stock', 59),
(2, (SELECT item_id FROM items WHERE item_name = 'Pork Ribs'),
 'in_stock', 84),
(2, (SELECT item_id FROM items WHERE item_name = 'Pork Shoulder'),
 'in_stock', 121),
(2, (SELECT item_id FROM items WHERE item_name = 'Pork Belly'),
 'low_stock', 8),
(2, (SELECT item_id FROM items WHERE item_name = 'Ground Pork'),
 'in_stock', 72),
(2, (SELECT item_id FROM items WHERE item_name = 'Italian Sausage'),
 'in_stock', 58),
(2, (SELECT item_id FROM items WHERE item_name = 'Breakfast Sausage'),
 'in_stock', 66),
(2, (SELECT item_id FROM items WHERE item_name = 'Hot Dogs'),
 'in_stock', 92),
(2, (SELECT item_id FROM items WHERE item_name = 'Deli Ham'),
 'in_stock', 47),
(2, (SELECT item_id FROM items WHERE item_name = 'Deli Turkey'),
 'in_stock', 52),
(2, (SELECT item_id FROM items WHERE item_name = 'Pepperoni'),
 'in_stock', 31),
 (2, (SELECT item_id FROM items WHERE item_name = 'Salami'),
 'in_stock', 42),
(2, (SELECT item_id FROM items WHERE item_name = 'Cod Fillet'),
 'in_stock', 74),
(2, (SELECT item_id FROM items WHERE item_name = 'Halibut'),
 'low_stock', 18),
(2, (SELECT item_id FROM items WHERE item_name = 'Mahi Mahi'),
 'in_stock', 39),
(2, (SELECT item_id FROM items WHERE item_name = 'Catfish'),
 'in_stock', 61),
(2, (SELECT item_id FROM items WHERE item_name = 'Swordfish'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Trout'),
 'in_stock', 53),
(2, (SELECT item_id FROM items WHERE item_name = 'Sardines'),
 'in_stock', 22),
(2, (SELECT item_id FROM items WHERE item_name = 'Anchovies'),
 'low_stock', 6),
(2, (SELECT item_id FROM items WHERE item_name = 'Lobster Tail'),
 'low_stock', 5),
(2, (SELECT item_id FROM items WHERE item_name = 'Crab Legs'),
 'in_stock', 31),
(2, (SELECT item_id FROM items WHERE item_name = 'Clams'),
 'in_stock', 48),
(2, (SELECT item_id FROM items WHERE item_name = 'Mussels'),
 'in_stock', 44),
(2, (SELECT item_id FROM items WHERE item_name = 'Scallops'),
 'low_stock', 12),
(2, (SELECT item_id FROM items WHERE item_name = 'Lamb Chops'),
 'in_stock', 37),
(2, (SELECT item_id FROM items WHERE item_name = 'Lamb Shank'),
 'low_stock', 7),
(2, (SELECT item_id FROM items WHERE item_name = 'Veal Cutlets'),
 'low_stock', 8),
(2, (SELECT item_id FROM items WHERE item_name = 'Bison Steak'),
 'low_stock', 10),
(2, (SELECT item_id FROM items WHERE item_name = 'Duck Breast'),
 'in_stock', 19),
(2, (SELECT item_id FROM items WHERE item_name = 'Cornish Hen'),
 'in_stock', 24),   

  

-- Dairy (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Whole Milk'),
 'in_stock', 32),

(2, (SELECT item_id FROM items WHERE item_name = '2 Percent Milk'),
 'in_stock', 38),

(2, (SELECT item_id FROM items WHERE item_name = 'Half and Half'),
 'low_stock', 9),

(2, (SELECT item_id FROM items WHERE item_name = 'Butter'),
 'in_stock', 74),
(2, (SELECT item_id FROM items WHERE item_name = 'Sour Cream'),
 'in_stock', 41),
(2, (SELECT item_id FROM items WHERE item_name = 'Cream Cheese'),
 'in_stock', 56),
(2, (SELECT item_id FROM items WHERE item_name = 'Cheddar Cheese'),
 'in_stock', 84),
(2, (SELECT item_id FROM items WHERE item_name = 'Mozzarella Cheese'),
 'in_stock', 73),
(2, (SELECT item_id FROM items WHERE item_name = 'Parmesan Cheese'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Greek Yogurt'),
 'in_stock', 62),
(2, (SELECT item_id FROM items WHERE item_name = 'Eggs'),
 'low_stock', 11),   


 

-- Bakery (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Sandwich Bread'),
 'in_stock', 61),
(2, (SELECT item_id FROM items WHERE item_name = 'Whole Wheat Bread'),
 'in_stock', 48),
(2, (SELECT item_id FROM items WHERE item_name = 'Bagels'),
 'in_stock', 79),
(2, (SELECT item_id FROM items WHERE item_name = 'English Muffins'),
 'low_stock', 13),
(2, (SELECT item_id FROM items WHERE item_name = 'Tortillas'),
 'in_stock', 66),
(2, (SELECT item_id FROM items WHERE item_name = 'Pita Bread'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Hamburger Buns'),
 'in_stock', 55),
(2, (SELECT item_id FROM items WHERE item_name = 'Croissants'),
 'out_of_stock', 0),
(2, (SELECT item_id FROM items WHERE item_name = 'Muffins'),
 'in_stock', 43),
(2, (SELECT item_id FROM items WHERE item_name = 'Cinnamon Rolls'),
 'low_stock', 6),   

 

-- Rice & Grains (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'White Rice'),
 'in_stock', 248),
(2, (SELECT item_id FROM items WHERE item_name = 'Brown Rice'),
 'in_stock', 186),
(2, (SELECT item_id FROM items WHERE item_name = 'Jasmine Rice'),
 'in_stock', 159),
(2, (SELECT item_id FROM items WHERE item_name = 'Basmati Rice'),
 'in_stock', 141),
(2, (SELECT item_id FROM items WHERE item_name = 'Wild Rice'),
 'low_stock', 27),
(2, (SELECT item_id FROM items WHERE item_name = 'Quinoa'),
 'in_stock', 73),
(2, (SELECT item_id FROM items WHERE item_name = 'Couscous'),
 'in_stock', 64),
(2, (SELECT item_id FROM items WHERE item_name = 'Bulgur'),
 'low_stock', 19),
(2, (SELECT item_id FROM items WHERE item_name = 'Farro'),
 'low_stock', 14),
(2, (SELECT item_id FROM items WHERE item_name = 'Barley'),
 'in_stock', 58),   

 

-- Pasta (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Spaghetti'),
 'in_stock', 112),

(2, (SELECT item_id FROM items WHERE item_name = 'Penne'),
 'in_stock', 94),

(2, (SELECT item_id FROM items WHERE item_name = 'Fusilli'),
 'in_stock', 88),

(2, (SELECT item_id FROM items WHERE item_name = 'Linguine'),
 'in_stock', 71),

(2, (SELECT item_id FROM items WHERE item_name = 'Macaroni'),
 'in_stock', 126),

(2, (SELECT item_id FROM items WHERE item_name = 'Lasagna Noodles'),
 'in_stock', 49),

(2, (SELECT item_id FROM items WHERE item_name = 'Angel Hair Pasta'),
 'in_stock', 44),

(2, (SELECT item_id FROM items WHERE item_name = 'Whole Wheat Pasta'),
 'low_stock', 17),

(2, (SELECT item_id FROM items WHERE item_name = 'Gluten Free Pasta'),
 'low_stock', 11),   

 

-- Flour & Baking (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'All Purpose Flour'),
 'in_stock', 204),
(2, (SELECT item_id FROM items WHERE item_name = 'Bread Flour'),
 'in_stock', 122),
(2, (SELECT item_id FROM items WHERE item_name = 'Cake Flour'),
 'in_stock', 68),
(2, (SELECT item_id FROM items WHERE item_name = 'Self Rising Flour'),
 'low_stock', 23),
(2, (SELECT item_id FROM items WHERE item_name = 'Cornmeal'),
 'in_stock', 61),
(2, (SELECT item_id FROM items WHERE item_name = 'Baking Powder'),
 'in_stock', 36),
(2, (SELECT item_id FROM items WHERE item_name = 'Baking Soda'),
 'in_stock', 42),
(2, (SELECT item_id FROM items WHERE item_name = 'Active Dry Yeast'),
 'low_stock', 12),
(2, (SELECT item_id FROM items WHERE item_name = 'Instant Yeast'),
 'low_stock', 9),   

 

-- Sugar & Sweeteners (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'White Sugar'),
 'in_stock', 241),
(2, (SELECT item_id FROM items WHERE item_name = 'Brown Sugar'),
 'in_stock', 98),
(2, (SELECT item_id FROM items WHERE item_name = 'Powdered Sugar'),
 'in_stock', 54),
(2, (SELECT item_id FROM items WHERE item_name = 'Honey'),
 'in_stock', 49),

(2, (SELECT item_id FROM items WHERE item_name = 'Maple Syrup'),
 'low_stock', 18),

(2, (SELECT item_id FROM items WHERE item_name = 'Agave Nectar'),
 'low_stock', 14),

(2, (SELECT item_id FROM items WHERE item_name = 'Molasses'),
 'low_stock', 6),   

 

-- Oils & Vinegars (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Olive Oil'),
 'in_stock', 61),

(2, (SELECT item_id FROM items WHERE item_name = 'Vegetable Oil'),
 'in_stock', 72),

(2, (SELECT item_id FROM items WHERE item_name = 'Canola Oil'),
 'in_stock', 54),

(2, (SELECT item_id FROM items WHERE item_name = 'Sesame Oil'),
 'low_stock', 12),

(2, (SELECT item_id FROM items WHERE item_name = 'Coconut Oil'),
 'in_stock', 41),

(2, (SELECT item_id FROM items WHERE item_name = 'Apple Cider Vinegar'),
 'in_stock', 36),

(2, (SELECT item_id FROM items WHERE item_name = 'White Vinegar'),
 'in_stock', 57),

(2, (SELECT item_id FROM items WHERE item_name = 'Balsamic Vinegar'),
 'low_stock', 9),

(2, (SELECT item_id FROM items WHERE item_name = 'Red Wine Vinegar'),
 'low_stock', 8),


-- Canned Vegetables (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Corn'),
 'in_stock', 84),

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Peas'),
 'in_stock', 71),

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Green Beans'),
 'in_stock', 63),

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Carrots'),
 'in_stock', 54),

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Spinach'),
 'low_stock', 11),


-- Canned Beans (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Black Beans'),
 'in_stock', 102),

(2, (SELECT item_id FROM items WHERE item_name = 'Pinto Beans'),
 'in_stock', 91),

(2, (SELECT item_id FROM items WHERE item_name = 'Kidney Beans'),
 'in_stock', 73),

(2, (SELECT item_id FROM items WHERE item_name = 'Garbanzo Beans'),
 'in_stock', 81),

(2, (SELECT item_id FROM items WHERE item_name = 'Lentils'),
 'in_stock', 54),


-- Canned Tomatoes (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Canned Tomatoes'),
 'in_stock', 96),

(2, (SELECT item_id FROM items WHERE item_name = 'Crushed Tomatoes'),
 'in_stock', 74),

(2, (SELECT item_id FROM items WHERE item_name = 'Tomato Sauce'),
 'in_stock', 102),

(2, (SELECT item_id FROM items WHERE item_name = 'Tomato Paste'),
 'in_stock', 47),


-- Soups & Broths (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Chicken Broth'),
 'in_stock', 68),

(2, (SELECT item_id FROM items WHERE item_name = 'Beef Broth'),
 'in_stock', 59),

(2, (SELECT item_id FROM items WHERE item_name = 'Vegetable Broth'),
 'in_stock', 52),

(2, (SELECT item_id FROM items WHERE item_name = 'Chicken Noodle Soup'),
 'in_stock', 41),

(2, (SELECT item_id FROM items WHERE item_name = 'Tomato Soup'),
 'in_stock', 37),


-- Sauces & Condiments (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Soy Sauce'),
 'in_stock', 36),

(2, (SELECT item_id FROM items WHERE item_name = 'Hot Sauce'),
 'in_stock', 44),

(2, (SELECT item_id FROM items WHERE item_name = 'Ketchup'),
 'in_stock', 79),

(2, (SELECT item_id FROM items WHERE item_name = 'Mustard'),
 'in_stock', 63),

(2, (SELECT item_id FROM items WHERE item_name = 'Mayonnaise'),
 'in_stock', 52),

(2, (SELECT item_id FROM items WHERE item_name = 'Barbecue Sauce'),
 'in_stock', 47),

(2, (SELECT item_id FROM items WHERE item_name = 'Teriyaki Sauce'),
 'low_stock', 12),

(2, (SELECT item_id FROM items WHERE item_name = 'Worcestershire Sauce'),
 'low_stock', 9),

(2, (SELECT item_id FROM items WHERE item_name = 'Peanut Butter'),
 'in_stock', 71),

(2, (SELECT item_id FROM items WHERE item_name = 'Almond Butter'),
 'low_stock', 14),


-- Breakfast & Dry Snacks (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Oats'),
 'in_stock', 84),

(2, (SELECT item_id FROM items WHERE item_name = 'Granola'),
 'in_stock', 61),

(2, (SELECT item_id FROM items WHERE item_name = 'Cornflakes'),
 'in_stock', 73),

(2, (SELECT item_id FROM items WHERE item_name = 'Pancake Mix'),
 'in_stock', 49),

(2, (SELECT item_id FROM items WHERE item_name = 'Waffle Mix'),
 'low_stock', 13),

(2, (SELECT item_id FROM items WHERE item_name = 'Popcorn Kernels'),
 'in_stock', 52),

(2, (SELECT item_id FROM items WHERE item_name = 'Nutty Trail Mix'),
 'in_stock', 38),

(2, (SELECT item_id FROM items WHERE item_name = 'Raisins'),
 'in_stock', 31),

(2, (SELECT item_id FROM items WHERE item_name = 'Dried Cranberries'),
 'in_stock', 27),

(2, (SELECT item_id FROM items WHERE item_name = 'Chia Seeds'),
 'low_stock', 8),

(2, (SELECT item_id FROM items WHERE item_name = 'Flax Seeds'),
 'low_stock', 9),   

  

-- Spices & Herbs (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Salt'),
 'in_stock', 121),
(2, (SELECT item_id FROM items WHERE item_name = 'Black Pepper'),
 'in_stock', 94),
(2, (SELECT item_id FROM items WHERE item_name = 'Garlic Powder'),
 'in_stock', 63),
(2, (SELECT item_id FROM items WHERE item_name = 'Onion Powder'),
 'in_stock', 58),
(2, (SELECT item_id FROM items WHERE item_name = 'Paprika'),
 'in_stock', 44),
(2, (SELECT item_id FROM items WHERE item_name = 'Cumin'),
 'low_stock', 11),
(2, (SELECT item_id FROM items WHERE item_name = 'Chili Powder'),
 'in_stock', 49),
(2, (SELECT item_id FROM items WHERE item_name = 'Oregano'),
 'low_stock', 9),
(2, (SELECT item_id FROM items WHERE item_name = 'Basil'),
 'in_stock', 37),
(2, (SELECT item_id FROM items WHERE item_name = 'Cinnamon'),
 'low_stock', 8),   

  

-- Beverages (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Bottled Water'),
 'in_stock', 211),

(2, (SELECT item_id FROM items WHERE item_name = 'Sparkling Water'),
 'in_stock', 142),

(2, (SELECT item_id FROM items WHERE item_name = 'Orange Juice'),
 'in_stock', 63),

(2, (SELECT item_id FROM items WHERE item_name = 'Apple Juice'),
 'in_stock', 52),

(2, (SELECT item_id FROM items WHERE item_name = 'Cola Soda'),
 'in_stock', 186),

(2, (SELECT item_id FROM items WHERE item_name = 'Lemon Lime Soda'),
 'in_stock', 158),

(2, (SELECT item_id FROM items WHERE item_name = 'Coffee'),
 'in_stock', 71),

(2, (SELECT item_id FROM items WHERE item_name = 'Green Tea'),
 'in_stock', 52),

(2, (SELECT item_id FROM items WHERE item_name = 'Black Tea'),
 'in_stock', 47),

(2, (SELECT item_id FROM items WHERE item_name = 'Sports Drink'),
 'in_stock', 96),   

  

-- Snacks (Target)

(2, (SELECT item_id FROM items WHERE item_name = 'Potato Chips'),
 'in_stock', 112),

(2, (SELECT item_id FROM items WHERE item_name = 'Tortilla Chips'),
 'in_stock', 94),

(2, (SELECT item_id FROM items WHERE item_name = 'Pretzels'),
 'in_stock', 83),

(2, (SELECT item_id FROM items WHERE item_name = 'Popcorn'),
 'in_stock', 76),

(2, (SELECT item_id FROM items WHERE item_name = 'Crackers'),
 'in_stock', 88),

(2, (SELECT item_id FROM items WHERE item_name = 'Trail Mix'),
 'in_stock', 49),

(2, (SELECT item_id FROM items WHERE item_name = 'Granola Bars'),
 'in_stock', 61),

(2, (SELECT item_id FROM items WHERE item_name = 'Chocolate Bar'),
 'in_stock', 132),
(2, (SELECT item_id FROM items WHERE item_name = 'Cookies'),
 'in_stock', 83),

(2, (SELECT item_id FROM items WHERE item_name = 'Gummy Candy'),
 'in_stock', 74);  