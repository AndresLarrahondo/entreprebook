class CommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    book.comments.create(comments_params)

    redirect_to book
  end

  private
   def comments_params
     params.require(:comment).permit(:body).merge(user: current_user)
   end
end
