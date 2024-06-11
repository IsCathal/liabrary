require_relative '../book.rb'
require_relative '../book_shelf.rb'

describe BookShelf do
  it 'creates a bookshelf with an empty shelf' do
    book_shelf = BookShelf.new()
    expect(book_shelf.shelf).to be_empty
  end

  it 'add book to book shelf' do
    book_shelf = BookShelf.new()
    dubliners = Book.new("dubliners", "James Joyce")
    book_shelf.add_to_storage(dubliners)
    expect(book_shelf.shelf).to include(dubliners)
  end
end