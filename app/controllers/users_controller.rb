class UsersController < ApplicationController

    get '/users/signup' do 
        erb :'/users/signup'
    end

    post '/users/signup' do
        @user = User.create(username: params[:username], password: params[:password])
    end

    get '/users/login' do
        #erb :'users/login'
    end

    post '/users/login' do
        #@user = User.find_by(:username => params[:username])
        #if @user && @user.authenticate(params[:password])
        #    session[:user_id] = @user.id
        #    redirect to '/tasks'
        #else
        #    redirect to '/login'
        #end
    end

    get '/users/logout' do
        #if session[:user_id] != nil 
        #    session.clear
        #    redirect to '/login'
        #else
        #    redirect to '/'
        #end
    end


end