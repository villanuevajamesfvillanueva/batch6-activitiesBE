# has many orders
# has many baristas though orders

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

    def baristas
        orders.map do |order|           #create a new array will all of associated barista
            order.barista
        end
    end

    def self.all
        @@all
    end
end