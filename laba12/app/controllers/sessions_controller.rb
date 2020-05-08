class SessionsController < ApplicationController
    
    skip_before_action :authorized, only: [:new, :create, :welcome]

    def new
    end
  
    def passwd
    end
  
    def change_password
      @user = User.find_by(id: session[:user_id])
      return @result = 'User not found' if @user == nil
      return @result = 'Wrong old password' if !@user.authenticate(params[:old_password])
      @user.password = params[:password]
      return @result = 'OK' if @user.save
    end
  
    def create
      @user = User.find_by(username: params[:username])
  
      if @user and @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end
  
    def login
    end
  
    def welcome
    end

    def logout
      session.delete(:user_id)
      redirect_to '/welcome'
    end
end
