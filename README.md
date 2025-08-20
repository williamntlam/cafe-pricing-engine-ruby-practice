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
