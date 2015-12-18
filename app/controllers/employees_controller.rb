class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def index
    # @current_employee = current_employee
    @employee = Employee.new
    @employees = Employee.all
    @group = Group.new
    @groups = Group.all
  end

  def create
    Employee.create(employee_params)
    redirect_to root_path
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)
    redirect_to employees_path
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.delete
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:username, :password, :permission)
  end


end
