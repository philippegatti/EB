module UsersHelper
	def right_user
  	unless current_user == User.find(params[:id])
	  redirect_to new_user_session_path
	end
  	end

end
