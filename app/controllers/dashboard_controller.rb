class DashboardController < ApplicationController
  def user
    @years = Year.all
  end

  def admin
  end
end
