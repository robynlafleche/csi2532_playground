## Lab6

## Requetes
### Question 1.
```sql
SELECT name, birthplace
FROM artists;
```
![Question1](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question1.png "Q1")

### Question 2.
```sql
SELECT title, price
FROM artworks
WHERE year > 1600;
```
![Question2](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question2.png "Q2")

### Question 3.
```sql
SELECT title, type
FROM artworks
WHERE year = 2000 OR artist_name = 'Picasso';
```
![Question3](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question3.png "Q3")

### Question 4.
```sql
SELECT name, birthplace
FROM artists
WHERE EXTRACT(YEAR FROM dateofbirth) >= 1880 AND EXTRACT(YEAR FROM dateofbirth) <= 1930;
```
![Question4](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question4.png "Q4")

### Question 5.
```sql
SELECT name, birthplace
FROM artists
WHERE style IN ('Modern', 'Baroque', 'Renaissance');
```
![Question5](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question5.png "Q5")

### Question 6.
```sql
SELECT *
FROM artworks
ORDER BY title ASC;
```
![Question6](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question6.png "Q6")

### Question 7.
```sql
SELECT name, id
FROM customers
WHERE id IN (
	SELECT customer_id
	FROM likeartists
	WHERE artist_name = 'Picasso'
);
```
![Question7](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question7.png "Q7")

### Question 8.
```sql
SELECT name
FROM customers
WHERE id IN (
	SELECT customer_id
	FROM likeartists
	WHERE artist_name IN (
		SELECT artist_name
		FROM artworks
		WHERE type = 'Renaissance' AND price > 30000.00
	)
);
```
![Question8](https://github.com/robynlafleche/csi2532_playground/blob/laboratoire6/laboratoire6/images/Question8.png "Q7")
