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
    puts "1 - Scan item"
    puts "2 - List all the items"
    puts "3 - Check out"
    puts "4 - Stop and exit the program"
  end

  def stop
    @running = false
  end

  def route_action(action)
    case action
    when 1 then puts @checkout.scan
    when 2 then puts @checkout.list
    when 3 then puts @checkout.total
    when 4 then stop
    else
      puts "Please press 1, 2, 3, or 4"
    end
  end
end
