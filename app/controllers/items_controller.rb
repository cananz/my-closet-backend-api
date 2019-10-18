class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: ItemSerializer.new(items).to_serialized_json
  end

  def show
    item = Item.find(params[:id])
    render json: ItemSerializer.new(item).to_serialized_json
  end

  def create
    
  end

  def update
  end

  def destroy
  end
end
