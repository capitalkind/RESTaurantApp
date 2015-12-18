class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def index
    @employee = Employee.new
    @employees = Employee.all
  end

  def create
    Employee.create(employee_params)
    redirect_to root_path
  end

  private

  def employee_params
    params.require(:employee).permit(:username, :password, :permission)
  end


end
