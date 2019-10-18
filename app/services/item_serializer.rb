class ItemSerializer
  def initialize(item_obj)
    @item = item_obj
  end

  def to_serialized_json
    item_options = {
      only: [:id, :image, :brand, :color],
      include: {
        user: {
          only: [:id, :username, :first_name, :last_name]
        },
        category: {
          only: [:name]
        }
      }
    }

    @item.to_json(item_options)

  end
end
