class ImageInvoice < ApplicationRecord
  belongs_to :image
  belongs_to :invoice
end
