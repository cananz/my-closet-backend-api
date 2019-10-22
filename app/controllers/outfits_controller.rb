class OutfitsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    outfits = user.outfits
    outfit_options = {
      include: {
        items: {
          only: [:id, :image, :brand],
          include: {category: {only: [:name]}}
        }
      },
      except: [:updated_at, :created_at]
    }
    render json: outfits.to_json(outfit_options)
  end

  def create
    # byebug
    user = User.find(params[:user_id])
    outfit = Outfit.create
    add_items = params[:items]
    # byebug
    add_items.each {|item_id|
      OutfitItem.create(item_id: item_id, outfit_id: outfit.id)
    }
    # outfit.items = add_items
    # byebug
    render json: outfit.to_json
  end

  def update
  end

  def destroy

  end

  private
    def outfit_params
      params.permit(:user_id, :items)
    end
end
