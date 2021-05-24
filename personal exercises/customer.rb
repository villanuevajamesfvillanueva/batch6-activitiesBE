# has many orders

class Customer
    @@all = []
    attr_accessor :name, :orders

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    # showing the has many relationships
    # return all the associated orders / reader method
    def orders
        Order.all.select do |order|          # select will return an array
            order.customer == self
        end
    end
end