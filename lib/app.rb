require_relative "./repositories/item_repository"
require_relative "./checkout"
require_relative "./promotional_rules"
require_relative "./repositories/order_repository"
require_relative "router"

CSV_FILE = File.join(File.dirname(__FILE__), "items.csv")
item_repository = ItemRepository.new(CSV_FILE)
promotional_rule = PromotionalRule.new
order_repository = OrderRepository.new
checkout = Checkout.new(item_repository, promotional_rule, order_repository)
router = Router.new(checkout)

router.run
