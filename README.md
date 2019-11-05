# README
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     						       EB by PG
     						 "Events for Everybody"
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Made for Ruby 2.5.1 Rails 5.2.3

    PRESENTATION
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

EB gathers the best events in your city and enables you to propose new activities to the community.
This the v1, you'll be able to see and create events. You'll soon be able to edit, comment and like the events.


	SET-UP
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
You can access to the app online : https://ebbypg.herokuapp.com/

else you can download it locally :

$ git clone https://github.com/philippegatti/EB

Go to the folder and run $ bundle install

Active the migrations and run the seed :

$ rails db:create
$ rails db:migrate
$ rails db:seed

	RUNNING
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Launch your server :

$ rails server

(you can also use $ shotgun -p 3000 - but it appears to be slower)


Open a browser and go to

    http://localhost:3000/
   

Enjoy!


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------