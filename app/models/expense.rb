class Expense < ApplicationRecord
  belongs_to :expense_category
  belongs_to :company
end
