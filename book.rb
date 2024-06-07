class Book
  attr_accessor :title, :author, :status

  def initialize(title, author)
    @title = title
    @author = author
    @book_id = generate_book_id
    @status = "Available"
  end

  def checked_out
    @status = "Checked Out"
  end

  def checked_in
    @status = "Available"
  end

  private

  def generate_book_id
    rand(10_000..99_999)
  end

end