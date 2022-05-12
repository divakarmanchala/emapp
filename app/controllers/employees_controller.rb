class EmployeesController < ApplicationController
  before_action :set_user, only: [:edit, :destroy, :update]
  def index 
    @employees = Employee.all 
  end

  def show 
    redirect_to employees_path
  end

  def new
    @employee = Employee.new
  end

  def edit
  end

  def create 
    @employee = Employee.new(user_params)
    if @employee.save 
      redirect_to employees_path
    else  
      render 'new'
    end
  end

  def update
    if @employee.update(user_params)
      redirect_to employees_path
    else  
      render 'edit'
    end
  end
  
  def destroy 
    @employee.delete 
    redirect_to employees_path
  end

  private 

  def set_user
    @employee = Employee.find(params[:id])
  end

  def user_params
    params.require(:employee).permit(:first_name, :last_name, :email, :password, :role_id, :employee_id)
  end
end