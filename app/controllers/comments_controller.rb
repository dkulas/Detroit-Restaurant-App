class CommentsController < ApplicationController
	before_action :authenticate_user!

	def index
		@comments = current_user.comments
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def create
		@comment = current_user.comments.new(comment_params)
		if @comment.save
			redirect_to @comment
		else
			render 'new'
		end
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to @comment
		else
			render 'edit'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to comments_path
	end

	private
	def comment_params
		params.require(:user).permit(:title, :body, :author)
	end

end
