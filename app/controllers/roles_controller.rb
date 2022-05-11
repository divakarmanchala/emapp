class RolesController < ApplicationController
  before_action :set_roletypes, only: [:edit, :update, :destroy]
  def index
    @roles = Role.all
  end

  def new 
    @role = Role.new
  end

  def edit 
  end

  def create 
    @role = Role.new(role_params)
    if @role.save 
      redirect_to roles_path
    else  
      render 'new'
    end
  end

  def update 
    if @role.update(role_params)
      redirect_to roles_path
    else  
      render 'edit'
    end
  end

  def destroy 
    @role.destroy 
    redirect_to roles_path
  end

  private 

  def set_roletypes  
    @role = Role.find(params[:id])
  end

  def role_params 
    params.require(:role).permit(:name, :description)
  end
end
