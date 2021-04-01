class ImageExpense < ApplicationRecord
  belongs_to :image
  belongs_to :expense
end
