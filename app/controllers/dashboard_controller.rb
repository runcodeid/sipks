class DashboardController < ApplicationController
  def user
    @years = Year.all

    if policy(:dashboard).user?
    else
      redirect_to dashboard_admin_path
    end
  end

  def admin
    @cities = City.all

    if policy(:dashboard).superadmin?
    else
      redirect_to dashboard_user_path
    end
  end
end
