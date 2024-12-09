SELECT
	a.account_id,
	SUM(a.transac_amt) AS balance_amt
FROM
(
	SELECT
		transaction_id,
		account_id,
		CASE 
			WHEN transaction_type='Withdrawal' THEN -amount
			ELSE amount END AS transac_amt
	FROM transactions
)a
GROUP BY 1