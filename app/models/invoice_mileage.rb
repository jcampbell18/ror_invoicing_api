class InvoiceMileage < ApplicationRecord
  belongs_to :invoice
  belongs_to :mileage
end
