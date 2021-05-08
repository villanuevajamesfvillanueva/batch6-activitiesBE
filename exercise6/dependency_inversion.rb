#D - Dependency Inversion Principle 


class Car
    def initialize(make, model, year, color)
        @make = make            #string
        @model = model          #string
        @year = year            #int
        @color = color          #string
    end
end


class Drive
    
end


class GearShift

end


# this is the part that's not really clear to me
# as I understand it, more complex modules/class should not depent on less complex modules/class
# Naturally GearShift is under the Drive logic but when we apply the Dependency Inversion Principle,
# We need to bring out GearShift and turn it into its own class so that Drive does not depend on it??