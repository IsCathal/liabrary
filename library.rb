require_relative "book"
require_relative "member"
require_relative "book_shelf"
require_relative "member_storage"


class Libary

	def checkout_book(id, title, book_shelf, member_list)
	
	current_member  = nil

	member_list.memberStorage.each do |member|

		if member.account_number == id
			current_member = member
		end
	end

	p current_member

	#bit like java would throw an error without
	if current_member.nil?
		puts "No member with account number #{id} found."
      return
    end


	book_shelf.shelf.each do |book|
		if book.title == title && book.status == "Available"
			puts "title is #{book.title} and its #{book.status}" 
			current_member.set_user_book_list(book)
			book.checked_out
			puts "title is #{book.title} and its #{book.status}" 


		else
			puts "Book is unavailable "
		end
	end

 
	p member_list
	#Access memberstorage by id
	#Access bookshelf by title
	# tie together
	#return info
	end

end

libary = Libary.new
book_shelf = BookShelf.new
member_list = MemberStorage.new

dubliners = Book.new("Dubliners", "James Joyce")
third_policeman = Book.new("The Third PoliceMan", "Flann O'Brien")

charlie = Member.new("charlie")
tom = Member.new("tom")

charlie.set_user_book_list(dubliners)
p "book list is #{charlie.book_list} "
member_list.add_member(charlie)
member_list.add_member(tom)

book_shelf.add_to_book_shelf(dubliners)

book_shelf.add_to_book_shelf(third_policeman)

libary.checkout_book(charlie, "Dubliners", book_shelf, member_list)




