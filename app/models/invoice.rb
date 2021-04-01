class Invoice < ApplicationRecord
  belongs_to :bid
  belongs_to :project_site
  belongs_to :company
  belongs_to :term
end
