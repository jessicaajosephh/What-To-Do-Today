class ListsController < ApplicationController

    get '/lists/new' do 
        erb :'/lists/new'
    end

    post '/lists/new' do

    end

    get '/lists/:id/edit' do
        erb :'/lists/edit'
    end

    patch '/lists/:id' do

    end

    get '/lists/:id/delete' do
        erb :'/lists/delete'
    end

    delete '/lists/:id' do

    end

end