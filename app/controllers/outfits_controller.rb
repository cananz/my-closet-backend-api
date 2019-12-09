class OutfitsController < ApplicationController
  def index
    if params[:user_id]
      user = User.find(params[:user_id])

      outfits = user.outfits
    else
      outfits = Outfit.all
    end


    render json: OutfitSerializer.new(outfits).to_serialized_json

  end

  def show
    outfit = Outfit.find(params[:id])
    render json: OutfitSerializer.new(outfit).to_serialized_json
  end

  def create
    user = User.find(params[:user_id])


    items = params[:items]

    new_outfit = Outfit.create

    items.each {|item| OutfitItem.find_or_create_by(outfit: new_outfit, item_id: item)}


    outfit_list = user.outfits
    render json: OutfitSerializer.new(outfit_list).to_serialized_json
  end

  # def update
  #
  # end

  def destroy

    outfit = Outfit.find(params[:id])


    user = outfit.user
    outfit.destroy
    outfits = user.outfits



    render json: OutfitSerializer.new(outfits).to_serialized_json
  end

  private
    def outfit_params
      params.permit(:user_id, :items)
    end
end
