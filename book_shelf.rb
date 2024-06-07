class BookShelf
	attr_reader :shelf

	def initialize
		@shelf = []
	end

	def add_to_book_shelf(book)
		@shelf << book
	end

	def checked_out(book)
		@shelf -= book
	end

	def check_if_book_available(book)
		

	end


end
