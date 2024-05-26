class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @money = author
    @account_number = generate_account_number
  end

  private

  def generate_account_number
    rand(10_000..99_999)
  end
end