require_relative './order'
require_relative './customer'
require 'pry'

order1 = Order.new('caramel frappe', 'grande', 3.50)
customer1 = Customer.new('James')
binding.pry
puts ''