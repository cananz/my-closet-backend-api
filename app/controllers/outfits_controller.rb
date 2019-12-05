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
    user = User.find(params[:user_id])
    outfits = user.outfits

    outfit = Outfit.create(item_ids: params[:items])

    # outfit.item_ids = params[:items]

    outfit_options = {
      include: {
        items: {
          only: [:id, :image, :brand],
          include: {category: {only: [:name]}}
        }
      },
      except: [:updated_at, :created_at]
    }

    render json: outfit.to_json(outfit_options)
    # render json: outfits.to_json
  end

  def update

  end

  def destroy
    # byebug
    outfit = Outfit.find(params[:id])
    user = User.find(params[:user_id])
    outfit.destroy
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

  private
    def outfit_params
      params.permit(:user_id, :items)
    end
end
