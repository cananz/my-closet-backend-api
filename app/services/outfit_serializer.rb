class OutfitSerializer
  def initialize(outfit_obj)
    @outfit = outfit_obj
  end

  def to_serialized_json

    outfit_options = {
      only: [:id],
      include: {
        items: {
          only: [:id, :image, :brand, :color],
          include: {category: {only: [:name]}}
        }
      }
    }

    @outfit.to_json(outfit_options)
  end

end
