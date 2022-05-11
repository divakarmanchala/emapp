class DesignationsController < ApplicationController
  before_action :set_designation, only: [:edit, :update, :destroy]

  def index
    @designations = Designation.all 
  end

  def new
    @designation = Designation.new 
  end

  def edit
  end

  def create 
    @designation = Designation.new(designation_params)
    if @designation.save 
      redirect_to designations_path
    else  
      render 'new'
    end
  end

  def update
    if @designation.update(designation_params)
      redirect_to designations_path 
    else  
      redner 'edit'
    end
  end

  def destroy
    @designation.destroy 
    redirect_to designations_path
  end
  
  private 

  def designation_params 
    params.require(:designation).permit(:name, :description)
  end
  
  def set_designation
    @designation = Designation.find(params[:id])
  end
end
