-- done
INSERT INTO grocery_stores
(
  grocery_admin_id,
  store_name,
  address_line1,
  city,
  state,
  postal_code,
  country,
  phone
)
VALUES
(
  (SELECT user_id FROM users WHERE username = 'krogergm'),
  'Kroger',
  '1161 E Dayton Yellow Springs Rd',
  'Fairborn',
  'OH',
  '45324',
  'US',
  '937-878-2393'
),

(
  (SELECT user_id FROM users WHERE username = 'targetgm'),
  'Target',
  '2490 N Fairfield Rd',
  'Beavercreek',
  'OH',
  '45431',
  'US',
  '937-431-8660'
);
