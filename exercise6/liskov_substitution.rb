#L - Liskov Substitution Principle (superclass method should be overridden by a subclass method for specificity)

class Car
    def initialize(make, model, year, color)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
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

end

class SUV < Car
    def initialize(make, model, year, color, seats)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
        @seats = seats          #int
    end
end