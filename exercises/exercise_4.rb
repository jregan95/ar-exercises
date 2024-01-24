require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'


puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true);
Store.create(name: "Whistler", annual_revenue: 190000, mens_apparel: true, womens_apparel: false);
Store.create(name: "Yaletown", annual_revenue: 43000, mens_apparel: true, womens_apparel: true);

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |x| puts "#{x.name} #{x.annual_revenue}"}

@womens_apparel = Store.where('annual_revenue < ? AND womens_apparel = ?', 1000000, true)
@womens_apparel.each { |x| puts "#{x.name} #{x.annual_revenue}"}

# Your code goes here ...
