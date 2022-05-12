class ProjectManagementsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]
  
  def index 
    @project_managements = ProjectManagement.all
  end

  def new 
    @project_management = ProjectManagement.new
  end

  def edit
  end

  def create 
    @project_management = ProjectManagement.new(project_params)
    if @project_management.save 
      redirect_to project_managements_path
    else  
      render 'new'
    end
  end

  def update 
    if @project_management.update(project_params)
      redirect_to project_managements_path
    else  
      render 'edit'
    end
  end
  
  def destroy 
    @project_management.delete 
    redirect_to project_managements_path
  end

  private 

  def set_project
    @project_management = ProjectManagement.find(params[:id])
  end

  def project_params
    params.require(:project_management).permit(:project_name, :client, :manager_id, :description, :datetime, :shift_info, :project_type)
  end
end