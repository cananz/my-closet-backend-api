class Outfit < ApplicationRecord
  has_many :items, through: :outfit_items
  has_many :outfit_items

end
