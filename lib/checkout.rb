class Checkout
  def initialize(promotional_rules)
    @items = Hash.new(0)
    @promotional_rules = promotional_rules
  end

  def scan(item)
    @items[item.class] += 1
  end

  def total
    @promotional_rules.total(@items).round(2)
  end
end
