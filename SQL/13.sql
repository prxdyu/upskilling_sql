SELECT
  COUNT(CASE WHEN product LIKE '%TurboTax%'   THEN user_id END) AS turbo,
  COUNT(CASE WHEN product LIKE '%QuickBooks%' THEN user_id END) AS quickbook
FROM
  filed_taxes