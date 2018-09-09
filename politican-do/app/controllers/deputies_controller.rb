class DeputiesController < ApplicationController
  include HTTParty
  before_action :find_deputy, only: [:show, :follow]
  before_action :find_user, only: [:show, :index]
  has_scope :by_name

  def index
    @deputies = apply_scopes(Deputy.all)
  end

  def show

  end

  def follow
    user = User.find_by(id: cookies[:user])
    
    if user.present? && @deputy.present?
      user.follows.create(deputy_id: @deputy["id"])
    
      redirect_to edit_user_path(id: user.id) if user.phone.nil? 
    end
  end

  private
    def find_deputy
      @deputy = Deputy.find_by(id: params[:id])
    end

    def find_user
      @user = User.find_by(id: cookies[:user])
    end
end
