# Cafe Pricing Engine - Ruby Practice Project

A pure Ruby project designed to practice Object-Oriented Programming concepts and design patterns. This mini cafe pricing engine demonstrates several key patterns without requiring a full Rails application.

## 🎯 Project Goal

Build a small, focused core that you can later integrate into Rails applications. Estimated completion time: ~1 hour.

## 🏗️ Design Patterns Used

### 1. **Decorator Pattern** - Add-ons
- Wraps base drinks with additional ingredients (milk, mocha, soy)
- Maintains flexibility and composability
- Example: `Mocha.new(Milk.new(Latte.new))`

### 2. **Strategy Pattern** - Pricing Rules
- Switches between different pricing strategies (regular, happy hour, member tiers)
- Eliminates complex if-else ladders
- Easy to add new pricing strategies

### 3. **Factory Method Pattern** - Drink Creation
- Centralizes object creation logic
- Keeps callers ignorant of concrete class implementations
- Clean, maintainable code structure

## 📁 Project Structure

```
cafe/
├── drink.rb              # Base drink classes
├── decorators.rb         # Add-on decorators
├── pricing_strategies.rb # Pricing strategy implementations
├── drink_factory.rb      # Factory for creating drinks
└── demo.rb              # Example usage and demonstration
```

## 🚀 Quick Start

1. Navigate to the cafe directory
2. Run the demo:
   ```bash
   ruby cafe/demo.rb
   ```

## 📊 Example Output

```
Order: Latte + Milk + Mocha
Base cost: $4.15
Regular total: $4.15
Happy hour total: $3.32
Gold member total: $3.74
```

## 🔧 Core Components

### Base Drinks (`drink.rb`)
- `Drink` - Abstract base class
- `Espresso` - $2.50
- `Latte` - $3.25

### Add-ons (`decorators.rb`)
- `Milk` - +$0.30
- `Mocha` - +$0.60
- `Soy` - +$0.40

### Pricing Strategies (`pricing_strategies.rb`)
- `RegularPricing` - No discount
- `HappyHourPricing` - 20% off
- `TieredMemberPricing` - Silver (5%), Gold (10%), Platinum (15%)

### Factory (`drink_factory.rb`)
- `DrinkFactory.create(type)` - Creates drinks by type

## 🎯 Why This Project is Great for OOP Practice

- **Decorator**: Keeps add-ons flexible and composable
- **Strategy**: Cleanly swaps pricing rules without complex conditionals
- **Factory Method**: Centralizes object creation and maintains clean separation

## 🚀 Stretch Goals (Optional)

If you have extra time, try implementing one of these:

1. **Template Method**: Create a receipt printer with different format hooks (plain text vs JSON)
2. **Adapter**: Wrap a different money library to expose a compatible cost API
3. **Observer**: Notify listeners when drinks are priced (e.g., analytics logging)

## 🔄 Rails Integration

When you're ready for Rails:

1. Drop the `cafe/` folder into `app/lib/`
2. Build a simple `OrdersController` that:
   - Uses `DrinkFactory` + decorators from params
   - Applies pricing strategies based on user/timestamp
   - Renders the total

## 💡 Learning Benefits

This project provides hands-on experience with:
- Object composition and inheritance
- Design pattern implementation
- Clean, maintainable code structure
- Separation of concerns
- Testable, modular design

Perfect for practicing Ruby skills and understanding how design patterns solve real-world problems!