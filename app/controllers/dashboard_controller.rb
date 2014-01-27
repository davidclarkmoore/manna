class DashboardController < ApplicationController

	def index
		
		@posts = Post.all
		@users = User.all

		@myposts = Post.where(user_id: current_user)
	end

end