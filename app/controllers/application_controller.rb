class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :ensure_logged_in

  helper_method :current_student

  private

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def ensure_logged_in
    if current_student.nil?
      redirect_to login_path
    end
  end
end
