class Person

	#ATTR's
	#attr_reader :first_name, :last_name, :occupation
	#attr_writer :first_name, :last_name, :occupation
	attr_accessor :first_name, :last_name, :occupation
	#
	def initialize(first_name,last_name,occupation)
		@first_name = first_name
		@last_name = last_name
		@occupation = occupation
	end

	def firstname #Getter
		@first_name
	end

	def firstname=(new_name) #Setter
		@first_name = new_name
	end

	def list_attributes 
		puts @first_name
		puts @last_name
		puts @occupation
	end

end 

good_guy = Person.new("Jim", "Gordon", "detective")

puts good_guy
puts good_guy.first_name
puts good_guy.last_name

#good_guy.firstname = "James"
#puts good_guy.firstname

#good_guy.list_attributes