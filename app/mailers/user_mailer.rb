class UserMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'
	
	def welcome_email(user)
	    @user = user 
	    @url  = 'http://monsite.fr/login' 
    	mail(to: @user.email, subject: 'Bienvenue chez nous !') 
	end
	def participation_email(attendance)
	    @user = User.find(attendance.user_id)
	    @event = Event.find(attendance.event_id)
	    @url  = 'http://monsite.fr/login' 
    	mail(to: @user.email, subject: 'Vous êtes inscrit à #{@event.title}!') 
	end
end
