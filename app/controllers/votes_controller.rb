class VotesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    book.votes.create(user: current_user)
    redirect_to root_path
  end

  def destroy
    book = Book.find(params[:book_id])
    book.votes.where(user: current_user).take.try(:destroy)
    redirect_to root_path
  end
end
