class Item
  attr_reader :name, :price
  attr_accessor :productcode

  def initialize(attributes = {})
    @productcode = attributes[:productcode]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end
