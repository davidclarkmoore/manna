class PostsController < ApplicationController

	def index
			@posts = Post.all
	end

	def new
		@post = Post.new

	end

	def show

		@post = Post.find params[:id]



	end

	def create
		
		post = current_user.posts.build(params[:post])

		post.save

 		redirect_to :posts

	end

	


	def edit

		@post = Post.find params[:id]
		
	end 

	def update


		post = Post.find params[:id]

		if post.update_attributes params[:post]
		redirect_to posts_path
		else
		redirect_to :posts
		end
	end

	def destroy
		
		post = Post.find params[:id]
		post.destroy
	 	redirect_to :posts

	end

	# private
	# 	def post_params
 #     		 params.required(:post).permit(:format, :length, :price, :text, :title, :video, :type)
 #    end
	

end
