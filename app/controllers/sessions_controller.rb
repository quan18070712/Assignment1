class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])  # user # && user.authentication(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      # remember user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end 
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
