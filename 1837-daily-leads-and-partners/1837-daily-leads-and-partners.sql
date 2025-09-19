/* 
    GROUP BY를 date_id와 make_name으로
    distinct를 사용하여 lead_id의 수와 partner_id의 수를 return
*/

SELECT date_id, make_name, COUNT(DISTINCT(lead_id)) [unique_leads], COUNT(DISTINCT(partner_id)) [unique_partners]
FROM DailySales
GROUP BY date_id, make_name