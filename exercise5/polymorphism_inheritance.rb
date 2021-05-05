#Polymorphism: 

#using inheritance:
class Pizza
    def initialize(size, flavor, extra_toppings)
        @size = size    #string: "small", "medium", "large"
        @flavor = flavor    
        @extra_toppings = extra_toppings    #boolean
    end

    def prepare
        puts "prepares #{@size} #{@flavor} pizza"
    end
end

class ThinCrust < Pizza
    def prepare
        puts "prepares #{@size} #{@flavor} pizza"
    end
end

class StuffedCrust < Pizza
    def prepare
        puts "prepares #{@size} #{@flavor} pizza"
    end
end

order1 = ThinCrust.new("small", "hawaiian", true)
order1.prepare

order2 = StuffedCrust.new("large", "all meat", true)
order2.prepare

