require_relative "book"
class BookShelf
	attr_reader :shelf

	def initialize
		@shelf = []
	end

	def add_to_book_shelf(book)
		@shelf << book
	end

	def display_shelf
		puts "Books in the library:"
		@shelf.each do |book| 
			puts "#{book.title} by #{book.author} - #{book.status}"
		end

	end


end
