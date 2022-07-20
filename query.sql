
select Products.Name as Product,
    case ISNULL(ProductCategory.FK_Category, -1) when -1 then '' else Categories.Name end as Category
from ProductCategory, Products, Categories
where Products.Id = ProductCategory.FK_Product
and Categories.Id = ISNULL(ProductCategory.FK_Category, 0)

