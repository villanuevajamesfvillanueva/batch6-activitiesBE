require_relative './order'
require_relative './customer'
require_relative './barista'
require_relative './cli'
require 'pry'

order1 = Order.new('caramel frappe', 'grande', 3.50)
customer1 = Customer.new('James')
barista1 = Barista.new('Nicole')
CLI.new.intro
# binding.pry
puts ''