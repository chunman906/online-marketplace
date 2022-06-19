require 'csv'
require_relative '../models/item'

class ItemRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @items = []
    @next_productcode = 1
    load_csv if File.exist?(@csv_file)
  end

  def create(item)
    item.productcode = @next_productcode
    @next_productcode += 1
    @items << item
    save_csv
  end

  def all
    @items
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["productcode", "name", "price"]
      @items.each do |item|
        csv << [item.productcode, item.name, item.price]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:productcode] = row[:productcode].to_i
      row[:price] = row[:price].to_f
      @items << Item.new(row)
    end
      @next_productcode = @items.empty? ? 1 : @items.last.productcode + 1
  end
end
