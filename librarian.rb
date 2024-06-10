require_relative "book"
require_relative "member"
require_relative "book_shelf"
require_relative "member_storage"
require_relative "library"

book_shelf = BookShelf.new
member_list = MemberStorage.new
library = Libary.new

puts "Libary Management System 
1. Add Book 
2. Add Member 
3. List Books 
4. List Memebers 
5. Check Out Book
6. Return Book
7. Exit
Choose an option: "
    
user_input_number = gets.to_i
  
  while user_input_number != 7
    case user_input_number
    when 1
      puts "Enter Book:"
      title = gets.chomp
      puts "Enter book author:"
      author = gets.chomp
      book_shelf.add_to_book_shelf(Book.new(title, author))
      puts "Book added successfully!"
    when 2
      puts "Enter member name:"
      member_name = gets.chomp
      member_list.add_member(Member.new(member_name))
      puts "Member added successfully!" 
    when 3
      book_shelf.display_shelf
    when 4 
      member_list.display_members
    when 5 
      puts "Enter memebr ID:"
      id = gets.to_i
      puts "Enter book title:"
      title = gets.chomp
      library.checkout_book(id, title, book_shelf, member_list)
    when 6
      puts "Enter memebr ID:"
      id = gets.to_i
      puts "Enter book title:"
      title = gets.chomp
      puts " Book returned successfully!"
      library.checkin_book(id, title, book_shelf, member_list)
    else
        puts  "Error, Please enter Number between 1 and 7"
        puts
    end
    puts "Libary Management System 
    1. Add Book 
    2. Add Member 
    3. List Books 
    4. List Memebers 
    5. Check Out Book
    6. Return Book
    7. Exit"
    user_input_number = gets.to_i
    end
    
puts "Goodbye!"