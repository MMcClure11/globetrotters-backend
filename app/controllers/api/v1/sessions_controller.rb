class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:session][:credentials][:username])
  
    if @user && @user.authenticate(params[:session][:credentials][:password])
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :ok
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

 

end
