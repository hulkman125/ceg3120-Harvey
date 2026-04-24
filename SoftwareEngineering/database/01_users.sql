-- done
INSERT INTO users (role, status, username, password, name, email, Date_of_Birth)
VALUES
('administrator', 'approved', 'adminone', 'hash_admin_1', 'Admin One', 'adminone@example.com', '1980-01-01'),
('administrator', 'approved', 'admintwo', 'hash_admin_2', 'Admin Two', 'admintwo@example.com', '1985-05-05');


INSERT INTO users (role, status, username, password, name, email, Date_of_Birth)
VALUES
('grocery_admin', 'pending', 'krogergm', 'hash_kroger', 'Kroger GM', 'krogergm@example.com', '1980-01-01'),
('grocery_admin', 'pending', 'targetgm', 'hash_target', 'Target GM', 'targetgm@example.com', '1985-05-05');

INSERT INTO users (role, status, username, password, name, email, Date_of_Birth)
VALUES --add 
('user', 'pending', 'cookmate', 'hash1', 'Cook Mate', 'cookmate@example.com', '1990-01-01'),
('user', 'pending', 'foodlvrx', 'hash2', 'Food LVRX', 'foodlvrx@example.com', '1991-02-02'),
('user', 'pending', 'chefella', 'hash3', 'Chef Ella', 'chefella@example.com', '1992-03-03'),
('user', 'pending', 'tastebud', 'hash4', 'Taste Bud', 'tastebud@example.com', '1993-04-04'),
('user', 'pending', 'spicegal', 'hash5', 'Spice Gal', 'spicegal@example.com', '1994-05-05'),
('user', 'pending', 'mealprep', 'hash6', 'Meal Prep', 'mealprep@example.com', '1995-06-06'),
('user', 'pending', 'homechef', 'hash7', 'Home Chef', 'homechef@example.com', '1996-07-07'),
('user', 'pending', 'yumsterx', 'hash8', 'Yum Sterx', 'yumsterx@example.com', '1997-08-08'),
('user', 'pending', 'bakerjoy', 'hash9', 'Baker Joy', 'bakerjoy@example.com', '1998-09-09'),
('user', 'pending', 'grillpro', 'hash10', 'Grill Pro', 'grillpro@example.com', '1999-10-10'),
('user', 'pending', 'flavorfy', 'hash11', 'Flavor Fy', 'flavorfy@example.com', '2000-11-11'),
('user', 'pending', 'herbally', 'hash12', 'Herb Ally', 'herbally@example.com', '2001-12-12'),
('user', 'pending', 'kitchenn', 'hash13', 'Kitchen N', 'kitchenn@example.com', '2002-01-01'),
('user', 'pending', 'dishdash', 'hash14', 'Dish Dash', 'dishdash@example.com', '2003-02-02'),
('user', 'pending', 'snackify', 'hash15', 'Snack Ify', 'snackify@example.com', '2004-03-03'),
('user', 'pending', 'freshpal', 'hash16', 'Fresh Pal', 'freshpal@example.com', '2005-04-04');


UPDATE users
SET
  status = 'approved',
  approved_by = (SELECT user_id FROM users WHERE username = 'adminone'),
  approved_at = NOW()
WHERE role IN ('grocery_admin', 'user', 'administrator');

