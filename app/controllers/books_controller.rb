class BooksController < ApplicationController
  def index
    @books = current_user.books.paginate(page: params[:page], per_page: 10)
    @books_count = current_user.books.count
  end

  def show
    @book =current_user.books.find(params[:id])
  end

  def new
    @book = current_user.books.build
  end

  def edit
    @book = current_user.books.find(params[:id])
  end

  def create
    @book = current_user.books.create(book_params)
    if @book
      redirect_to @book
    else
      render 'new'
    end 
  end

  def update
    @book = current_user.books.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end
  
  def destroy
    @book = current_user.books.find(params[:id])
    @book.destroy
    redirect_to home_path
  end

  private

    def book_params
      params.require(:book).permit(:title, :publisher, :genre, :image)
    end
end
