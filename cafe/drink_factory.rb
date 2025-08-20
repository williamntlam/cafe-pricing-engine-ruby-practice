require_relative "Drinks/drink"
require_relative "Drinks/espresso"
require_relative "Drinks/latte"
require_relative "Drinks/cappuccino"

# class DrinkFactory
#     def createEspresso
#         Espresso.new
#     end

#     def createLatte
#         Latte.new
#     end

#     def createCappuccino
#         Cappuccino.new
#     end
# end

class DrinkFactory
    def self.create(type)
        case type.to_s.downcase
        when "espresso" then Espresso.new
        when "latte" then Latte.new
        when "cappuccino" then Cappuccino.new
        else
            raise ArgumentError, "Unknown Drink"
        end
    end
end