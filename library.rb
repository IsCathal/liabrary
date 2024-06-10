require_relative "book"
require_relative "member"
require_relative "book_shelf"
require_relative "member_storage"

class Libary

	def checkout_book(id, title, book_shelf, member_list)

		current_member = get_current_member(id, member_list)

		book_shelf.shelf.each do |book|
			if book.title == title && book.status == "Available"
			current_member.add_to_book_list(book)
			book.checked_out
			else
			puts "Book is unavailable "
			end
		end

	end

	def checkin_book(id, title, book_shelf, member_list)

		current_member  = get_current_member(id, member_list)

			book_shelf.shelf.each do |book|
				if book.title == title && book.status == "Checked Out"
					current_member.return_book(book)
					book.checked_in
					puts " Book returned successfully!"
				else
					puts "Book is unavailable, or you havent got this book to return "
					return
				end
			end

		end

	def get_current_member(id, member_list)

		current_member  = nil

		member_list.memberStorage.each do |member|
			if member.account_number == id
				current_member = member
			end
		end

		if current_member.nil?
			puts "No member with account number #{id} found."
		return
		end

		current_member
		end

end




