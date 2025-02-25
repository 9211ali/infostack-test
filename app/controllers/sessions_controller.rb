class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.valid_password(params[:password])
      sign_in(user)
      redirect_to root_path, notice: "Logged in successfully!"
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path, notice: "Logged out successfully!"
  end
end
