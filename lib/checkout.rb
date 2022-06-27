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

  def scan(productcode)
    @item_repository.all.each do |item|
      if item[:productcode].to_i == productcode.to_i
        @order << item
      else
        @view.error
      end
    end
  end

  def add
    display_items
    productcode = @view.ask_user_for
    scan(productcode)
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
    @view.display_order(orders)
  end
end
