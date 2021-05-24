# save
# instantiate with properties of drink, size, total
# associated with its parent object :customer
# belongs to a customer => setter and getter that allows association to the customer

class Order
    @@all = []          #class variable
    attr_accessor :drink, :size, :total, :customer
    
    def initialize(drink, size, total)
        @drink = drink
        @size = size
        @total = total
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end