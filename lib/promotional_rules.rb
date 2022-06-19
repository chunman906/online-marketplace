require_relative './models/item'
require_relative './checkout'

class PromotionalRule
  def total(items)
    current_total = 0

    items.each do |item, quantity|
      current_total += item_pricing(item, quantity)
    end

    total_pricing(current_total)
  end

  private

  def item_pricing(item, quantity)
    if item.eql?(LavenderHeart)
      lavender_heart_pricing(item, quantity)
    else
      general_item_pricing(item, quantity)
    end
  end

  def total_pricing(total)
    total > 60 ? total * 0.9 : total
  end

  def lavender_heart_pricing(item, quantity)
    quantity >= 2 ? 8.5 * quantity : item.price * quantity
  end

  def general_item_pricing(item, quantity)
    item.price * quantity
  end
end
