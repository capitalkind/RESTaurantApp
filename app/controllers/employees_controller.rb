class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
    @party = Party.new
    @parties = Party.all
    @order = Order.new
    @orders = Order.all
  end

  def index
    # @current_employee = current_employee
    @employee = Employee.new
    @employees = Employee.all
    @party = Party.new
    @parties = Party.all
    @order = Order.new
    @orders = Order.all
    @notup = Order.where(:order_up => 1)
    # @employeeorders = current_employee.orders.where(order_up: 0)
    # @employeegroups = current_employee.groups.where(paid_for: 0)
  end

  def create
    Employee.create(employee_params)
    redirect_to root_path
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @employee = Employee.find(params[:id])
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
    params.require(:employee).permit(:username, :password, :permission, :currency, :party_id, :order_id)
  end


end
