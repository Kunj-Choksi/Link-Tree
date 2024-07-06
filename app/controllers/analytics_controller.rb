class AnalyticsController < ApplicationController
  before_action :set_navbar_visibility
  def show
    @daily_profile_views = current_user.get_daily_profile_views
    @daily_link_clicks = current_user.get_daily_link_clicks
    @device_views = current_user.get_daily_views_by_device_type.count

    # device_views -> { "desktop" => 12, "mobile" => 47 }
    @device_views_by_type =  @device_views.map do |key, value|
      { name: "#{key}: #{value}", data: value }
    end
  end
end
