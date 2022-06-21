class View
  def display(items)
    items.each do |item|
      puts "#{item.productcode}. #{item.name} - £ #{item.price}"
    end
  end
end
