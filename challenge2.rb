###Program showing the concept of Inheritance

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

end 

class Superhero < Person

	def secretIdentity
		puts "The secret identity of #{@occupation} is #{@first_name} #{@last_name}"
	end

end

batman = Superhero.new("Bruce","Wayne", "Batman")

puts batman.first_name
puts batman.last_name

batman.secretIdentity