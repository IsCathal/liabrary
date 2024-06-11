require_relative '../book.rb'

describe Book do
  it 'creates a book with a title and author and status to Available' do
    dubliners = Book.new("dubliners", "James Joyce")
    expect(dubliners.title).to eq("dubliners")
    expect(dubliners.author).to eq("James Joyce")
    expect(dubliners.status).to eq("Available")
  end

  it 'sets status to Checked out when checked out' do
    dubliners = Book.new("dubliners", "James Joyce")
    dubliners.checked_out
    expect(dubliners.status).to eq("Checked Out")
  end

  it 'sets status to Available when checked in' do
    dubliners = Book.new("dubliners", "James Joyce")
    dubliners.checked_out
    dubliners.checked_in
    expect(dubliners.status).to eq("Available")

  end

end