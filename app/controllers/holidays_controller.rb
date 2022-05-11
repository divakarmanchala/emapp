class HolidaysController < ApplicationController
  before_action :set_holiday, only: [:edit, :update, :destroy]

  def index
    @holidays = Holiday.all
  end

  def new
    @holiday = Holiday.new
  end

  def edit 
  end

  def create 
    @holiday = Holiday.new(holidays_params)
    if @holiday.save 
      redirect_to holidays_path
    else  
      render 'new'
    end
  end

  def update 
    if @holiday.update(holidays_params)
      redirect_to holidays_path
    else  
      render 'edit'
    end
  end

  def destroy 
    @holiday.destroy 
    redirect_to holidays_path
  end

  private 

  def holidays_params 
    params.require(:holiday).permit(:name, :date, :year)
  end

  def set_holiday 
    @holiday = Holiday.find(params[:id])
  end
end
