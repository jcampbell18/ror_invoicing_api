class User < ApplicationRecord
  belongs_to :user_category
  belongs_to :company
end
