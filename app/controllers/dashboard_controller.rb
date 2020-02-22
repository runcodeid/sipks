class DashboardController < ApplicationController
  def user
    @years = Year.all
  end

  def admin
    @cities = City.all
    if policy(:dashboard).admin?
    else
      redirect_to dashboard_user_path
    end
  end
end
