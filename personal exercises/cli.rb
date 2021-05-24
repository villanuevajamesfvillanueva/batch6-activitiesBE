class CLI
    def intro
        print "Welcome to Starbs, let's start with your name: "
        name = gets.chomp.strip
        customer1 = Customer.new(name)
        greeting(customer1)
    end 

    def greeting(customer)
        puts "Awesome, welcome #{customer.name}, what would you like to order?"
        input = gets.chomp.strip.split(', ')
        make_order(input, customer)
    end

    def make_order(order_arr, customer)
        order = Order.new(order_arr[0], order_arr[1], order_arr[2])
        order.customer = customer
        binding.pry
    end

end