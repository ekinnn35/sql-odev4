-- 1. replacement_cost sütununda bulunan birbirinden farklı değerleri sıralama
SELECT replacement_cost FROM film 
GROUP BY replacement_cost 
ORDER BY replacement_cost;

-- 2. replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3. Kaç film ismi 'T' harfi ile başlar ve rating 'G' ye eşittir?
SELECT COUNT(*) FROM film 
WHERE title LIKE 'T%' 
  AND rating = 'G';

-- 4. Kaç ülke ismi 5 karakterden oluşmaktadır?
SELECT COUNT(*) FROM country 
WHERE LENGTH(country) = 5;

-- 5. Kaç şehir ismi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) FROM city 
WHERE city ILIKE '%r';
