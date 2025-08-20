require_relative "pricing_strategies"

class PriceCalculator
    def initialize(pricing_type)
        @strategy = case pricing_type.to_s.downcase
        when "happy hour" then HappyHourPricing.new
        when "regular" then RegularPricing.new
        else
            raise ArgumentError, "Unknown Pricing Type #{pricing_type}"
        end
    end

    def total(drink)
        @strategy.apply(drink.cost)
    end
end