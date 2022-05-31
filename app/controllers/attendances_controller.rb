class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:edit, :destroy, :update]
  before_action :check_login_logout, only: [:new, :edit, :index]
  
  def index 
    @last_attendaces = current_employee.attendances.last(5)
    @last_attendance = current_employee.attendances.last
  end

  def new 
    @attendance = current_employee.attendances.new(login:DateTime.now)
  end

  
  def edit
    @attendance.logout = DateTime.now
  end

  def create 
    @attendance = current_employee.attendances.new(attendanceparams)
    if @attendance.save 
      #render plain: @designations.inspect
      redirect_to attendances_path
    else  
      render 'new'
    end
  end

  def update 
    if @attendance.update(attendanceparams)
      redirect_to  attendances_path
    else  
      render 'edit'
    end
  end
  
  def destroy 
    @attendance.destroy 
    redirect_to attendances_path
  end

  private

  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  def attendanceparams
    params.require(:attendance).permit(:login, :logout,:reason,:employee_id)
  end

  def check_login_logout
    @set_form_and_button = current_employee.attendances.last.logout == nil
  end

end
