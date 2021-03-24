class UsersController < ApplicationController

    get '/users/signup' do 
        erb :'users/signup'
    end

    post '/users/signup' do

    end

    get '/users/login' do
        erb :'users/login'
    end

    post '/users/login' do

    end


end