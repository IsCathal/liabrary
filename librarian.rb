require_relative "book"
require_relative "member"

accounts = {}
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
      accounts.store(title.title, title.author)
      puts "Book added successfully!"
      p title
    when 2
      puts "Enter your account number:"
      user_input_account_number = gets.to_i
      puts "Enter the amount to deposit" 
      deposit = gets.to_i
      if accounts.include?(user_input_account_number)
        accounts[user_input_account_number] += deposit
      end
       puts
    when 3
      puts "Enter your account number:"
      user_input_account_number = gets.to_i
      puts "Enter the amount to withdraw" 
      deposit = gets.to_i
      if accounts.include?(user_input_account_number)
        accounts[user_input_account_number] -= deposit
        puts "#{deposit} has been withdrawn into your account"
        puts
      end
    when 4 
      puts "Enter your account number:"
      user_input_account_number = gets.to_i
      if accounts.include?(user_input_account_number)
        puts "Your current balance is #{accounts[user_input_account_number]}"
        puts
      end
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
    
puts "Thank you for using the Simple Banking System. Goodbye!"