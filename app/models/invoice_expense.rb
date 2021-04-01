class InvoiceExpense < ApplicationRecord
  belongs_to :invoice
  belongs_to :expense
end
