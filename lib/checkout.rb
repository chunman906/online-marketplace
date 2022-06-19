require_relative './models/item'

class Checkout
  def initialize(promotional_rules)
    @basket = []
    @promotional_rules = promotional_rules
  end

  def scan(item)

  end

  def total
    @promotional_rules.total(@items).round(2)
  end
end
