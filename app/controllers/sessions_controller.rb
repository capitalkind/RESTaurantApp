class SessionsController < ApplicationController

def create
    employee = Employee.find_by_username(params[:username])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to employees_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to root_path
  end


end
