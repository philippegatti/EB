class UsersController < ApplicationController
	include UsersHelper
before_action :authenticate_user
before_action :right_user


  def show
  	@user=User.find(params[:id])
  	@events=Event.where(admin_id:@user.id)
  end
end
