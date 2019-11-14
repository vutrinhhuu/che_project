class Chair < ApplicationRecord
  has_many :order_items
  belongs_to :category, optional: true

  # default_scope { where(active: true) }
end
