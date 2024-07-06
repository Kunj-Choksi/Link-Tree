class AnalyticsController < ApplicationController
  before_action :set_navbar_visibility
  def show
    @daily_profile_views = current_user.get_daily_profile_views
    @daily_link_clicks = current_user.get_daily_link_clicks
  end
end
