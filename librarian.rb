require_relative "book"
require_relative "member"

# place somewhehere btter
book_case = {}
member_list = {}
puts "Libary Management System 
1. Add Book 
2. Add Member 
3. List Books 
4. List Meme=bers 
5. Check Out Book
6. Return Book
7. Exit
Choose an option: "
    
user_input_number = gets.to_i
  
  while user_input_number != 7
    case user_input_number
    when 1
      puts "Enter Book:"
      title = gets
      puts "Enter book author:"
      author = gets
      title = Book.new(title, author)
      book_case.store(title.title, title.author)
      puts "Book added successfully!"
      p title
    when 2
      puts "Enter member name:"
      member_name = gets
      member_name = Member.new(member_name)
      member_list.store(member_name.member_name)
      puts "Member added successfully!" 
    when 3
      puts "Books in the library:"
      book_case.each do |book|
        puts "#{book.title} by #{book.author}"
      end
    when 4 
      puts "Library members: "

      book_case.each do |book|
        puts "#{book[0]} by #{book[1]}"
      end
    when 5 
      puts "Enter memebr ID:"

      puts "Enter book title:"
    when 6
      puts "Enter memebr ID:"

      puts "Enter book title:"

      puts " Book returned successfully!"
    else
        puts  "Error, Please enter Number between 1 and 5"
        puts
    end
    puts "Libary Management System 
    1. Add Book 
    2. Add Member 
    3. List Books 
    4. List Meme=bers 
    5. Check Out Book
    6. Return Book
    7. Exit"
    user_input_number = gets.to_i
    end
    
puts "Goodbye!"