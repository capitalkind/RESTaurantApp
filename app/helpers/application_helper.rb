module ApplicationHelper

  def current_employee
    if session[:employee_id]
      @current_employee = @current_employee || Employee.find(session[:employee_id])
    end
  end

  def authenticate!
    redirect_to root_path unless current_employee
  end

end
