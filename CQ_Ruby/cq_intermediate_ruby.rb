

# # Code Quizzes - Ruby - Intermediate Ruby

# Print out 1a, 1a, 1c, 2a, 2b, 2c, 3a, 3b, 3c
a = [1, 2, 3]
b = ["a", "b", "c"]
result = []
	a.each do |number|
		b.each do |letter|
			result.push("#{number}#{letter}")
		end
	end
	result.join(", ")

# Make the following array: [["", "", ""], ["", "", ""], ["", "", ""]]
Array.new(3) {Array.new(3){" "}}
  
# Use these arrays below to make [[1, "a"], [2, "b"], [3, "c"]]

a = [1, 2, 3]
b = ["a", "b", "c"]

a.zip(b)

# Convert c = [[1, "a"], [2, "b"], [3, "c"]] to [1, "a", 2, "b", 3, "c"]

c = [[1, "a"], [2, "b"], [3, "c"]]
c.flatten
 
# Use these arrays to make the following hash: {1 => "a", 2 => "b", 3 => "c"}
a = [1, 2, 3] 
b = ["a", "b", "c"]

hash = {}
	a.each_with_index {|number, index| hash[number] = b[index]}
hash

or 

Hash[a.zip(b)]


# Make the following array: ["name: matt occupation: plumber", "name: phil occupation: baker"]
a = [["matt", "plumber"], ["phil", "baker"]] 
a.map {|name, occupation| puts "name: #{name} occupation: #{occupation}"}

# Convert a = [["row", 3], ["your", 1], ["boat", 1]] to ["row", "row", "row", "your", "boat"]
# The first element in the nested arrays is the word that should be displayed and the 
# second element in the nested array is the number of times the word should be displayed.

a = [["row", 3], ["your", 1], ["boat", 1]]


# Show two ways to get the first through third elements of the array 

a = [1, 2, 3, 4]
a[0..2]
a[0...3]

# What is the difference between include and require?
Include to access methods from another module (include takes all the methods from another module)

Require to run another file 

# Show two ways to calculate the square root of 64 with the Math module.
Math.sqrt(64)

# Delete all elements of the array a = [1, 2, 3, 4] that are less than or equal to 2.
 a = [1, 2, 3, 4]
 a.delete_if {|num| num <= 2 }
 => [3, 4]

 or 

 a.keep_if { |x| x > 2}

# Return an array that only includes the elements greater than 2 of the 
# array but do not mutate the original array.

 a = [1, 2, 3, 4]
 a.select {|x| x > 2}

# Delete all elements of the array that are less than 2 without using delete_if or keep_if.

a.delete {|x| x < 2}
a.select! {|x| x <2}

# Print the elements of the array four times (i.e. 1, 2, 3, 4, 1, 2, …)

a = [1, 2, 3, 4]
a.cycle(4) {|x| puts x}

# Remove and return the last element of the array.
a = [1, 2, 3, 4]
a.pop

# Make a Super class with a info class method.  The info class method will 
# puts "This is an awesome class method".  Make an add instance method that 
# takes two parameters and returns the sum.  Then call both of the methods.

class Super

	def self.info 
		puts "This is an awesome class method"
	end

	def add(x,y)
		puts x + y
	end

end

Super.info
n = Super.new
n.add(2,5) 


# Add the elements of the following array 
a = [1, 2, 3, 4, 5]
a.inject(:+)
#=> 15

# Make a proc that multiplies a number by two and show how it works
Need to review Procs

p = Proc.new {|n| n * 2}
p.call(2)

# Make a proc that multiplies two numbers together and show how it works.

p = Proc.new {|a, b| a * b}
p.call(4,5)

# Make the following function puts "Hi"

def display_block
 yield
end

answer say, but do not understand

display_block {puts "Hi"}

# Call the following method so the output is "Programming Powers"
def breakout(session_name)
  Proc.new { |presenter| puts "#{session_name} #{presenter}" }
end

*** review *** 

p = breakout("programming")
p.call("Powers")

# Capitalize each element of arr with a proc.
arr = ["a", "b"]
arr.map(&:upcase)

review

# What do you call a method that returns a boolean?
A predicate

# Center the string "Bob" in a 40 character string with *** on either side of the string
review

"Bob".center(40, "*")

# Align the string "Bob" to the right of a 40 character string that has *** on the 
# left of the string.

"Bob".rjust(40, "*")

# Add the string "nice" to the beginning of the array.
a = [1, 2, 3, 4] 
a.unshift("nice")

# Write a one-liner that returns the following output: 
# {false=>[1, 3, 5, 7, 9, 11, 13, 15, 17, 19], true=>[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]}

(1..20).group_by { |x| x.even? }

# Define a method that prints self.  Then use this method as a proc to 
# print the numbers 1 to 100.

class Fixnum
  def echo
    puts self
  end
end

(1..100).each(&:echo)

# Return a new array that multiplies each even element of an array 
# by 3.  a = [1, 2, 3, 4, 5, 6, 7] should simplify to [6, 12, 18].
a = [1, 2, 3, 4, 5, 6, 7]
a.select {|x| x.even? }.map {|element| element * 3}

# Return an array that returns true for even numbers and false for odd numbers.  
# should simplify to [false, true, false, true].

array = [1, 2, 3, 4]
array.map {|n| n.even?}

# Create a 5 element array that is filled with 5 random numbers from 1 to 10.
Array.new(5).map {rand(0..10)}
 => [5, 5, 8, 5, 5]

# Delete the first three elements from the array.

a = [1, 2, 3, 4, 5, 6]
a.shift(3)

# the shift method mutates the original array

# Return nil if the variable x is not defined. If x is defined, return the type of variable x

defined?(x)

# Attempt to retrieve an element at the 5th position and if no element is found, return "cats".

a = [1, 2, 3, 4]  
a.fetch(4, "cats")

# Write a linear search algorithm for an unsorted list without using any array 
# methods other than Array#length.
** review **

def linear_search(value, array)
	counter = 0
	while counter < array.length
		if array[counter] == value
			return counter
		else
			counter += 1
		end
	end
	"Value not found"
end


# Write a binary search algorithm for a sorted list of numbers and return "Value not found" 
# if the search value is not in the sorted array.

** review **

def binary_search(value, array, start_index = 0, end_index = (array.length - 1))
  while start_index <= end_index
    middle_index = (start_index + end_index) / 2
    if array[middle_index] == value
      return middle_index
    elsif value < array[middle_index]
      end_index = middle_index - 1
      binary_search(value, array, start_index, end_index)
    else
      start_index = middle_index + 1
      binary_search(value, array, start_index, end_index)
    end
  end
  "Value not found"
end

# Print the strings "1" through "100" with a proc starting with the range (1..100)
(1..100).map {|n| puts n.to_s}

# Define a method that takes a block with your name as an argument and 
# prints your name n times (where n is specified as an argument).
** review ** 

def method(name, &block)
	n.times do
		yield
	end
end

method(5) {puts "Jessica"}

# answer didn't work 

# Create an array of 100 random numbers between 0 and 1.
(1..100).map{rand}

# Create a 10 X 10 array and randomly fill each cell with "D" or "A".
** review ** 

Array.new(10) {Array.new(10) {rand > 0.5 ? "D" : "A"}}

# Suppose you are working on a project with multiple files for each class - 
# how do you run the tests (written in Ruby) of a given file and not the tests 
# from the other files?

if __FILE__ == $0
	add tests here
end


# Change 123.12.1234 to 123-12-xxxx

# need to find simpler answere versus one they provided .

# Use pry to evaluate the values of the variables in the following method call.
# def add(num1, num2)
#   num3 = num1 + num2
# end


# Calculate the factorial of 10 with a symbol to proc.

(1..10).inject(:*)

# Use a one-liner to find the longest word in the array: 
arr = %w{what is the longest word in this arrrrrray}
arr.inject {|longest_word, word| word.length > longest_word.length ? word : longest_word}

# Find the first number between 1 and 100 that is divisible by 10 and 7.
(1..100).select {|x| x % 10 == 0 && x % 7 ==0}
 => [70] 

 # can use detect method or find method

# Convert to [[0, 3, 6], [1, 4, 7], [2, 5, 8]]  
# Notice the pattern - we are looking for the columns.

array = [[0, 1, 2], [3, 4, 5], [6, 7, 8]] 
array.tranpose

# Convert to [[1, 2], [3, 4], [5, 6]]

a = [[1, 2], [3, 4]]
b = [[5,6]]

a.push(b)
or
a + b

# See if any of the elements from b are included in a.
 a = ["snake", "rat", "cat"]  
 b = [1, 2, "bat"]  

 a.any? {|elem| b.include?(elem)}

# Convert to [1, 2, 3, 4].
a = [[1,2],[3,4]] 
a.flatten

# Return true if every element of the array is 3 characters long and false otherwise.

a = ["mat", "fat", "bat"]
a.each do |word|
	if word.length == 3
		puts true
	else
		puts false
	end
end

or

a.all? {|word| word.length == 3}

# Use the gets method to get two integers from the user.
x, y = gets.chomp.split.map(&:to_i)

# Define a function called add that lets you run $ ruby add_argv.rb 3 4 from the command line and returns 7.
def add(x,y)
	puts x + y
end

add(3,4) #=. 7

or

def add
  num1 = ARGV[0]
  num2 = ARGV[1]
  eval(num1) + eval(num2)
end

p add

# Do a case insensitive sort of the following array: 
array = ["apple", "Bear", "matt", "Aardvark", "phat"]
array.sort_by(&:downcase)

# Sort the following hash by the hash values: 
hash = {bill: 65, bob:42, frank: 89, john: 5}
hash.values.sort
 => [5, 42, 65, 89] 


