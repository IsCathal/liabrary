require_relative "member"

# should refactor with inherentice and super keyword
class MemberStorage
	attr_reader :memberStorage

	def initialize
		@memberStorage = []
	end

	def add_member(member)
		@memberStorage << member
	end


	def display_members
		puts "Library members:"
		@memberStorage.each do |member| 
			puts "#{member.name} (ID: #{member.account_number})"
		end
	end


end