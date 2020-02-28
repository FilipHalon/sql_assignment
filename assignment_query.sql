WITH 
	Table_C AS (
		SELECT 	A.dimension_1,
				A.dimension_2
			FROM Table_A A
		UNION ALL
		SELECT	B.dimension_1,
				B.dimension_2
			FROM Table_B B
)
SELECT	C.dimension_1,
		(SELECT DISTINCT M.correct_dimension_2
			FROM Table_MAP M
			WHERE C.dimension_1 = M.dimension_1) dimension_2,
		SUM(COALESCE(A.measure_1, 0)) measure_1,
		SUM(COALESCE(B.measure_2, 0)) measure_2
	FROM Table_C C
	LEFT JOIN	Table_A A
		ON	C.dimension_1 = A.dimension_1
		AND C.dimension_2 = A.dimension_2
	LEFT JOIN	Table_B B
		ON	C.dimension_1 = B.dimension_1
		AND C.dimension_2 = B.dimension_2
	GROUP BY 1, 2;