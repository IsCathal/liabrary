require_relative "book"
require_relative "member"
require_relative "book_shelf"
require_relative "member_storage"
require_relative "checkout_system"


book_shelf = BookShelf.new
member_list = MemberStorage.new
dubliners = Book.new("Dubliners", "James Joyce")

charlie = Member.new("charlie")

charlie.set_user_book_list(dubliners.title)



p charlie.book_list





