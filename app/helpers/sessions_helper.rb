module SessionsHelper

  # Logs in the user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Log out current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Returns current logged-in user, if any
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns TRUE if user logged in
  def logged_in?
    !current_user.nil?
  end

end
