class DashboardController < ApplicationController
  def index
    @holidays = Holiday.all
  end
end
