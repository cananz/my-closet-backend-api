class OutfitItem < ApplicationRecord
  belongs_to :outfit
  belongs_to :item
  # has_one :user, through: :item
end
