class Order
  attr_reader :item
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @item = attributes[:item]
  end
end
