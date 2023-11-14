SELECT s.name, s.straat, s.huisnr, s.postcode, geo.lat, geo.lng
FROM mhl_suppliers AS s
INNER JOIN pc_lat_long as geo
ON geo.pc6 = s.postcode
ORDER BY geo.lat DESC
LIMIT 5;
