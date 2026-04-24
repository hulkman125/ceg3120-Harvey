INSERT INTO recipes
(owner_user_id, title, description, visibility, servings, prep_minutes, cook_minutes, instructions, image_url)
VALUES
((SELECT user_id FROM users WHERE username='cookmate')
, 'Classic Pancakes', 'Fluffy homemade breakfast pancakes.', 'public'::recipe_visibility, 4, 10, 15,
'Mix dry ingredients in a bowl. Whisk in milk, egg, and melted butter until smooth. Heat a lightly greased pan over medium heat, pour batter, and cook until bubbles form. Flip and cook until golden brown.',
'https://example.com/iremages/classic_pancakes.jpg'),

((SELECT user_id FROM users WHERE username='cookmate'),
 'Garlic Butter Chicken', 'Pan seared chicken with a garlic butter sauce.', 'public'::recipe_visibility, 3, 15, 25,
'Season chicken with salt and pepper. Melt butter in a skillet and sauté garlic until fragrant. Cook chicken 6 to 7 minutes per side, spooning garlic butter over it as it cooks. Cook to 165 degrees Fahrenheit, rest briefly, and serve.',
'https://example.com/images/garlic_butter_chicken.jpg'),

((SELECT user_id FROM users WHERE username='cookmate'),
 'Vegetable Stir Fry', 'Quick stir fry with mixed vegetables and soy garlic glaze.', 'private'::recipe_visibility, 2, 10, 12,
'Chop vegetables into bite sized pieces. Heat oil in a wok over medium high heat and add vegetables starting with the hardest ones. Stir fry until tender crisp, add soy sauce and garlic, and cook briefly to coat. Serve immediately.',
'https://example.com/images/vegetable_stir_fry.jpg'),

((SELECT user_id FROM users WHERE username='cookmate'),
 'Spaghetti Marinara', 'Classic pasta with a simple marinara sauce.', 'public'::recipe_visibility, 4, 15, 20,
'Cook spaghetti in salted boiling water until al dente. Sauté garlic in olive oil, then add crushed tomatoes, salt, pepper, and dried herbs. Simmer about 15 minutes, toss with drained pasta, and serve.',
'https://example.com/images/spaghetti_marinara.jpg'),

((SELECT user_id FROM users WHERE username='cookmate'),
 'Chocolate Mug Cake', 'Microwave chocolate cake for one.', 'private'::recipe_visibility, 1, 5, 2,
'In a microwave safe mug, mix flour, cocoa powder, sugar, and baking powder. Stir in milk and oil until smooth. Microwave 60 to 90 seconds, let cool slightly, and enjoy.',
'https://example.com/images/chocolate_mug_cake.jpg'),

((SELECT user_id FROM users WHERE username='foodlvrx'),
 'Avocado Toast Deluxe', 'Toasted bread with smashed avocado and egg.', 'public'::recipe_visibility, 2, 5, 5,
'Toast bread until crisp. Mash avocado with salt, pepper, and a squeeze of lemon or lime. Spread on toast and top with a fried or poached egg plus extras like chili flakes or tomato slices.',
'https://example.com/images/avocado_toast_deluxe.jpg'),

((SELECT user_id FROM users WHERE username='foodlvrx'),
 'Beef Tacos', 'Seasoned beef tacos with fresh toppings.', 'public'::recipe_visibility, 4, 15, 15,
'Brown ground beef in a skillet, drain excess fat, and stir in taco seasoning with a splash of water. Simmer until thickened. Warm tortillas, fill with beef, and add toppings like lettuce, cheese, salsa, and sour cream.',
'https://example.com/images/beef_tacos.jpg'),

((SELECT user_id FROM users WHERE username='foodlvrx'),
 'Greek Salad', 'Crisp salad with feta, olives, and lemon dressing.', 'private'::recipe_visibility, 3, 10, 0,
'Chop cucumber, tomatoes, and red onion and toss with olives and crumbled feta. Whisk olive oil, lemon juice, oregano, salt, and pepper, then pour over salad and toss gently.',
'https://example.com/images/greek_salad.jpg'),

((SELECT user_id FROM users WHERE username='foodlvrx'),
 'Oven Baked Salmon', 'Lemon garlic baked salmon fillets.', 'public'::recipe_visibility, 2, 10, 20,
'Preheat oven to 400 degrees Fahrenheit and line a sheet pan with foil. Season salmon with salt, pepper, garlic, and lemon juice, drizzle with olive oil, and add lemon slices if desired. Bake 12 to 15 minutes until flaky, rest 2 minutes, and serve.',
'https://example.com/images/oven_baked_salmon.jpg'),

((SELECT user_id FROM users WHERE username='foodlvrx'),
 'Banana Smoothie', 'Creamy banana smoothie with milk and honey.', 'private'::recipe_visibility, 1, 5, 0,
'Blend banana with milk and yogurt until smooth. Sweeten with honey or sugar if desired and add ice for a thicker smoothie. Adjust with more milk, then pour and serve.',
'https://example.com/images/banana_smoothie.jpg'),

((SELECT user_id FROM users WHERE username='chefella'),
 'Creamy Tomato Soup', 'Smooth tomato soup with a touch of cream.', 'public'::recipe_visibility, 4, 10, 25,
'Sauté chopped onion in olive oil until soft, then add garlic briefly. Add crushed tomatoes and broth and simmer 15 to 20 minutes. Blend until smooth, stir in a splash of cream, season, and serve warm.',
'https://example.com/images/creamy_tomato_soup.jpg'),

((SELECT user_id FROM users WHERE username='chefella'),
 'Grilled Cheese Melt', 'Golden grilled cheese with extra melty center.', 'private'::recipe_visibility, 2, 5, 8,
'Butter one side of each bread slice. Cook one slice butter side down, add cheese, top with the second slice butter side up, and cook until golden. Flip and cook until cheese is melted.',
'https://example.com/images/grilled_cheese_melt.jpg'),

((SELECT user_id FROM users WHERE username='chefella'),
 'Chicken Caesar Wrap', 'Caesar style chicken wrap with crisp lettuce.', 'public'::recipe_visibility, 2, 12, 10,
'Cook and slice chicken. Toss romaine with Caesar dressing and parmesan. Add lettuce mixture and chicken to a tortilla, roll tightly, slice, and serve.',
'https://example.com/images/chicken_caesar_wrap.jpg'),

((SELECT user_id FROM users WHERE username='chefella'),
 'Lemon Herb Pasta', 'Bright lemony pasta with herbs and parmesan.', 'public'::recipe_visibility, 3, 10, 15,
'Cook pasta until al dente. Sauté garlic in olive oil briefly, add pasta, lemon zest, lemon juice, and chopped herbs, and toss to combine. Finish with parmesan and serve.',
'https://example.com/images/lemon_herb_pasta.jpg'),

((SELECT user_id FROM users WHERE username='chefella'),
 'Berry Yogurt Parfait', 'Layered yogurt with berries and granola.', 'private'::recipe_visibility, 1, 7, 0,
'Layer yogurt in a glass, add berries and granola, and repeat until full. Drizzle with honey and serve immediately.',
'https://example.com/images/berry_yogurt_parfait.jpg'),

((SELECT user_id FROM users WHERE username='tastebud'), 
'Egg Fried Rice', 'Quick fried rice with egg and veggies.', 'public'::recipe_visibility, 3, 10, 12,
'Heat oil in a wok, scramble eggs, and set aside. Stir fry cooked rice, add vegetables and soy sauce, then return eggs and toss until hot. Serve right away.',
'https://example.com/images/egg_fried_rice.jpg'),

((SELECT user_id FROM users WHERE username='tastebud'),
 'Honey Garlic Shrimp', 'Sweet savory shrimp with honey garlic sauce.', 'public'::recipe_visibility, 3, 10, 10,
'Season shrimp lightly. Sauté garlic in oil, cook shrimp 1 to 2 minutes per side, then add honey and soy sauce and cook until slightly thickened. Garnish with green onions and serve.',
'https://example.com/images/honey_garlic_shrimp.jpg'),

((SELECT user_id FROM users WHERE username='tastebud'), 
'Cucumber Dill Salad', 'Refreshing cucumber salad with dill dressing.', 'private'::recipe_visibility, 4, 10, 0,
'Slice cucumbers thin. Whisk yogurt or sour cream with lemon juice and dill, toss with cucumbers, season, chill 15 minutes, and serve cold.',
'https://example.com/images/cucumber_dill_salad.jpg'),

((SELECT user_id FROM users WHERE username='tastebud'), 
'Turkey Burger', 'Juicy turkey burger with simple seasoning.', 'public'::recipe_visibility, 2, 15, 12,
'Mix ground turkey with salt, pepper, and minced onion and form patties. Cook on a lightly oiled skillet or grill about 5 to 6 minutes per side until done. Serve on buns with toppings.',
'https://example.com/images/turkey_burger.jpg'),

((SELECT user_id FROM users WHERE username='tastebud'),
 'Peanut Butter Oat Bites', 'No bake oat bites with peanut butter.', 'private'::recipe_visibility, 6, 12, 0,
'Mix oats, peanut butter, honey, and chocolate chips until combined. Roll into bite sized balls and chill at least 20 minutes before serving.',
'https://example.com/images/peanut_butter_oat_bites.jpg'),

((SELECT user_id FROM users WHERE username='spicegal'), 
'Chana Masala', 'Spiced chickpeas simmered in tomato gravy.', 'public'::recipe_visibility, 4, 10, 25,
'Sauté onion until golden, then add garlic, ginger, and spices. Add crushed tomatoes and simmer, then stir in chickpeas and cook until thickened. Garnish with cilantro and serve with rice or naan.',
'https://example.com/images/chana_masala.jpg'),

((SELECT user_id FROM users WHERE username='spicegal'),
 'Jeera Rice', 'Fragrant cumin rice.', 'private'::recipe_visibility, 4, 5, 18,
'Rinse basmati rice. Sizzle cumin seeds in oil or ghee, add rice and stir, then add water and salt. Bring to a boil, cover, simmer until tender, then fluff and serve.',
'https://example.com/images/jeera_rice.jpg'),

((SELECT user_id FROM users WHERE username='spicegal'),
 'Spicy Roasted Potatoes', 'Crispy potatoes with chili and paprika.', 'public'::recipe_visibility, 4, 10, 30,
'Preheat oven to 425 degrees Fahrenheit. Toss potato chunks with oil and spices, spread on a sheet pan, and roast 25 to 30 minutes turning halfway. Serve hot and crispy.',
'https://example.com/images/spicy_roasted_potatoes.jpg'),

((SELECT user_id FROM users WHERE username='spicegal'),
 'Masala Omelet', 'Egg omelet with onion, chili, and spices.', 'public'::recipe_visibility, 1, 5, 6,
'Beat eggs with salt and chopped chili. Sauté onions and tomatoes briefly, pour eggs over, cook until mostly set, flip carefully, and cook until done. Serve hot.',
'https://example.com/images/masala_omelet.jpg'),

((SELECT user_id FROM users WHERE username='spicegal'),
 'Mango Lassi', 'Sweet yogurt mango drink.', 'private'::recipe_visibility, 2, 5, 0,
'Blend mango pulp with yogurt, milk, and sugar until smooth. Taste and adjust sweetness, then pour and serve chilled.',
'https://example.com/images/mango_lassi.jpg'),

((SELECT user_id FROM users WHERE username='mealprep'),
 'Sheet Pan Chicken and Veggies', 'One pan chicken with roasted vegetables.', 'public'::recipe_visibility, 4, 15, 30,
'Preheat oven to 425 degrees Fahrenheit and line a sheet pan. Chop vegetables, season chicken and veggies with olive oil, salt, pepper, and herbs, then bake 25 to 30 minutes until chicken is cooked through. Serve or portion for meal prep.',
'https://example.com/images/sheet_pan_chicken_veggies.jpg'),

((SELECT user_id FROM users WHERE username='mealprep'), 
'Quinoa Bowl', 'Quinoa bowl with veggies and simple dressing.', 'public'::recipe_visibility, 3, 12, 15,
'Cook quinoa according to package directions. Chop fresh vegetables, whisk olive oil with lemon juice, salt, and pepper, then assemble quinoa with veggies and protein. Drizzle dressing and toss before serving.',
'https://example.com/images/quinoa_bowl.jpg'),

((SELECT user_id FROM users WHERE username='mealprep'), 
'Turkey Chili', 'Hearty chili great for batch cooking.', 'private'::recipe_visibility, 6, 15, 40,
'Sauté onion, brown ground turkey, then bloom spices. Add crushed tomatoes, beans, and broth and simmer 30 to 40 minutes until thick. Adjust seasoning and serve.',
'https://example.com/images/turkey_chili.jpg'),

((SELECT user_id FROM users WHERE username='mealprep'), 
'Overnight Oats', 'Make ahead oats with fruit and nuts.', 'private'::recipe_visibility, 2, 8, 0,
'Stir oats with milk and yogurt, add sweetener and a pinch of salt, then cover and refrigerate at least 4 hours or overnight. Top with fruit and nuts before eating.',
'https://example.com/images/overnight_oats.jpg'),

((SELECT user_id FROM users WHERE username='mealprep'),
 'Roasted Sweet Potatoes', 'Simple roasted sweet potatoes for prep.', 'public'::recipe_visibility, 4, 10, 25,
'Preheat oven to 400 degrees Fahrenheit. Peel and cube sweet potatoes, toss with olive oil, salt, and pepper, then roast 25 to 30 minutes until tender and lightly browned. Serve or store for meal prep.',
'https://example.com/images/roasted_sweet_potatoes.jpg'),

((SELECT user_id FROM users WHERE username='homechef'), 
'Chicken Noodle Soup', 'Comforting soup with chicken and noodles.', 'public'::recipe_visibility, 6, 15, 35,
'In a large pot sauté onion, carrot, and celery in olive oil until softened. Add chicken broth and bring to a simmer. Stir in diced cooked chicken and egg noodles and cook until noodles are tender. Season with salt, pepper, and parsley before serving.',
'https://example.com/images/chicken_noodle_soup.jpg'),

((SELECT user_id FROM users WHERE username='homechef'), 
'Roasted Broccoli', 'Crispy roasted broccoli with lemon.', 'private'::recipe_visibility, 4, 5, 18,
'Toss broccoli florets with olive oil, salt, and pepper. Spread on a baking sheet and roast at 425 degrees Fahrenheit for 15 to 18 minutes until slightly charred. Finish with fresh lemon juice before serving.',
'https://example.com/images/roasted_broccoli.jpg'),

((SELECT user_id FROM users WHERE username='homechef'),
'Baked Ziti', 'Cheesy baked pasta with marinara.', 'public'::recipe_visibility, 6, 15, 30,
'Cook ziti until al dente and drain. Mix with marinara sauce and ricotta, then transfer to a baking dish. Top with mozzarella and bake at 375 degrees Fahrenheit for 25 to 30 minutes until bubbly and golden.',
'https://example.com/images/baked_ziti.jpg'),

((SELECT user_id FROM users WHERE username='homechef'),
'Simple Side Salad', 'Quick mixed greens with vinaigrette.', 'private'::recipe_visibility, 2, 8, 0,
'Toss mixed greens with sliced cucumber and tomatoes. Whisk olive oil, vinegar, salt, and pepper and drizzle over the salad. Toss lightly and serve immediately.',
'https://example.com/images/simple_side_salad.jpg'),

((SELECT user_id FROM users WHERE username='homechef'),
'Lemon Garlic Green Beans', 'Green beans sautéed with lemon and garlic.', 'public'::recipe_visibility, 4, 8, 10,
'Sauté trimmed green beans in olive oil for a few minutes. Add minced garlic and cook briefly. Finish with fresh lemon juice, salt, and pepper before serving.',
'https://example.com/images/lemon_garlic_green_beans.jpg'),

((SELECT user_id FROM users WHERE username='yumsterx'),
'Cheesy Quesadilla', 'Crispy tortilla filled with melted cheese.', 'public'::recipe_visibility, 2, 5, 6,
'Place shredded cheese on one half of a tortilla and fold over. Cook in a skillet over medium heat until golden on both sides and cheese is melted. Slice and serve warm.',
'https://example.com/images/cheesy_quesadilla.jpg'),

((SELECT user_id FROM users WHERE username='yumsterx'),
'Chicken Burrito Bowl', 'Rice bowl with chicken, beans, and salsa.', 'public'::recipe_visibility, 3, 12, 15,
'Layer cooked rice in a bowl. Top with seasoned cooked chicken, black beans, corn, and salsa. Add avocado or cheese if desired and serve.',
'https://example.com/images/chicken_burrito_bowl.jpg'),

((SELECT user_id FROM users WHERE username='yumsterx'),
'Salsa Fresca', 'Fresh chopped tomato salsa.', 'private'::recipe_visibility, 4, 10, 0,
'Combine diced tomatoes, onion, cilantro, jalapeno, and lime juice in a bowl. Season with salt and mix gently. Chill briefly before serving.',
'https://example.com/images/salsa_fresca.jpg'),

((SELECT user_id FROM users WHERE username='yumsterx'), 
'Corn and Black Bean Salad', 'Simple salad with lime and cilantro.', 'private'::recipe_visibility, 4, 12, 0,
'Mix cooked corn, black beans, diced bell pepper, and red onion. Toss with lime juice, olive oil, cilantro, salt, and pepper. Chill before serving.',
'https://example.com/images/corn_black_bean_salad.jpg'),

((SELECT user_id FROM users WHERE username='yumsterx'),
'Cinnamon Sugar Toast', 'Quick sweet toast with cinnamon sugar.', 'public'::recipe_visibility, 1, 3, 5,
'Toast bread lightly. Spread with butter and sprinkle generously with cinnamon sugar. Return to toaster oven briefly until sugar melts slightly and serve warm.',
'https://example.com/images/cinnamon_sugar_toast.jpg'),

((SELECT user_id FROM users WHERE username='bakerjoy'),
'Banana Bread', 'Moist banana bread with warm spice.', 'public'::recipe_visibility, 10, 15, 55,
'Mash ripe bananas and mix with sugar, eggs, melted butter, and vanilla. Stir in flour, baking soda, and cinnamon. Pour into a loaf pan and bake at 350 degrees Fahrenheit for 50 to 55 minutes until set.',
'https://example.com/images/banana_bread.jpg'),

((SELECT user_id FROM users WHERE username='bakerjoy'),
'Chocolate Chip Cookies', 'Classic cookies with chocolate chips.', 'public'::recipe_visibility, 24, 15, 12,
'Cream butter and sugars, then beat in eggs and vanilla. Stir in flour, baking soda, and chocolate chips. Drop spoonfuls on a baking sheet and bake at 350 degrees Fahrenheit for 10 to 12 minutes.',
'https://example.com/images/choc_chip_cookies.jpg'),

((SELECT user_id FROM users WHERE username='bakerjoy'),
'Blueberry Muffins', 'Soft muffins packed with blueberries.', 'private'::recipe_visibility, 12, 15, 20,
'Mix dry ingredients in one bowl and wet ingredients in another. Combine gently and fold in blueberries. Fill muffin cups and bake at 375 degrees Fahrenheit for 18 to 20 minutes.',
'https://example.com/images/blueberry_muffins.jpg'),

((SELECT user_id FROM users WHERE username='bakerjoy'), 
'Vanilla Buttercream Frosting', 'Smooth frosting for cakes and cupcakes.', 'private'::recipe_visibility, 12, 10, 0,
'Beat softened butter until creamy. Gradually add powdered sugar and vanilla. Add a splash of milk and continue beating until light and fluffy.',
'https://example.com/images/vanilla_buttercream.jpg'),

((SELECT user_id FROM users WHERE username='bakerjoy'),
'French Toast', 'Custardy French toast with cinnamon.', 'public'::recipe_visibility, 3, 8, 10,
'Whisk eggs, milk, cinnamon, and vanilla. Dip bread slices in the mixture and cook in a buttered skillet until golden on both sides. Serve warm with syrup.',
'https://example.com/images/french_toast.jpg'),

((SELECT user_id FROM users WHERE username='grillpro'),
'Grilled Steak', 'Simple grilled steak with salt and pepper.', 'public'::recipe_visibility, 2, 10, 12,
'Season steak generously with salt and pepper. Preheat grill to high heat and cook steak 4 to 6 minutes per side depending on thickness. Rest for 5 minutes before slicing and serving.',
'https://example.com/images/grilled_steak.jpg'),

((SELECT user_id FROM users WHERE username='grillpro'),
'BBQ Chicken Thighs', 'Chicken thighs glazed with BBQ sauce.', 'public'::recipe_visibility, 4, 10, 25,
'Season chicken thighs and grill over medium heat until nearly cooked through. Brush with barbecue sauce and continue grilling, turning occasionally, until caramelized and cooked to safe temperature.',
'https://example.com/images/bbq_chicken_thighs.jpg'),

((SELECT user_id FROM users WHERE username='grillpro'),
'Grilled Corn', 'Corn grilled and finished with butter.', 'private'::recipe_visibility, 4, 5, 12,
'Brush corn with oil and grill over medium heat, turning occasionally, until lightly charred. Spread with butter and sprinkle with salt before serving.',
'https://example.com/images/grilled_corn.jpg'),

((SELECT user_id FROM users WHERE username='grillpro'),
'Burger Patties', 'Juicy burger patties for grilling.', 'public'::recipe_visibility, 4, 10, 10,
'Form ground beef into patties and season with salt and pepper. Grill over medium high heat about 4 to 5 minutes per side. Add cheese during the last minute if desired and serve on buns.',
'https://example.com/images/burger_patties.jpg'),

((SELECT user_id FROM users WHERE username='grillpro'), 
'Smoky Grilled Veggie Skewers', 'Veggie skewers with smoky seasoning.', 'private'::recipe_visibility, 4, 15, 12,
'Toss chopped vegetables with olive oil and smoky seasoning. Thread onto skewers and grill 10 to 12 minutes, turning occasionally, until tender and lightly charred.',
'https://example.com/images/grilled_veggie_skewers.jpg'),

((SELECT user_id FROM users WHERE username='flavorfy'),
'Lemon Pepper Wings', 'Baked wings tossed in lemon pepper.', 'public'::recipe_visibility, 4, 10, 35,
'Toss chicken wings with oil, salt, and pepper and bake at 400 degrees Fahrenheit for 30 to 35 minutes until crispy. Toss hot wings with lemon zest and cracked pepper before serving.',
'https://example.com/images/lemon_pepper_wings.jpg'),

((SELECT user_id FROM users WHERE username='flavorfy'),
'Creamy Alfredo Pasta', 'Rich alfredo sauce over pasta.', 'public'::recipe_visibility, 4, 10, 20,
'Cook pasta until al dente. In a saucepan melt butter, add cream, and simmer gently. Stir in grated parmesan until smooth, toss with pasta, and serve immediately.',
'https://example.com/images/creamy_alfredo_pasta.jpg'),

((SELECT user_id FROM users WHERE username='flavorfy'),
'Caprese Sandwich', 'Tomato, mozzarella, basil sandwich.', 'private'::recipe_visibility, 2, 8, 0,
'Layer sliced tomato, fresh mozzarella, and basil on bread. Drizzle with olive oil and balsamic glaze, season lightly, and close sandwich before serving.',
'https://example.com/images/caprese_sandwich.jpg'),

((SELECT user_id FROM users WHERE username='flavorfy'), 
'Roasted Garlic Mashed Potatoes', 'Creamy mashed potatoes with roasted garlic.', 'public'::recipe_visibility, 6, 15, 25,
'Boil peeled potatoes until tender. Mash with roasted garlic, butter, and warm milk until creamy. Season with salt and pepper and serve hot.',
'https://example.com/images/roasted_garlic_mashed_potatoes.jpg'),

((SELECT user_id FROM users WHERE username='flavorfy'),
'Fruit Salad', 'Mixed fruit with a light citrus splash.', 'private'::recipe_visibility, 4, 12, 0,
'Chop assorted fresh fruits into bite sized pieces. Toss gently with a squeeze of citrus juice and chill briefly before serving.',
'https://example.com/images/fruit_salad.jpg'),

((SELECT user_id FROM users WHERE username='herbally'),
'Pesto Pasta', 'Basil pesto tossed with pasta and parmesan.', 'public'::recipe_visibility, 4, 10, 12,
'Cook pasta until al dente. Toss hot pasta with basil pesto and a splash of pasta water. Finish with grated parmesan and serve.',
'https://example.com/images/pesto_pasta.jpg'),

((SELECT user_id FROM users WHERE username='herbally'), 
'Herb Roasted Chicken', 'Chicken roasted with herbs and lemon.', 'public'::recipe_visibility, 4, 15, 45,
'Season chicken with olive oil, herbs, garlic, and lemon. Roast at 400 degrees Fahrenheit for about 40 to 45 minutes until juices run clear. Rest briefly before carving.',
'https://example.com/images/herb_roasted_chicken.jpg'),

((SELECT user_id FROM users WHERE username='herbally'),
'Lemon Herb Couscous', 'Fluffy couscous with herbs and lemon.', 'private'::recipe_visibility, 4, 8, 8,
'Pour boiling broth over couscous, cover, and let stand 5 minutes. Fluff with a fork and stir in chopped herbs, lemon zest, and olive oil before serving.',
'https://example.com/images/lemon_herb_couscous.jpg'),

((SELECT user_id FROM users WHERE username='herbally'),
'Garlic Herb Butter', 'Compound butter for bread or steak.', 'private'::recipe_visibility, 8, 10, 0,
'Mix softened butter with minced garlic and chopped herbs until well combined. Shape into a log, chill until firm, and slice as needed.',
'https://example.com/images/garlic_herb_butter.jpg'),

((SELECT user_id FROM users WHERE username='herbally'),
'Herby Omelet', 'Omelet with fresh herbs and cheese.', 'public'::recipe_visibility, 1, 5, 6,
'Whisk eggs with chopped fresh herbs and salt. Pour into a heated pan, cook until nearly set, add cheese, fold, and cook briefly before serving.',
'https://example.com/images/herby_omelet.jpg'),

((SELECT user_id FROM users WHERE username='kitchenn'),
'Chicken Parmesan', 'Breaded chicken with marinara and cheese.', 'public'::recipe_visibility, 4, 20, 25,
'Bread chicken cutlets and pan fry until golden. Transfer to baking dish, top with marinara and mozzarella, and bake until cheese is melted and bubbly. Serve with pasta.',
'https://example.com/images/chicken_parmesan.jpg'),

((SELECT user_id FROM users WHERE username='kitchenn'), 
'Garden Salad', 'Fresh salad with a simple vinaigrette.', 'private'::recipe_visibility, 4, 10, 0,
'Toss mixed greens with chopped vegetables. Whisk olive oil, vinegar, salt, and pepper and drizzle over salad before serving.',
'https://example.com/images/garden_salad.jpg'),

((SELECT user_id FROM users WHERE username='kitchenn'),
'Baked Potato', 'Fluffy baked potatoes with toppings.', 'public'::recipe_visibility, 4, 5, 55,
'Pierce potatoes with a fork and bake at 400 degrees Fahrenheit for about 50 to 55 minutes until tender. Slice open and top with butter, sour cream, and chives.',
'https://example.com/images/baked_potato.jpg'),

((SELECT user_id FROM users WHERE username='kitchenn'), 
'Mac and Cheese', 'Creamy stovetop mac and cheese.', 'public'::recipe_visibility, 4, 10, 15,
'Cook macaroni until tender. In a saucepan melt butter, stir in flour, add milk gradually, and cook until thickened. Stir in shredded cheese and combine with pasta.',
'https://example.com/images/mac_and_cheese.jpg'),

((SELECT user_id FROM users WHERE username='kitchenn'),
'Apple Cinnamon Oatmeal', 'Warm oatmeal with apples and cinnamon.', 'private'::recipe_visibility, 2, 5, 8,
'Simmer oats in milk or water until tender. Stir in diced apples, cinnamon, and a touch of sweetener. Cook briefly until apples soften and serve warm.',
'https://example.com/images/apple_cinnamon_oatmeal.jpg'),

((SELECT user_id FROM users WHERE username='dishdash'),
'Chicken Fried Rice', 'Stir fried rice with chicken and vegetables.', 'public'::recipe_visibility, 4, 12, 12,
'Sauté diced chicken until cooked through and set aside. Stir fry vegetables, add cooked rice and soy sauce, then return chicken and toss until heated through.',
'https://example.com/images/chicken_fried_rice.jpg'),

((SELECT user_id FROM users WHERE username='dishdash'),
'Quick Ramen Upgrade', 'Ramen with egg, scallions, and sesame.', 'public'::recipe_visibility, 1, 5, 6,
'Cook ramen noodles according to package directions. Stir in seasoning, top with soft boiled or fried egg, sliced scallions, and a drizzle of sesame oil.',
'https://example.com/images/quick_ramen_upgrade.jpg'),

((SELECT user_id FROM users WHERE username='dishdash'),
'Tuna Salad Sandwich', 'Classic tuna salad on bread.', 'private'::recipe_visibility, 2, 10, 0,
'Mix canned tuna with mayonnaise, diced celery, salt, and pepper. Spread on bread slices and top with lettuce before serving.',
'https://example.com/images/tuna_salad_sandwich.jpg'),

((SELECT user_id FROM users WHERE username='dishdash'),
'Pan Seared Pork Chops', 'Simple pork chops with a crisp sear.', 'public'::recipe_visibility, 2, 10, 15,
'Season pork chops with salt and pepper. Sear in a hot skillet 4 to 5 minutes per side until cooked through. Rest briefly before serving.',
'https://example.com/images/pan_seared_pork_chops.jpg'),

((SELECT user_id FROM users WHERE username='dishdash'),
'Balsamic Roasted Veggies', 'Roasted vegetables with balsamic glaze.', 'private'::recipe_visibility, 4, 12, 25,
'Toss chopped vegetables with olive oil, salt, and pepper and roast at 400 degrees Fahrenheit for 20 to 25 minutes. Drizzle with balsamic glaze before serving.',
'https://example.com/images/balsamic_roasted_veggies.jpg'),

((SELECT user_id FROM users WHERE username='snackify'),
'Guacamole', 'Creamy guacamole with lime and salt.', 'public'::recipe_visibility, 4, 10, 0,
'Mash ripe avocados with lime juice and salt. Stir in diced onion and tomato if desired and serve fresh.',
'https://example.com/images/guacamole.jpg'),

((SELECT user_id FROM users WHERE username='snackify'),
'Popcorn Seasoning Mix', 'Savory seasoning blend for popcorn.', 'private'::recipe_visibility, 8, 5, 0,
'Combine salt, paprika, garlic powder, and dried herbs in a small bowl. Sprinkle over freshly popped popcorn and toss to coat evenly.',
'https://example.com/images/popcorn_seasoning_mix.jpg'),

((SELECT user_id FROM users WHERE username='snackify'),
'Loaded Nachos', 'Nachos with cheese, beans, and toppings.', 'public'::recipe_visibility, 4, 12, 10,
'Spread tortilla chips on a baking sheet and top with beans and shredded cheese. Bake until melted, then add toppings like salsa, jalapenos, and sour cream.',
'https://example.com/images/loaded_nachos.jpg'),

((SELECT user_id FROM users WHERE username='snackify'),
'Trail Mix', 'Sweet and salty trail mix blend.', 'private'::recipe_visibility, 10, 8, 0,
'Combine nuts, dried fruit, chocolate pieces, and seeds in a large bowl. Mix well and store in an airtight container.',
'https://example.com/images/trail_mix.jpg'),

((SELECT user_id FROM users WHERE username='snackify'),
'Peanut Butter Banana Toast', 'Toast with peanut butter and banana slices.', 'public'::recipe_visibility, 1, 5, 0,
'Toast bread to your liking. Spread with peanut butter and top with sliced banana. Drizzle with honey if desired and serve immediately.',
'https://example.com/images/peanut_butter_banana_toast.jpg'),

((SELECT user_id FROM users WHERE username='freshpal'),
'Chicken Salad', 'Fresh chicken salad with crunchy celery.', 'public'::recipe_visibility, 4, 15, 0,
'Mix diced cooked chicken with mayonnaise, celery, salt, and pepper. Chill briefly and serve over greens or in sandwiches.',
'https://example.com/images/chicken_salad.jpg'),

((SELECT user_id FROM users WHERE username='freshpal'),
'Veggie Wrap', 'Crisp veggies wrapped with hummus.', 'private'::recipe_visibility, 2, 10, 0,
'Spread hummus over a tortilla and layer with sliced cucumber, bell pepper, carrots, and spinach. Roll tightly and slice before serving.',
'https://example.com/images/veggie_wrap.jpg'),

((SELECT user_id FROM users WHERE username='freshpal'),
'Lemon Vinaigrette', 'Bright dressing for salads.', 'private'::recipe_visibility, 6, 7, 0,
'Whisk together lemon juice, olive oil, Dijon mustard, salt, and pepper until emulsified. Use immediately or refrigerate.',
'https://example.com/images/lemon_vinaigrette.jpg'),

((SELECT user_id FROM users WHERE username='freshpal'),
'Baked Chicken Tenders', 'Oven baked tenders with crunchy coating.', 'public'::recipe_visibility, 4, 15, 20,
'Coat chicken tenders in seasoned breadcrumbs and place on a lined baking sheet. Bake at 400 degrees Fahrenheit for 18 to 20 minutes until golden and cooked through.',
'https://example.com/images/baked_chicken_tenders.jpg'),

((SELECT user_id FROM users WHERE username='freshpal'),
'Fruit and Yogurt Bowl', 'Yogurt bowl topped with fresh fruit.', 'public'::recipe_visibility, 1, 7, 0,
'Spoon yogurt into a bowl and top with sliced fresh fruit and a sprinkle of granola or nuts. Drizzle with honey if desired and serve.',
'https://example.com/images/fruit_yogurt_bowl.jpg');