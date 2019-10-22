class OutfitItem < ApplicationRecord
  belongs_to :outfit
  belongs_to :item
  # has_one :user, through: :item
  # validates_presence_of :outfit
  # validates_presence_of :item
end
