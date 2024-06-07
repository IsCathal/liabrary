require_relative "book"
require_relative "member"


title = Book.new("title", "author")

p title 

title.checked_out
p title


title.checked_in

p title
