require_relative './models/item'
require_relative './view'

class Checkout
  def initialize(item_repository, promotional_rule)
    @basket = []
    @item_repository = item_repository
    @promotional_rule = promotional_rule
    @view = View.new
  end

  def scan(item)

  end

  def basket
    @basket
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

end
