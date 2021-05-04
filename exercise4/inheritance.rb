#item 1
class Confection
    def prepare
        "Baking at 350 degrees for 25 minutes"
    end
end


class Cupcake < Confection
    def prepare
        super + ", Applying frosting"
    end
end

class BananaCake < Confection
end


banana_cake1 = BananaCake.new
puts banana_cake1.prepare

cupcake1 = Cupcake.new
puts cupcake1.prepare



#item 2
module AdminPermisson
    def edit_users_profile
        puts "Admin updated all users profile"
    end
end

module BuyerPermission
    def buy
        puts "Buyer has bought an item"
    end
end

class User
    #attr_accessor :password

    def initialize(username, password, ip_address)
        @username = username
        @password = password
        @ip_address = ip_address
    end

    def change_password=(password)
        @password = password
        puts "Password changed!"
    end

    protected
    def login
        puts "User logged in. IP address: #{@ip_address}"
    end
end


class Admin < User
    
    def admin_login
        #::Admin.new.login
        login
    end

    include AdminPermisson
end


class Buyer < User
    def initialize(username, password, ip_address)
        super(username, password, ip_address)
    end

    def buyer_login
        #::Buyer.new.login
        #@login
        login
    end

    include BuyerPermission
end
  
  
  
## execute
my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'