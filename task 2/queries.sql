/*	a. ��� ��������� ������ ������� �������� �������� ���� ���������, � ������� ������������ ������; 
	products - 5, 6, 8, 11
*/

	SELECT DISTINCT id, name FROM categories ctg LEFT JOIN product_to_categories ptc ON ptc.categ_id = ctg.id WHERE ptc.product_id IN('5','6','8','11')



/*	b. ��� �������� ��������� �������� ������ ����������� ���� ������� �� ���� ��������� � �� �������� ���������;
	category - 2
 */

	SELECT prd.id, prd.name FROM products prd LEFT JOIN product_to_categories ptc ON ptc.product_id = prd.id WHERE ptc.categ_id = '2' UNION SELECT prd.id, prd.name 	FROM products prd LEFT JOIN product_to_categories ptc ON ptc.product_id = prd.id WHERE ptc.categ_id IN(SELECT id FROM categories WHERE parent_id = '2')
	


/*	c. ��� ��������� ������ ��������� �������� ���������� ����������� ������� � ������ ���������; 
	categories '4','7','11','9'
*/
	SELECT categ_id, COUNT(product_id) p_count FROM product_to_categories
	WHERE categ_id IN('4','7','11','9') GROUP BY categ_id



/*	d. ��� ��������� ������ ��������� �������� ����� ���������� ���������� ����������� ������;
	categories '4','7','11','9'
*/
	SELECT SUM(p_count) p_sum FROM (
		SELECT ptc.categ_id, COUNT(product_id) p_count FROM product_to_categories ptc
		WHERE ptc.categ_id IN('4','7','11','9') 
		AND ptc.product_id NOT IN (
			SELECT sub_ptc.product_id FROM product_to_categories sub_ptc
			WHERE sub_ptc.categ_id IN('4','7','11','9') AND sub_ptc.categ_id != ptc.categ_id
		)
		GROUP BY categ_id
	) t1

	