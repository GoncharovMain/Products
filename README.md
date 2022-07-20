В базе данных MS SQL Server есть продукты и категории. Одному продукту может соответствовать много категорий, в одной категории может быть много продуктов. Напишите SQL запрос для выбора всех пар «Имя продукта – Имя категории». Если у продукта нет категорий, то его имя все равно должно выводиться.

Products

|  Id |     Name    |
|:---:|:-----------:|
|  0  |	candies     |
|  1  |	milk        |
|  2  |	apple       |
|  3  |	porridge    |
|  4  |	sprat       |
|  5  |	herring     |
|  6  |	orange      |
|  7  |	potato      |
|  8  |	grape       |
|  9  |	onion       |
| 10  | cake        |
| 11  |	butter      |
| 12  |	eggs        |


Categories

|  Id |     Name    |
|:---:|:-----------:|
|  0  |	fats        |
|  1  |	sweetness   |
|  2  |	fish        |
|  3  |	vegetables  |
|  4  |	fruit       |
|  5  |	dairy       |
|  6  |	meat        |


ProductCategory

|  Id | FK_Product  | FK_Category   |
|:---:|:-----------:|:-------------:|
|  0  |	1           | 5             |
|  1  |	3           | 5             |
|  2  |	11          | 5             |
|  3  |	4           | 2             |
|  4  |	5           | 2             |
|  5  |	6           | 4             |
|  6  |	2           | 4             |
|  7  |	8           | 4             |
|  8  |	6           | 1             |
|  9  |	2           | 1             |
| 10  |	8           | 1             |
| 11  |	0           | 1             |
| 11  |	10          | 1             |
| 12  |	9           | 3             |
| 13  |	12          |               |

Result query:

ProductCategory

|  Id | FK_Product  | FK_Category   |
|:---:|:-----------:|:-------------:|
|  0  |	milk        | dairy         |
|  1  |	porridge    | dairy         |
|  2  |	butter      | dairy         |
|  3  |	sprat       | fish          |
|  4  |	herring     | fish          |
|  5  |	orange      | fruit         |
|  6  |	apple       | fruit         |
|  7  |	grape       | fruit         |
|  8  |	orange      | sweetness     |
|  9  |	apple       | sweetness     |
| 10  |	grape       | sweetness     |
| 11  |	candies     | sweetness     |
| 11  |	cake        | sweetness     |
| 12  |	onion       |  vegetables   |
| 13  |	eggs        |               |
