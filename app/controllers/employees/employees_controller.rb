before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def show 
  end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def edit 
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save 
      redirect_to employees_path
    else  
      render 'new'
    end 
  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path
    else  
      redner 'edit'
    end
  end

  def destroy
    @employee.delete 
    redirect_to employees_path
  end

  private 
  
  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params 
    params.permit(:first_name, :last_name, :email, :password, :role_id, :employee_id)
  end