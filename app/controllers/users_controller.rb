class UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def login
    user = User.find_by(username: params[:username])

    if user
      render json: UserSerializer.new(user).to_serialized_json
    else
      render json: {error: 'could not find username'}.to_json
    end
  end

  def show
    user = User.find(params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  # def create
  #   user = User.create(user_params)
  #   if user.valid?
  #     render json: user: UserSerializer.new(user).to_serialized_json
  #   else
  #     render json: { error: 'failed to create user' }, status: :not_acceptable
  #   end
  # end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: UserSerializer.new(user).to_serialized_json
  end

  # def destroy
  #   user = User.find(params[:id])
  #   user.destroy
  # end

  private
    def user_params
      params.permit(:username, :first_name, :last_name)
    end
end
