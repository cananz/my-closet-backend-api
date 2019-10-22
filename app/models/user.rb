class User < ApplicationRecord
  has_many :items
  has_many :outfits, through: :items
  validates :username, uniqueness: { case_sensitive: false }

  def filter_by_category(category_name)
    self.items.select{|item| item.category.name == category_name }
  end

end










# User first_name, last_name, username
