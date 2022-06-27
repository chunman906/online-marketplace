class Order
  attr_reader :item
  attr_accessor :id, :quantity

  def initialize(attributes = {})
    @id = attributes[:id]
    @item = attributes[:item]
    @quantity = attributes[:quantity]
  end
end
