class UserMailer < ApplicationMailer
	default from: 'no-reply@ebbypg.fr'
	
	def welcome_email(user)
	    @user = user 
	    @url  = 'http://ebbypg.fr/login' 
    	mail(to: @user.email, subject: 'Bienvenue chez nous !') 
	end
	def participation_email(attendance)
	    @user = User.find(attendance.user_id)
	    @event = Event.find(attendance.event_id)
	    @url  = 'http://ebbypg.fr/login' 
    	mail(to: @user.email, subject: 'Vous êtes inscrit à #{@event.title}!') 
	end
end
