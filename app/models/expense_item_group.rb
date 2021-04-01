class ExpenseItemGroup < ApplicationRecord
  belongs_to :expense
  belongs_to :expense_item
end
