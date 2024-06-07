class ApplicationController < ActionController::Base
  def set_navbar_visibility
    @should_show_navbar = true
  end
end
