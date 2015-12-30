class PartiesController < ApplicationController

  def index
    @employee = Employee.new
    @employees = Employee.all
    @party = Party.new
    @parties = Party.all
    @order = Order.new
    @orders = Order.all
  end

  def new
    @employee = Employee.new
    @party = Party.new
  end

  def create
    Party.create(group_params)
    redirect_to parties_path
  end

  def edit
    @party = Party.find(params[:id])
    @order = Order.new
    @orders = Order.all
  end

 def update
    party = Party.find(params[:id])
    @employee = Employee.find(params[:id])
    party.update(group_params)
    redirect_to parties_path
  end

  def show
    @party = Party.find(params[:id])
    # @order = Order.new
    # @orders = Order.where(id = @party.id)
  end

  def destroy
    party = Party.find(params[:id])
    party.destroy
    redirect_to employees_path(current_employee)
  end

  private

  def group_params
    params.require(:party).permit(:guest_count, :paid_for, :employee_id, :order_id)

  end

end
