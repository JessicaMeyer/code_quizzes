# Code Quizzes - Ruby section - Beginning Intermediate Ruby

# Return the class of the object 2.
2.class
#=> Fixnum

# Return the inheritance path of the object 2.
2.class.ancestors
#=> [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject] 

# Return a sorted list of the Kernel methods.
Kernel.methods.sort

# What is the Kernel data type?
Kernel.class
#=> module

# Demonstrate that puts is included in Kernel.
Kernel.methods.include?(:puts)
#=> true

# How many Kernel methods are there?
Kernel.methods.count
#=> 155

# Puts the string "Hi" with shorthand and dot notation.
puts "hi"
or
Kernel.puts("hi")

# Return the number of characters in the string "The Godfather"
"The Godfather".length

# What is object oriented programming?  Why is it useful?
OOP is a method to model programs with classes, objects and inheritance.
It is easier to read, maintain and update.

# Start an infinite loop in irb and then exit it.
"while true do puts 10 end" - exit with control + C

# What do we call x and 10 in the following expression: x = 10
x is the variable name, 10 is the object
10 is an instance of the fixnum class. variables are placeholders that 
can hold objects. 

# What is the difference between if and unless
if - the code in the if block will execute if the condition is true

unless - the code in the unless block will execute if the condition is false.

# Write a method called teenager that takes age as a parameter and 
# returns "You're not a teenager" if the age is too young or too 
# old to be a teenager.

def teenager(age)
	if age < 13 
		puts "You're not a teenager"
	else
		puts "you are a teen"
	end
end

teenager(12)
# => you are not a teenager

# Demonstrate that 15 is between 12 and 18 with a method.
15.between?(12,18)
#=> true

# What does it mean when a method has a question mark?  
# Should you write methods that end with a question mark?

Methoods that return a boolean end with a question mark. If you write
a method that returns a boolean, it should end with a question mark. 

# When should you use do/end for code blocks and when should you 
# use curly brackets { }?

curly brackets for when the code can fit on one line.
do/end for multi line code blocks

# Starting at zero, puts 0 to 100 in increments of 5 without 
# writing your own method.

0.step(100, 5) { |n| puts n}

# Starting at 1, puts 1 to 10 without writing your own method.
1.upto(10) {|n| puts n}

# Convert 4 to a floating point number.
4.to_f

# What type of variable is used for a constant?
Constants begin with a capital letter 

# Return the ordinal value of a.
'a'.ord
 #=> 97

# Return the character value of 120.
120.chr
#=> "x"

# Set the variable x to be 5 and the variable y to be 7 and 
# write 5 + 7 = 12 with string interpolation.

x = 5
y = 7
"#{x} + #{y} = #{x + y}"

# In the string "foobar" replace "bar" with "moo".
"foobar".sub('bar', 'moo')
#=> foomoo

# In the string "foobar foobar" replace both "bar" with "moo".
"foobar foobar".gsub("bar", "moo")
#=> foomoo foomoo

# Replace the first two characters of the string "This is a test" 
# with "Hello".
"This is a test".sub(/^../, "Hello")

# Replace the last two characters of the string 
# "This is a test" with "Hello".
"This is a test".sub(/..$/, "Hello")

The $ anchor says to start at the end of the string

# Puts each character of the string "abcxyz"
"abcxyz".split(" ").each {|x| puts x}

# Puts pairs of two of each character in the string 
# "my test" and ignore whitespace characters.
***** Do not understand these that use // ******

"my test".scan(/\w\w/) {|pair| puts pair}
my
te
st
 => "my test" 

# Puts the numbers in the sentence 
# "the car costs 1000 and the cat costs 50"  

"the car costs 1000 and the cat costs 50".scan(/\d+/) {|x| puts x}   
1000
50
 => "the car costs 1000 and the cat costs 50"

The + sign makes the regex do a maximal munch

# Puts the vowels in the string "This is a test"
look up .scan method 

"This is a test".scan(/[aeiou]/) {|vowel| puts vowel}
i
i
a
e
 => "This is a test" 
# Puts the letters between a and m in the string "This is a test"

"This is a test".scan(/[a-m]/) { |x| puts x}
h
i
i
a
e
 => "This is a test" 

# Puts "String has vowels" if the string has vowels 
# (use "This is a test" and "tht wld b hrd 2 mk ppl ndrstd" as tests)
Do not understand

puts "String has vowels" if "This is a test" =~ /[aeiou]/

# What is an array?
An ordered collection(list) of objects

# x = [1, 2, 3, 4]  Add 2 to the third element in the array.
x[2] = 2
x.insert(2,2)

# What are the two ways to make an empty array?
Array.new
array = []

# What are the two ways to add objects to the array x = []?
x = []
x.push(2)
x << 2

# Convert the array elements into a string with the string elements separated by a comma.

x = ["Word", "Play", "Fun"]  
x.join(", ")

# Convert "This is a test" to ["This", "is", "a", "test"] with 2 different techniques.
"This is a test".split
=> ["This", "is", "a", "test"]  # if you do split(", ") it goes to an array but no commas

%w"This is a test"

# Split "Short sentence. Another. No more." into an array on the periods.
"Short sentence. Another. No more.".split(".")
 => ["Short sentence", "Another", "No more"] 

# Puts each element of the array [1, 2, 3, 4] and concatenate with "x"
[1,2,3,4].each {|num| puts "#{num}x"}

1x
2x
3x
4x
 => [1, 2, 3, 4] 

# Add 3 to each element in an array [1, 2, 3, 4] with two different techniques.
[1, 2, 3, 4].map {|num| num + 3}
 => [4, 5, 6, 7] 

 # or can use collect method
 
# Determine if x is the empty array.
x = [] 
x.empty?
=> true

# Determine if x includes the string "y" 

x = [1, 2, 3] 
x.include?("y")
=> false

# Use two techniques to return the last element in an array.

x = [1,2,3]

x.pop
x[-1]
x.last

# Puts the first two elements of the array and separate them with a hyphen

x = [1, 2, 3]  
x[0..1].join('-')
  
# puts the number of key/value pairs in the hash.
animals = {:cat=>"feline animal", :dog=>"canine animal"}
animals.length
animals.size

# Change the value of :cat to be "fluffy animal"
animals[:cat] = "fluffy animal"

# Iterate through the hash and puts "key equals value" (i.e. :a equals 1, :b equals 2).

x = {:a => 1, :b => 2}  
x.each {|k, v| puts "#{k} equals #{v}"}

# => a equals 1
# => b equals 2

# Return an array of the keys in the hash

x = {:a => 1, :b => 2}  
x.keys
#=> [:a, :b]

Delete the key/value pair of the hash with key equal to :a

x = {:a => 1, :b => 2}  
x.delete(:a)

# Delete key/value pair of the hash if the value is greater than 50

x = {:a=>100, :b=>25}  
x.delete_if {|key, value| value > 50}

# Set the age variable to 22 and puts "You are 22" if age is 22 and "You are not 22" 
# otherwise using the ternary operator.
age = 22
if age == 22
	puts "You are 22"
else 
	puts "You are not 22"
end

#or 

age == 22 ? "You are 22" : "You are not 22"

# Print every capital letter from A to Z.
alphabet = ("A".."Z").each {|letter| puts letter}

# Return true if R is included in the array of every capital letter from A to Z.

alphabet.include?("R")
 => true 

# Puts the second through fourth element in the array.
a = [2, 4, 6, 8, 10, 12]  
puts a[1..3]

# Convert the string "Bob" to a symbol
"Bob".to_sym

# Return the number of sentences in the paragraph.
paragraph = "My name is Matt. What is your name? Are you excited to solve Ruby challenges? I am!" 

Do not understand, surely there is an easier way

paragraph.split(/\.|\?|!/).length

# Iterate through all lowercase letters and delete all letters in the array that are vowels.
letters.delete_if {|letter| vowels.include?(letter)}

# How can you write a really big number to make it more readable 
# (i.e. how can you write 1000000000 to make it more readable)?
1_000_000_000

# In what order are chained methods evaluated?
From left to right

# Show the two methods for using the + operator and explain syntactic sugar.

5 + 3 #syntactic sugar
or
5.+(3)

# Puts a random number between 0 and 5
rand(0..5)

# Puts a random floating point number between 0 and 1
rand()

# Show the two methods to concatenate the strings "First" and "Second"
"First" + "Second"
OR
"First" << "Second"
OR
"First".concat("Second")

# Use a loop to create the following array: [2, 4, 6, 8, 10, 12]
2.step(12, 2).to_a

