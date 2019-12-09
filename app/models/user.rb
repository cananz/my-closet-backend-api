class User < ApplicationRecord
  has_many :items
  # has_many :outfit_items, through: :items
  has_many :outfits, -> { distinct }, through: :items

  validates :username, uniqueness: { case_sensitive: false }


  def filter_by_category(category_name)
    self.items.select{|item| item.category.name == category_name }
  end

end
