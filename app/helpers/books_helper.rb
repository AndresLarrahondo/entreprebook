module BooksHelper
  def form_title
    @book.new_record? ? "Publicar Book" : "Edita tu Book"
  end
end
