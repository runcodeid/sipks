class DashboardController < ApplicationController
  def user
    @years = Year.all
  end

  def admin
    @cities = City.all
  end
end
