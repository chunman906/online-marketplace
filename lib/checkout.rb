require_relative './models/item'
require_relative './models/order'
require_relative './view'

class Checkout
  def initialize(item_repository, promotional_rule, order_repository)
    @item_repository = item_repository
    @promotional_rule = promotional_rule
    @order_repository = order_repository
    @view = View.new
  end

  def scan(item)
    @items.map do |i|
      if i[:name] == item
        @order << item
      else
        @view.error
      end
    end
  end

  def basket
    display_orders
  end

  def list
    display_items
  end

  def total
    @promotional_rules.total(@items).round(2)
  end

  private

  def display_items
    items = @item_repository.all
    @view.display(items)
  end

  def display_orders
    orders = @order_repository.all
    @view.display(orders)
  end
end
