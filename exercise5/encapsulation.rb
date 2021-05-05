#Encapsulation: wrapping up of data under a single unit
class Pizza
    def initialize(size, flavor)
        @size = size    #string: "small", "medium", "large"
        @flavor = flavor
    end

    def prepare
        puts "prepares #{@size} #{@flavor} pizza"
    end
end

order1 = Pizza.new("large", "hawaiian")
puts order1.prepare