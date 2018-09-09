class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]

  def create
    user = User.find_by(uid_firebase: params[:uid_firebase])
    user = User.create(uid_firebase: params[:uid_firebase]) if user.nil?

    cookies[:user] = {
      value: user.id,
      expires: 1.year.from_now
    }

    render json: user, status: 200
  end

  def edit

  end

  def update
    if @user.present?
      @user.update(user_params)
    end

    redirect_to deputies_path 
  end

  def save_token
    Token.find_or_create_by(token_params)
  end

  private
    def user_params
      params.require(:user).permit(:phone, :full_name)
    end

    def token_params
      params.permit(:token)
    end

    def find_user
      @user = User.find_by(id: cookies[:user])
    end
end
