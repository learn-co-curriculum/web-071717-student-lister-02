class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    # if @current_user
    #   @current_user
    # else
    #   @current_user = User.find_by(id: session[:current_user_id])
    # end
    @current_user ||= User.find_by(id: session[:current_user_id])
  end

  def logged_in?
    !!current_user
  end

  def is_authenticated?
    if !logged_in?
      flash[:message] = 'You must be logged in to view this content'
      redirect_to login_path
    end
  end

end
