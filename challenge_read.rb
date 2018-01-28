require_relative 'ar.rb'

#get first product from database
newProduct = Product.first

#inspect first product
puts newProduct.inspect

puts "Product table colums: product_id, name, description, price, stock quantity, created_at, updated_at"
puts "Category table(Associated): category_id(primary key of category table)"
#count number of products
number_of_products = Product.count

#string output
puts "There are #{number_of_products} in the products table."

#get products priced above 10 dollars
productAboveTenDollar = Product.where("price > 10 AND name LIKE 'C%'")

productAboveTenDollar.each {|prod| puts prod.name}

puts Product.where("stock_quantity < 5").count

Category.all.each {|c| puts "#{c.description} #{c.id}"}
