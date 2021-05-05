#Abstraction: hides complexity by giving you a more abstract picture
#the creation of pizza is abstracted away from the client, all they need to care about is to enjoy the pizza
class Pizza
    def initialize(size, flavor, extra_toppings = false)
        @size = size    #string: "small", "medium", "large"
        @flavor = flavor    
        @extra_toppings = extra_toppings
    end

    def prepare
        puts "prepares #{@size} #{@flavor} pizza"
    end

    def get_total
        subtotal + toppings
    end

    private
    def subtotal
        case @size
        when "small"
            sub_total = 100
        when "medium"
            sub_total = 200
        when "large"
            sub_total = 300
        else
            "Error: size has an invalid value"
        end

        return sub_total
    end

    def toppings
        additional_cost = @extra_toppings ? 25 : 0
    end
end




order1 = Pizza.new("small", "hawaiian", true)
puts order1.get_total

order2 = Pizza.new("large", "all meat", false)
puts order2.get_total