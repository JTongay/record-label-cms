module SessionsHelper
  def current_member
      @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end

  def logged_in?
    current_member != nil
  end
end
