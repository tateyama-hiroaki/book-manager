class StaticPagesController < ApplicationController
  def home
    @books_count = Book.count
  end

  def search
    @books = Book.search(params[:search])
  end
end
