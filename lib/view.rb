class View
  def display(items)
    items.each do |item|
      puts "#{item.productcode}. #{item.name} - £ #{item.price}"
    end
  end

  def error
    puts "No such item in here"
  end
end
