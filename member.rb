require_relative "book"


class Member 
  attr_reader :account_number, :name
  attr_accessor :book_list

  def initialize(name)
    @name = name
    @account_number = generate_account_number
    @book_list = []
  end

  def add_to_book_list(book)
    @book_list << book.title
  end

  def return_book(book)
    @book_list.delete(book.title)
  end

  private

  def generate_account_number
    rand(10_000..99_999)
  end
end
