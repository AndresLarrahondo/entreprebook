class BooksController < ApplicationController
  before_action :private_access, except: [:index, :show]
  def index
   @books = Book.all
  end

  def new
   @book = Book.new
  end

  def create
   @book = Book.new(books_params)
   @book.user = current_user
    if @book.save

        redirect_to books_path, notice: "Haz registrado tu Book con éxito"
    else
      render :new
    end
  end

  def edit
   @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
   @book = Book.find(params[:id])
    if @book.update(books_params)

      redirect_to books_path, notice: "Haz editado tu Book con éxito"
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
      redirect_to books_path, notice: "Haz eliminado tu Book"
  end

  private
  def books_params
    params.require(:book).permit(:name, :url, :description)
  end
end
