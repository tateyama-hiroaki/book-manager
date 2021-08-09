class StaticPagesController < ApplicationController
  def home
    @books_count = Book.count
  end

  def search
  end
end
