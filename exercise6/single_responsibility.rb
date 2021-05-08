#S - Single Responsibility Principle
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

    def slow_down
    end

    def speed_up
    end

    def gear_change
    end
end


class Rev
end


#class Car has single responsibility: instantiate Car objects
#other methods are defined outside