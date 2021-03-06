class SessionsController < ApplicationController
    
    # responsible for creating a new session/logging in user
    def home
    end
       
    def new
        @user = User.new
    end
    
    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            # logging in
            session[:user_id] = user.id
            redirect_to user_path(user)  # show page
        else
            flash[:message] = "Incorrect login info, please try again"
            redirect_to "/login"
        end
    end
    
    def destroy
        if !session[:user_id].nil?
            session.delete :user_id
          else
          redirect_to '/'
          end        
    end
end
