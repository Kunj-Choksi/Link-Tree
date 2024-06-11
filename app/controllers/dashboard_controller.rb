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
    redirect_to root_path if @user.nil?
  end

  private

  def set_user
    begin 
      @user = User.friendly.find(params[:id])
    rescue StandardError
      @user = nil
    end
  end
end
