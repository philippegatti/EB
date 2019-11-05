class UsersController < ApplicationController
  def show
  	@user=User.find(params[:id])
  	@events=Event.where(admin_id:@user.id)
  end
end
