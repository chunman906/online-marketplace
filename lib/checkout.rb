class Checkout
  def initialize(promotional_rules)
    @items = []
    @next_productcode = 1
    @promotional_rules = promotional_rules
  end

  def scan(item)
    item.productcode = @next_productcode
    @next_productcode += 1
    @items << item
  end

  def all
    @items
  end

  def total
    @promotional_rules.total(@items).round(2)
  end
end
