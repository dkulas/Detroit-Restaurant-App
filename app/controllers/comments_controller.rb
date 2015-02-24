class CommentsController < ApplicationController

	def index
		@q = Comment.ransack(params[:q])
		@comments_all = @q.result(distinct: true)
		@comments = Comment.new
		# @comments_all = Comment.all
	end

	def show
		
	end

	def new
		@comment = Comment.new
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def create
    @comment = Comment.new(comment_params)
    # @user = current_user
    # @comment.user_name = @user.name
    if @comment.save
      redirect_to comments_path
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
		params.require(:comment).permit(:title, :body, :author)
	end

end
