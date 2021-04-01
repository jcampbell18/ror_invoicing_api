class Company < ApplicationRecord
  belongs_to :company_category
  belongs_to :state
end
