class Item
  attr_reader :name, :price
  attr_accessor :productcode

  def initialise(attributes = {})
    @productcode = attributes[:productcode]
    @name = attributes[:name]
    @price = attributes[:price]
    # @lavender_heart = lavender_heart
    # @personalise_cufflink = personalise_cufflink
    # @kids_t_shirt = kids_t_shirt
  end
end
