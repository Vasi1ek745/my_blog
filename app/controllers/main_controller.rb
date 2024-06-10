class MainController < ApplicationController

	def show
		@posts = Post.all

	end


end
