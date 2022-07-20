
select Products.Name, Categories.Name
from ProductCategory, Products, Categories
where Products.Id = Categories.Id

