#I - Interface Segregation Principle
#(segrerate methods that are not really of the 'same vibes', or
# too complex to be included inside a class)

class Car
    def initialize(make, model, year, color)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
    end
end


class Drive
    def start_engine
    end

    def gear_change
    end

    def slow_down
    end

    def speed_up
    end
end


class Rev
end

# class Drive is segregated from class Car since class Drive has many 
# complex methods that constitutes 'driving'