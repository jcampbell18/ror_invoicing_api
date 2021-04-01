class Bid < ApplicationRecord
  belongs_to :bid_status
  belongs_to :project_site
  belongs_to :company
end
