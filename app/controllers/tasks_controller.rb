class TasksController < ApplicationController

    get '/tasks' do
        erb :'/tasks/show'
    end

    get '/tasks/new' do
        erb :'/tasks/new'
    end

    post '/tasks/new' do

    end

    get '/tasks/new/:id' do 
        erb :'/tasks/add_to_list'
    end

    post '/tasks/new/:id' do

    end

    get 'tasks/:id/edit' do
        erb :'/tasks/edit'
    end

    patch '/tasks/:id' do

    end

    get '/tasks/:id/delete' do
        erb :'/tasks/delete'
    end

    delete '/tasks/:id' do

    end


end