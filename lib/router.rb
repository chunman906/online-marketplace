class Router
  def initialize(checkout)
    @checkout = checkout
    @running = true
  end

  def run
    puts "Welcome to the online market place!"
    puts "          ---         "

    while @running
      display_tasks
      action = gets.chomp.to_i
      puts 'clear'
      route_action(action)
    end
  end

  private

  def display_tasks
    puts ""
    puts "What do you wanna do now?"
    puts "1 - List all the shopping items"
    puts "2 - Scan item"
    puts "3 - List the items in basket"
    puts "4 - Check out"
    puts "5 - Stop and exit the program"
  end

  def stop
    @running = false
  end

  def route_action(action)
    case action
    when 1 then puts @checkout.list
    when 2 then puts @checkout.add
    when 3 then puts @checkout.basket
    when 4 then puts @checkout.total
    when 5 then stop
    else
      puts "Please press 1, 2, 3, 4, or 5"
    end
  end
end
