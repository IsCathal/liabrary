require_relative "book"
class BookShelf
	attr_reader :shelf

	def initialize
		@shelf = []
	end

	def add_to_storage(book)
		@shelf << book
	end

	def display_shelf
		puts "Books in the library:"
		@shelf.each do |book| 
			puts "#{book.title} by #{book.author} - #{book.status}"
		end

	end

end
