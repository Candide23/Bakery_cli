class Bakery
  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
  end

  def welcome_message
    puts "Welcome to #{name} Bakery located at #{location}!"
  end

  def display_menu
    puts "MENU:"
    puts "1. Lemom Cakes - $5.50"
    puts "2. Cookies - $4.00"
    puts "3. Chocolate Cake - $4.00"
  end

  def order(item, quantity)
    case item
    when 1
      puts "You ordered #{quantity} Lemom Cakes."
    when 2
      puts "You ordered #{quantity} Cookies."
    when 3
      puts "You ordered #{quantity} Chocolate Cake."
    else
      puts "Invalid choice."
    end
  end
end

def main
  bakery = Bakery.new("Tasty Bakery", "33 Henry St")

  bakery.welcome_message
  bakery.display_menu

  puts "Enter the number of the item you'd like to order:"
  item = gets.chomp.to_i

  puts "Enter the quantity:"
  quantity = gets.chomp.to_i

  bakery.order(item, quantity)
end

main if __FILE__ == $PROGRAM_NAME
