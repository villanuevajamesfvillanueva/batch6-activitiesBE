#O - Open/Closed Principle (should be open for extension and closed for modification)
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


#class Drive is open for exension and not subject for modification since
#we can only add methods about driving mechanics