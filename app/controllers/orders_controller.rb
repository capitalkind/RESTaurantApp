class OrdersController < ApplicationController

  def index
    @order = Order.new
    @orders = Order.all
    @group = Group.new
    @groups = Group.all
  end

  def new
    @order = Order.new
    @orders = Order.all
    @group = Group.new
    @groups = Group.all
  end

  def create
    new_order = Order.create(order_params)
    redirect_to employees_path
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to employees_path
  end

    def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to employees_path(current_employee)
  end

  private

  def order_params
    params.require(:order).permit(:party_id, :food_id, :order_up)

  end

end
