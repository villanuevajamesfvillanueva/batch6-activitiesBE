#L - Liskov Substitution Principle (superclass method should be overridden by a subclass method for specificity)

#overriding take_passengers method

class Car
    def initialize(make, model, year, color)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
    end

    #take ab int arg n > 0 for number of passengers
    #returns a boolean to tell if n can be accommodate inside car
    def take_passengers(n)      
        return false if (n > 3 || n < 0)
        return true
    end
end


class Sedan < Car
    def initialize(make, model, year, color, seats)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
        @seats = seats          #int
    end

    #two seater only, 1 passenger seat available
    def take_passengers(n)      
        return false if (n > 1 || n < 0)
        return true
    end
end

class SUV < Car
    def initialize(make, model, year, color, seats)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
        @seats = seats          #int
    end

    #assume SUV can take 7 passengers max
    def take_passengers(n)      
        return false if (n > 7 || n < 0)
        return true
    end
end