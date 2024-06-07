class DashboardController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_user, only: [:show]
  before_action :set_navbar_visibility
  def index
  end

  def appearance
    
  end

  def show
    @should_show_navbar = false
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
end
