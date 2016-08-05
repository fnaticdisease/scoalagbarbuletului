class WelcomeController < ApplicationController
	def index
		@post =Post.all.order("created_at desc").take(4)
		@last = @post.take(1)
	end
end
