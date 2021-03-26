class UsersController < ApplicationController

    get '/users/signup' do 
        if logged_in?
            redirect to '/tasks'
        else
            erb :'users/signup'
        end
    end

    post '/users/signup' do
        if params[:username] == "" || params[:password] == ""
            redirect to '/users/signup'
        else
            @user = User.create(:username => params[:username], :password => params[:password])
            session[:user_id] = @user.id
            redirect to '/tasks'
        end
    end

    get '/users/login' do
        if logged_in?
            redirect to '/tasks'
        else
            erb :'users/login'
        end
    end

    post '/users/login' do
        @user = User.find_by(:username => params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect to '/tasks'
        else
            redirect to '/users/login'
        end
    end

    get '/users/logout' do
        if session[:user_id] != nil 
            session.clear
            redirect to '/users/login'
        else
            redirect to '/'
        end
    end


end