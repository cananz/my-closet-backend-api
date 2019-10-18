class UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def show
    user = User.find(params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  def create
    user = User.create_by(user_params)
    render json: UserSerializer.new(user).to_serialized_json
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: UserSerializer.new(user).to_serialized_json
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
    def user_params
      params.permit(:id, :username, :first_name, :last_name)
    end
end
