class BooksController < ApplicationController
  def index
   @books = Book.all
  end

  def new
   @book = Book.new
  end

  def create

  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def books_params
    params.require(:book).permit(:name, :url, :description)
  end
end
