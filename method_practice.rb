# def add_it_up(num1, num2)
# 	sum = num1 + num2
# end

# def two_plus_two
# 	sum = 2 + 2
# 	num = 5 + 9
# 	return sum
# end	

##we can use variables in our arguments when calling our methods
# time = 4
# space = 10

# puts add_it_up(time, space)	

# # puts two_plus_two 

#------------------------------------------------------#

# # Create a method for converting weight from pounds to kilos.

##We create a method and bring in *weight* as an argument
# def pounds_to_kilos(weight)
# 		weight * 0.453
# end	


# puts "What is your weight in pounds? "
# user_weight = gets.chomp.to_f

##We send in the input stored in the variable *user_weight* and send it as an argument when we call "pounds_to_kilo" method.  We interpolate the value returned into our string.

# puts "Your weight of #{user_weight} pounds in Kilos is #{pounds_to_kilos(user_weight)}."

# #------------------------------------------------------#
# # Create a method that takes a String argument and outputs the String in reverse.
# # (But you can't use .reverse!)

# def string_reverse(word)
# 	length = word.length #gets the length of our string
# 	index_value = length - 1. #this is the last index value of our string

	##Until our *index_value* is less than zero (which is the first index value of our string) we want to print the characters out in reverse order, counting down from the last index value to the the first.
# 	until index_value < 0
# 		print word[index_value]
# 		index_value -=1
# 	end	

# 	puts "\n"
# end

# print "Give me a word to write in reverse: "
# user_word = gets.chomp.downcase

##calls the method and sends the users word in as an argument.
# string_reverse(user_word)

# #------------------------------------------------------#

# # Create a method that converts an Array into a Hash (indexes become keys)


# def array_to_hash(array)
# 	#create a new empty hash to store data from array
# 	new_hash = {}

# 	#loop through the array with .each_with_index and create key/value pairs in new_hash
# 	array.each_with_index do |a,i|
# 		new_hash[i] = a
# 	end	
# 	#return the contents of new_hash
# 	return new_hash
# end 


# animals = ["cat", "dog", "horse", "cow", "pig"] 


# animal_hash = array_to_hash(animals)
# puts animals
# puts animal_hash

# #------------------------------------------------------#

# Method Challenge!
# In Ruby 6 / 4 == 1.
# But what if we want the remainder also?
# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.
# If either of the numbers is not an Integer, then don't accept the number and ask again.
# Do not accept zero (0) as a number.



#Take in a number and returns it if the entry is valid.  If it's not valid, the method calls itself again and begins at the top.
def get_numbers
	puts "Enter a number greater than 0 (not a letter or symbol)"
	number = gets.chomp.to_i

	if number == 0
		puts "This is an unacceptable entry.  Try again"
		get_numbers #calls itself if the entry is invalid to allow the user another try
	else
		return number
	end
end		


#Calculates the remainder
def get_remainder(num1,num2)

	if num1%num2 == 0
		puts "#{num2} divides evenly into #{num1}."
	else
		puts "#{num2} divides into #{num1} with a quotient of #{num1/num2} and a remainder of #{num1%num2}."	
	end	

end	

#calls the "get_numbers method to and saves the return value in the variable user_num1"
user_num1 = get_numbers 
#calls the "get_numbers method to and saves the return value in the variable user_num2"
user_num2 = get_numbers 

#calls the "get_remainder" method and send the variables *user_num1* and *user_num2* as arguments.
get_remainder(user_num1, user_num2)




