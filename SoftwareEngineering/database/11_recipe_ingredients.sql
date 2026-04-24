/* cookmate Classic Pancakes */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity, notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Classic Pancakes'),
 (SELECT item_id FROM items WHERE item_name='All Purpose Flour'), 1.500,
 'All Purpose Flour');

/* cookmate Garlic Butter Chicken */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Garlic Butter Chicken'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.500,
 NULL);

/* cookmate Vegetable Stir Fry */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Vegetable Stir Fry'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* cookmate Spaghetti Hot */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Spaghetti Marinara'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.250,
 NULL);

/* cookmate Chocolate Mug Cake */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chocolate Mug Cake'),
 (SELECT item_id FROM items WHERE item_name='Vegetable Oil'), 2.000,
 NULL);

/* foodlvrx Avocado Toast Deluxe */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Avocado Toast Deluxe'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.250,
 NULL);

/* foodlvrx Beef Tacos */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Beef Tacos'),
 (SELECT item_id FROM items WHERE item_name='Sour Cream'), 0.250,
 'Optional');

/* foodlvrx Greek Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Greek Salad'),
 (SELECT item_id FROM items WHERE item_name='Lemon'), 1.000,
 'Juice');

/* foodlvrx Oven Baked Salmon */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Oven Baked Salmon'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.250,
 NULL);

/* foodlvrx Banana Smoothie */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Banana Smoothie'),
 (SELECT item_id FROM items WHERE item_name='Honey'), 1.000,
 'Optional');

/* chefella Creamy Tomato Soup */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Creamy Tomato Soup'),
 (SELECT item_id FROM items WHERE item_name='Sour Cream'), 0.250,
 'Splash'),
((SELECT recipe_id FROM recipes WHERE title='Creamy Tomato Soup'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* chefella Grilled Cheese Melt */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Grilled Cheese Melt'),
 (SELECT item_id FROM items WHERE item_name='Sandwich Bread'), 4.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Grilled Cheese Melt'),
 (SELECT item_id FROM items WHERE item_name='Cream Cheese'), 4.000,
 'Cheddar slices'),
((SELECT recipe_id FROM recipes WHERE title='Grilled Cheese Melt'),
 (SELECT item_id FROM items WHERE item_name='Butter'), 2.000,
 'For grilling');

/* chefella Chicken Caesar Wrap */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Caesar Wrap'),
 (SELECT item_id FROM items WHERE item_name='Parmesan Cheese'), 0.250,
 'Grated');

/* chefella Lemon Herb Pasta */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Lemon Herb Pasta'),
 (SELECT item_id FROM items WHERE item_name='Parmesan Cheese'), 0.500,
 'Grated');

/* chefella Berry Yogurt Parfait */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Berry Yogurt Parfait'),
 (SELECT item_id FROM items WHERE item_name='Honey'), 1.000,
 'Optional');

/* tastebud Egg Fried Rice */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Egg Fried Rice'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 'Or sesame oil');

/* tastebud Honey Garlic Shrimp */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Honey Garlic Shrimp'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* tastebud Cucumber Dill Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Cucumber Dill Salad'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);

/* tastebud Turkey Burger */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Turkey Burger'),
 (SELECT item_id FROM items WHERE item_name='Hamburger Buns'), 2.000,
 NULL);

/* tastebud Peanut Butter Oat Bites */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Peanut Butter Oat Bites'),
 (SELECT item_id FROM items WHERE item_name='Chocolate Bar'), 0.500,
 'Optional');

/* spicegal Chana Masala */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chana Masala'),
 (SELECT item_id FROM items WHERE item_name='Ginger'), 1.000,
 'Grated'),
((SELECT recipe_id FROM recipes WHERE title='Chana Masala'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 2.000,
 NULL);

/* spicegal Jeera Rice */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Jeera Rice'),
 (SELECT item_id FROM items WHERE item_name='Basmati Rice'), 2.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Jeera Rice'),
 (SELECT item_id FROM items WHERE item_name='Peas'), 2.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Jeera Rice'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 1.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Jeera Rice'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 'Or ghee');

/* spicegal Spicy Roasted potato */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Spicy Roasted Potatoes'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 1.000,
 NULL);

/* spicegal Masala Omelet */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Masala Omelet'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* spicegal Mango Lassi */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Mango Lassi'),
 (SELECT item_id FROM items WHERE item_name='White Sugar'), 1.000,
 'Adjust to taste');

/* mealprep Sheet Pan Chicken and Veggies */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Sheet Pan Chicken and Veggies'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 1.000,
 NULL);

/* mealprep Quinoa Bowl */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Quinoa Bowl'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);

/* mealprep Turkey Chili */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Turkey Chili'),
 (SELECT item_id FROM items WHERE item_name='Ground Turkey'), 1.000,
 'As needed');

/* mealprep Overnight Oats */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Overnight Oats'),
 (SELECT item_id FROM items WHERE item_name='Blueberries'), 0.500,
 'Topping');

/* mealprep Roasted Sweet potato */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Roasted Sweet Potatoes'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.500,
 NULL);

/* homechef Chicken Noodle Soup */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Noodle Soup'),
 (SELECT item_id FROM items WHERE item_name='Lasagna Noodles'), 8.000,
 NULL);

/* homechef Roasted Broccoli */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Roasted Broccoli'),
 (SELECT item_id FROM items WHERE item_name='Lemon'), 0.500,
 'Juice');

/* homechef Baked Ziti */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Baked Ziti'),
 (SELECT item_id FROM items WHERE item_name='Parmesan Cheese'), 0.250,
 'Optional');

/* homechef Simple Side Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Simple Side Salad'),
 (SELECT item_id FROM items WHERE item_name='Balsamic Vinegar'), 1.000,
 NULL);

/* homechef Lemon Garlic Green black beans */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Lemon Garlic Green Beans'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);





/* yumsterx Cheesy Quesadilla */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Cheesy Quesadilla'),
 (SELECT item_id FROM items WHERE item_name='Tortillas'), 2.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Cheesy Quesadilla'),
 (SELECT item_id FROM items WHERE item_name='Cheddar Cheese'), 1.000,
 'Shredded');

/* yumsterx Chicken Burrito Bowl */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Burrito Bowl'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 0.500,
 NULL);

/* yumsterx Kale Fresca */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Salsa Fresca'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);

/* yumsterx Corn and Black Bean Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Corn and Black Bean Salad'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 0.250,
 'Chopped');

/* yumsterx Cinnamon Sugar Toast */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Cinnamon Sugar Toast'),
 (SELECT item_id FROM items WHERE item_name='Cinnamon'), 1.000,
 NULL);





/* bakerjoy Banana Bread */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Banana Bread'),
 (SELECT item_id FROM items WHERE item_name='Cinnamon'), 1.000,
 NULL);

/* bakerjoy Chocolate Chip Cookies */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chocolate Chip Cookies'),
 (SELECT item_id FROM items WHERE item_name='Chocolate Bar'), 2.000,
 NULL);

/* bakerjoy Blueberry Muffins */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Blueberry Muffins'),
 (SELECT item_id FROM items WHERE item_name='Blueberries'), 1.500,
 NULL);

/* bakerjoy Vanilla Buttercream Frosting */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Vanilla Buttercream Frosting'),
 (SELECT item_id FROM items WHERE item_name='Whole Milk'), 2.000,
 'As needed');

/* bakerjoy French Toast */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='French Toast'),
 (SELECT item_id FROM items WHERE item_name='Butter'), 1.000,
 'For pan');


/* grillpro Grilled Steak */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Grilled Steak'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 1.000,
 NULL);

/* grillpro BBQ Chicken Thighs */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='BBQ Chicken Thighs'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.500,
 NULL);

/* grillpro Grilled Corn */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Grilled Corn'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);

/* grillpro Burger Patties */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Burger Patties'),
 (SELECT item_id FROM items WHERE item_name='Ribeye Steak'), 1.500,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Burger Patties'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 1.000,
 NULL),
((SELECT recipe_id FROM recipes WHERE title='Burger Patties'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 1.000,
 NULL);

/* grillpro Smoky Grilled Veggie Skewers */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Smoky Grilled Veggie Skewers'),
 (SELECT item_id FROM items WHERE item_name='Spinach'), 2.000,
 'Smoked paprika');



/* flavorfy Lemon Pepper Wings */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Lemon Pepper Wings'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 1.000,
 NULL);

/* flavorfy Creamy Alfredo Pasta */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Creamy Alfredo Pasta'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.500,
 NULL);

/* flavorfy Caprese Sandwich */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Caprese Sandwich'),
 (SELECT item_id FROM items WHERE item_name='Balsamic Vinegar'), 1.000,
 'Optional');

/* flavorfy Roasted Garlic Mashed potato */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Roasted Garlic Mashed Potatoes'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 1.000,
 NULL);

/* flavorfy Fruit Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Fruit Salad'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 6.000,
 'Assorted'),
((SELECT recipe_id FROM recipes WHERE title='Fruit Salad'),
 (SELECT item_id FROM items WHERE item_name='Lemon'), 0.500,
 'Juice');





/* herbally Pesto Pasta */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Pesto Pasta'),
 (SELECT item_id FROM items WHERE item_name='Parmesan Cheese'), 0.500,
 'Grated');

/* herbally Herb Roasted Chicken */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Herb Roasted Chicken'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 2.000,
 'Fresh chopped');

/* herbally Lemon Herb Couscous */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Lemon Herb Couscous'),
 (SELECT item_id FROM items WHERE item_name='Basil'), 0.250,
 'Chopped');

/* herbally Garlic Herb Butter */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Garlic Herb Butter'),
 (SELECT item_id FROM items WHERE item_name='Butter'), 1.000,
 'Softened'),
((SELECT recipe_id FROM recipes WHERE title='Garlic Herb Butter'),
 (SELECT item_id FROM items WHERE item_name='Garlic'), 3.000,
 'Minced'),
((SELECT recipe_id FROM recipes WHERE title='Garlic Herb Butter'),
 (SELECT item_id FROM items WHERE item_name='Basil'), 0.250,
 'Chopped');

/* herbally Herby Omelet */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Herby Omelet'),
 (SELECT item_id FROM items WHERE item_name='Salt'), 0.250,
 NULL);





/* kitchenn Chicken Parmesan */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Parmesan'),
 (SELECT item_id FROM items WHERE item_name='Parmesan Cheese'), 0.250,
 'Grated');

/* kitchenn Garden Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Garden Salad'),
 (SELECT item_id FROM items WHERE item_name='Balsamic Vinegar'), 1.000,
 NULL);

/* kitchenn Baked Potato */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Baked Potato'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 2.000,
 'Optional');

/* kitchenn Mac and Cheese */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Mac and Cheese'),
 (SELECT item_id FROM items WHERE item_name='Cream Cheese'), 2.000,
 'Shredded');

/* kitchenn Apple Cinnamon Oatmeal */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Apple Cinnamon Oatmeal'),
 (SELECT item_id FROM items WHERE item_name='Honey'), 1.000,
 'Optional');





/* dishdash Chicken Fried Rice */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Fried Rice'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* dishdash Quick Ramen Upgrade */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Quick Ramen Upgrade'),
 (SELECT item_id FROM items WHERE item_name='Sesame Oil'), 1.000,
 NULL);

/* dishdash Tuna Salad Sandwich */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Tuna Salad Sandwich'),
 (SELECT item_id FROM items WHERE item_name='Iceberg Lettuce'), 1.000,
 'Optional');

/* dishdash Pan Seared Pork Chops */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Pan Seared Pork Chops'),
 (SELECT item_id FROM items WHERE item_name='Olive Oil'), 1.000,
 NULL);

/* dishdash Balsamic Roasted Veggies */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Balsamic Roasted Veggies'),
 (SELECT item_id FROM items WHERE item_name='Balsamic Vinegar'), 2.000,
 'Drizzle');





/* snackify Guacamole */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Guacamole'),
 (SELECT item_id FROM items WHERE item_name='Tomato'), 1.000,
 'Optional diced');

/* snackify Popcorn Seasoning Mix */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Popcorn Seasoning Mix'),
 (SELECT item_id FROM items WHERE item_name='Kale'), 1.000,
 NULL);

/* snackify Loaded Nachos */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Loaded Nachos'),
 (SELECT item_id FROM items WHERE item_name='Sour Cream'), 0.333,
 'Optional');

/* snackify Trail Mix */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Trail Mix'),
 (SELECT item_id FROM items WHERE item_name='Spinach'), 0.500,
 'Optional');

/* snackify Peanut Butter Banana Toast */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Peanut Butter Banana Toast'),
 (SELECT item_id FROM items WHERE item_name='Honey'), 1.000,
 'Optional');





/* freshpal Chicken Salad */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Chicken Salad'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.250,
 NULL);

/* freshpal Veggie Wrap */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Veggie Wrap'),
 (SELECT item_id FROM items WHERE item_name='Spinach'), 2.000,
 NULL);

/* freshpal Lemon Vinaigrette */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Lemon Vinaigrette'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.250,
 NULL);

/* freshpal Baked Chicken Tenders */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Baked Chicken Tenders'),
 (SELECT item_id FROM items WHERE item_name='Black Pepper'), 0.500,
 NULL);

/* freshpal Fruit and Yogurt Bowl */
INSERT INTO recipe_ingredients (recipe_id, item_id, quantity,  notes)
VALUES
((SELECT recipe_id FROM recipes WHERE title='Fruit and Yogurt Bowl'),
 (SELECT item_id FROM items WHERE item_name='Honey'), 1.000,
 'Optional');