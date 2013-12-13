class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:user_name],
      params[:user][:password]
      )
    if user
      login_user!(user)
    else
      flash[:errors] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil
    flash[:notices] = "Logout successful!"
    redirect_to cats_url
  end

end