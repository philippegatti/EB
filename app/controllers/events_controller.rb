class EventsController < ApplicationController
	include ApplicationHelper
	before_action :authenticate_user, except: [:index, :show]
	def index
		@events = Event.all
	end
	def show
		@event= Event.find(params[:id])
	end
	def new
	end
	def create
		@event=Event.create(title: params[:title],price:params[:price],description:params[:description],admin_id:current_user.id,location: params[:location],start_date:params[:start_date],duration:params[:duration])
		redirect_to event_path(@event.id) 
	end
	def edit
		@event=Event.update(title: params[:title],price:params[:price],description:params[:description],admin_id:current_user.id,location: params[:location],start_date:params[:start_date],duration:params[:duration])
		redirect_to event_path(@event.id)
	end
end
