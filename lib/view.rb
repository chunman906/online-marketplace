class View
  def display(items)
    itemss.each do |item|
      puts "#{item.productcode}. #{item.name} - £ #{item.price}"
    end
  end
end
