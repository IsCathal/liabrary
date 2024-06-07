require_relative "book"
require_relative "member"
require_relative "book_shelf"

book_shelf = BookShelf.new


title = Book.new("titletest", "author")

title2 = Book.new("title", "author")

p title 

title.checked_out
p title


title.checked_in

p title

book_shelf.add_to_book_shelf(title)

book_shelf.add_to_book_shelf(title2)
book_shelf.add_to_book_shelf(title2)


puts " My Book Shelf"
p book_shelf.shelf

book_shelf.checked_out(title2)
book_shelf.display_shelf
puts " My Book Shelf"
p book_shelf.shelf

book_shelf.display_shelf