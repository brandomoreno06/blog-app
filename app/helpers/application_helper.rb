module ApplicationHelper
  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end

  def user_logged_in?
    !!current_user
  end
end
