class GroupsController < ApplicationController

  def index
    @group = Group.new
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    Group.create(group_params)
    redirect_to groups_path
  end

  def edit
    @group = Group.find(params[:id])
  end

 def update
    group = Group.find(params[:id])
    group.update(group_params)
    redirect_to groups_path
  end

  def destroy
    group = Group.find(params[:id])
    group.delete
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:guest_count, :paid_for, :employee_id)

  end

end
