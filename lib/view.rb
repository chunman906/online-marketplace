class View
  def display(items)
    items.each do |item|
      puts "#{item.productcode}. #{item.name} - £ #{item.price}"
    end
  end

  def display_order(orders)
    orders.each do |order|
      puts "#{order.id}. #{order.item} - #{order.quantity}"
    end
  end

  def ask_user_for
    puts "Which item do you want ?"
    gets.chomp.to_i
  end

  def error
    puts "No such item in here"
  end
end
