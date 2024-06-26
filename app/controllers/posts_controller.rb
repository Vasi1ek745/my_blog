class PostsController < ApplicationController

	def index
		@posts = Post.all

	end

	def show
		
	end

	def new
	  @post = Post.new

	end
	
	def create
	  @post = Post.new(post_params)

	    if @post.save
	      redirect_to posts_path
	    else
	      render :new, status: :unprocessable_entity
	    end

	end

	def edit

	end

	def update

	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to root_path
		end
	end


  private
    def post_params
      params.require(:post).permit(:title, :text)
    end


end
