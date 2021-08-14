class StaticPagesController < ApplicationController
  def home
    @books_count = current_user.books.count
  end

  def search
    @books = current_user.books.search(params[:search])
  end
end
