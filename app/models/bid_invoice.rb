class BidInvoice < ApplicationRecord
  belongs_to :bid
  belongs_to :invoice
end
