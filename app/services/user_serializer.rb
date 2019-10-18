class UserSerializer
  def initialize(user_obj)
    @user = user_obj
  end

  def to_serialized_json
    user_options = {
      include: {
        items: {
          only: [:id, :image, :brand, :color],
          include: {
            category: {only: [:name]}
          }
        }
      },
      except: [:updated_at, :created_at]
    }
  

    @user.to_json(user_options)
  end
end
