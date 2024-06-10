require_relative '../book.rb'

describe Book do
  it 'creates a book with a title and author and status to Available' do
    dubliners = Book.new("dubliners", "James Joyce")
    expect(dubliners.title).to eq("dubliners")
    expect(dubliners.author).to eq("James Joyce")
    expect(dubliners.status).to eq("Available")
  end
end