class PostsController < ApplicationController
	before_filter :authenticate, :except => [ :index, :show ] 
	before_action :find_post, only: [:show,:edit,:update,:destroy]
	
	def index
		@posts =Post.all
	end

	def new
		@post= Post.new
	end

	def create
		@post =Post.new post_params

		if @post.save
			redirect_to @post,notice:"Good job!Your article was saved"
		else
			render "new",notice:"Oh no!I was unable so save the post"
		end
	end

	def show
	end	

	def edit
	end

	def update
		if @post.update post_params
			redirect_to @post, notice:"Your article was successfully saved!"
		else
			render "edit"
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	

	private
	def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
    end
  	end

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
		@post =Post.find(params[:id])
	end
end
