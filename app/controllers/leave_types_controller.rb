class LeaveTypesController < ApplicationController
  before_action :set_leave_types, only: [:edit, :update, :destroy]
  def index
    @leave_types = LeaveType.all
  end

  def new 
    @leave_type = LeaveType.new
  end

  def edit 
  end

  def create 
    @leave_type = LeaveType.new(leave_params)
    if @leave_type.save 
      redirect_to leave_types_path
    else  
      render 'new'
    end
  end

  def update 
    if @leave_type.update(leave_params)
      redirect_to leave_types_path
    else  
      render 'edit'
    end
  end

  def destroy 
    @leave_type.destroy 
    redirect_to leave_types_path
  end

  private 

  def set_leave_types  
    @leave_type = LeaveType.find(params[:id])
  end

  def leave_params 
    params.require(:leave_type).permit(:name, :description)
  end
  
end