#using duck-typing:
class Pizza
    def prepare(type)
        type.prepare
    end
end

class ThinCrust
    def prepare
        puts "prepares thin crust pizza"
    end
end

class StuffedCrust
    def prepare
        puts "prepares stuffed crust pizza"
    end
end


order = Pizza.new
thin_crust = ThinCrust.new
order.prepare(thin_crust)

stuffed_crust = StuffedCrust.new
order.prepare(stuffed_crust)