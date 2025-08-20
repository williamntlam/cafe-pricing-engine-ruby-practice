require_relative "drink"

class AddOn < Drink
    def initialize(drink)
        @drink = drink
    end
end

class Milk < AddOn
    def description
        "#{@drink.description} added with Milk"
    end

    def cost
        @drink.cost + 0.30
    end
end

class Cream < AddOn
    def description
        "#{@drink.description} added with Cream"
    end

    def cost
        @drink.cost + 0.60
    end
end