class CommentsController < ApplicationController
	
	def index
	end

	def show
	end

	def new
	end

	def edit
	end

	def update
	end

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to product_path(@product)
	end

	def destroy
	end



	private
		def comment_params
			params.require(:comment).permit(:user_id, :body, :rating)
		end
end
