class LineItemGroup < ApplicationRecord
  belongs_to :line_item
  belongs_to :bid_invoice
end
