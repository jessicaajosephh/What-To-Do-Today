class UsersController < ApplicationController

    get '/users/signup' do 
        erb :'users/signup'
    end

    post '/users/signup' do

    end

    get '/users/login' do
        erb :'users/login'
    end

    pots '/users/login' do

    end


end