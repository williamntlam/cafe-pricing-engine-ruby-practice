class RegularPricing
    def apply(base_cost)
        base_cost
    end
end

class HappyHourPricing
    def apply(base_cost)
        (base_cost * 0.8).round(2)
    end
end