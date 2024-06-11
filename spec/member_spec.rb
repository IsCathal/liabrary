require_relative '../member.rb'
require_relative "../book"

describe Member do
  it 'creates a member with a name and account number and empty book list' do
    charlie = Member.new("Charlie")
    expect(charlie.name).to eq("Charlie")
    expect(charlie.account_number).to be < 100_000
    expect(charlie.book_list).to be_empty
  end

  it 'add books to book list of user' do
    charlie = Member.new("Charlie")
    dubliners = Book.new("dubliners", "James Joyce")
    charlie.add_to_book_list(dubliners)
    expect(charlie.book_list).to include("dubliners")
  end

  it 'remove a book from book list of user' do
    charlie = Member.new("Charlie")
    dubliners = Book.new("dubliners", "James Joyce")
    charlie.add_to_book_list(dubliners)
    expect(charlie.book_list).to include("dubliners")
    charlie.return_book(dubliners)
    expect(charlie.book_list).to be_empty
  end

end