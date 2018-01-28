require_relative 'ar.rb'

#type1
product1 = Product.new(         
    id:  123,
    name: "Apple",
    description: "Fruit not the electronic",
    price: 10.00,
    stock_quantity: 12,
    category_id: 3 )
    
puts product1.inspect

puts "Product 1 created" if product1.save

#type2
product2 = Product.create(
    id:  456,
    name: "Pine Apple",
    description: "Not a apple type but unique fruit",
    price: 4.99,
    stock_quantity: 10,
    category_id: 2 )

puts product2.inspect

puts "Product 2 created" if product2.save

#type3
product3 = Product.new()
product3.id = 789
product3.name = "Royal Gala Apple"
product3.description = "Supreme apple"
product3.price = 2.89
product3.stock_quantity = 9
product3.category_id = 1

puts product3.inspect

puts "Product 3 created" if product3.save

#product with errors
prodWithErrors = Product.new(
    id:  123,
    description: "Fruit not the electronic",
    price: 10.00,
    stock_quantity: 12,
    category_id: 3)
    

if (prodWithErrors.save)
  puts "Product with error was saved (which will never happen)"
  puts prodWithErrors.inspect
else
  puts "There was an error saving product with error to the database."
  prodWithErrors.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
      end
    end
end