require_relative 'ar.rb'

prodAboveFortyStock = Product.where("stock_quantity > 40")

prodAboveFortyStock.each{|prod| prod.stock_quantity += 1}
prodAboveFortyStock.each{|prod| prod.save}
prodAboveFortyStock.each{|prod| puts "#{prod.name} had #{prod.stock_quantity -=1} but now #{prod.stock_quantity +=1}"}