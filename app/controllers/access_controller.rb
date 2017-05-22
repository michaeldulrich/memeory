class AccessController < ApplicationController

  def login
    # login form /views/access/login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      # could use an else to put a message into flash for "please input username and password."
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(users_path)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = 'Logged out.'
    redirect_to(access_login_path)
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
    end
  end

  # @current_user ||= User.find(session[:user_id])

end
