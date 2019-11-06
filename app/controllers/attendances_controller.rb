class AttendancesController < ApplicationController
	include AttendancesHelper
	before_action :event_owner
	
	def index
		@event=Event.find(params[:event_id])
		@attendees=@event.users
	end
end
