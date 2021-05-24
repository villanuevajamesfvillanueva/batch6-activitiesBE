require_relative './order'
require 'pry'

order1 = Order.new('caramel frappe', 'grande', 3.50)
customer1 = Customer.new('James')
binding.pry
puts ''