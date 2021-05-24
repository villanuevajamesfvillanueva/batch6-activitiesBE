require_relative './order'
require_relative './customer'
require_relative './cli'
require 'pry'

order1 = Order.new('caramel frappe', 'grande', 3.50)
customer1 = Customer.new('James')
CLI.new.intro
binding.pry
puts ''