require_relative 'ar.rb'

deleteProduct = Product.where(:id =>456).first

puts deleteProduct.inspect

puts "Product: #{deleteProduct.name} is deleted."

deleteProduct.destroy