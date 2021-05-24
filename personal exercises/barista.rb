# has many customers through orders
# has many orders

class Barista
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    # showing the has many relationships
    # return all the associated orders / reader method
    def orders
        Order.all.select do |order|          # select will return an array
            order.barista == self
        end
    end

    def customers
        orders.map do |order|           #create a new array will all of associated barista
            order.customer
        end
    end

end