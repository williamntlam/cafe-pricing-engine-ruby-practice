require_relative "drink"
require_relative "espresso"
require_relative "latte"
require_relative "cappuccino"

class DrinkFactory
    def self.create(type)
        case type.to_s.downcase
        when "espresso" then Espresso.new
        when "latte" then Latte.new
        when "cappuccino" then Cappuccino.new
        else
            raise ArgumentError, "Unknown drink: #{type}"
        end
    end
end