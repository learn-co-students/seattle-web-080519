class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    id = params[:id]
    name = params[:user][:name]
    ice_cream_id = params[:ice_cream_id]

    puts "===name ice_cream_id==="
    puts params
    puts id
    puts name
    puts ice_cream_id
    puts "======================="

    user = User.find(id)
    user.name = name
    user.ice_cream_id = ice_cream_id

    user.save

    redirect_to edit_user_url
  end
end
