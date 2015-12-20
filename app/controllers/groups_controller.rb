class GroupsController < ApplicationController

  def index
    @employee = Employee.new
    @employees = Employee.all
    @group = Group.new
    @groups = Group.all
    @order = Order.new
    @orders = Order.all
  end

  def new
    @employee = Employee.new
    @group = Group.new
  end

  def create
    Group.create(group_params)
    redirect_to groups_path
  end

  def edit
    @group = Group.find(params[:id])
    @order = Order.new
    @orders = Order.all
  end

 def update
    group = Group.find(params[:id])
    group.update(group_params)
    redirect_to groups_path
  end

  def show
    @group = Group.find(params[:id])
    @order = Order.new
    @orders = Order.where(id = @group.id)
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy
    redirect_to employees_path(current_employee)
  end

  private

  def group_params
    params.require(:group).permit(:guest_count, :paid_for, :employee_id)

  end

end
