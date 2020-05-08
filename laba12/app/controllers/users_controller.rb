class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def new
      @user = User.new
    end
  
    def create
      @user = User.create(params.require(:user).permit(:username, :password))
      session[:user_id] = @user.id
      redirect_to '/'
      p list
    end
  
    def list
      @users = User.all.to_json :except => ['password_digest']
    end
end
