# Import all your components
require_relative "drinks/drink"
require_relative "drinks/espresso"
require_relative "drinks/latte"
require_relative "drinks/cappuccino"
require_relative "drinks/drink_factory"
require_relative "drinks/decorators"
require_relative "pricing/pricing_strategies"
require_relative "pricing/price_calculator"

puts "☕ Welcome to the Cafe Pricing Engine! ☕"
puts "=" * 50

puts "\n🏭 Creating drinks with Factory pattern:"
espresso = DrinkFactory.create("espresso")
latte = DrinkFactory.create("latte")
cappuccino = DrinkFactory.create("cappuccino")

puts "• #{espresso.description} - $#{'%.2f' % espresso.cost}"
puts "• #{latte.description} - $#{'%.2f' % latte.cost}"
puts "• #{cappuccino.description} - $#{'%.2f' % cappuccino.cost}"

# 2. Demonstrate Decorator pattern
puts "\n🎨 Adding decorators (add-ons):"
latte_with_milk = Milk.new(latte)
latte_with_milk_and_cream = Cream.new(latte_with_milk)

puts "• Base latte: $#{'%.2f' % latte.cost}"
puts "• Latte + Milk: $#{'%.2f' % latte_with_milk.cost}"
puts "• Latte + Milk + Cream: $#{'%.2f' % latte_with_milk_and_cream.cost}"
puts "  Description: #{latte_with_milk_and_cream.description}"

# 3. Demonstrate Strategy pattern with different pricing
puts "\n�� Applying different pricing strategies:"
drink_to_price = latte_with_milk_and_cream

regular_calc = PriceCalculator.new("regular")
happy_calc = PriceCalculator.new("happy hour")

puts "• Drink: #{drink_to_price.description}"
puts "• Base cost: $#{'%.2f' % drink_to_price.cost}"
puts "• Regular pricing: $#{'%.2f' % regular_calc.total(drink_to_price)}"
puts "• Happy hour (20% off): $#{'%.2f' % happy_calc.total(drink_to_price)}"

# 4. Show the complete flow
puts "\n🚀 Complete order example:"
puts "Order: #{drink_to_price.description}"
puts "Final price (happy hour): $#{'%.2f' % happy_calc.total(drink_to_price)}"

puts "\n" + "=" * 50
puts "✨ All design patterns working together! ✨"