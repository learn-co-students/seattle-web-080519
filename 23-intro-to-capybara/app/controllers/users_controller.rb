class UsersController < ApplicationController

    get '/login' do
        erb :login
    end

    post '/login' do
        @user = User.find_by(name: params["name"])
        if !!@user == true
            redirect :home
        else
            erb :login
        end
    end

    get '/home' do
        erb :logged_in
    end

    get '/signup' do
        erb :signup
    end

end