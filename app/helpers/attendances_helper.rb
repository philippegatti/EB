module AttendancesHelper
	def event_owner
		@event=Event.find(params[:event_id])
		unless current_user.id == @event.admin_id
	  	redirect_to event_path(@event.id)
	end
	end
end
