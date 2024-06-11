require_relative "member"
require_relative "book_shelf"

class MemberStorage < BookShelf

	def display_members
		puts "Library members:"
		@shelf.each do |member| 
			puts "#{member.name} (ID: #{member.account_number})"
		end
	end
end
