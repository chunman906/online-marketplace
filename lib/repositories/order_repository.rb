require_relative '../models/order'

class OrderRepository
  def initialize
    @order = []
    @next_id = 1
  end

  def create
    order.id = @next_id
    @next_productcode += 1
  end
end
