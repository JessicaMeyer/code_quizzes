DONE 

# Beginner Quiz 1 - Learn Ruby - Variables, Strings, Numbers

# 1)  Assign the variable x to the value 5.
x = 5

x is a variable, and 5 is the value.

# 2) What is the datatype of "Matt"?
String

# 3) x = 5
# Is x a string?
No it is a variable. The value 5 is an integer.

# 4) What does this expression evaluate to?
# "YO" + "LO"
"YOLO" , string concatenation 

# 5) What does this expression evaluate to?
# "Cool".+("io")
"Coolio"

# 6) What does this expression evaluate to?
# "bob" + 42
Raises an error because of the number. Would need 42.to_s to work. 

#7) 
# a = "Bat"
# b = "woman"
# What does this expression evaluate to?
# a + b
"Batwoman"

#8) 
# my_name = "50 Cent"
# my_name = "Miley"
# What does this expression print?
# p my_name
"Miley" - Miley was last evaluated expression.

#9) 
# rapper = "Jaydakiss"
# Get the first letter from the string "Jaydakiss".
rapper[0]

# Get the first through 3rd elements from the "Jaydakiss" string.
rapper[0..2]

# Get the last element from the "Jaydakiss" string.
rapper[-1]

# Replace the "l" in the following string with "m": 
# word = "lace"
word[0] = "m"

# Assign the variable my_dawg to the value "DMX"
my_dawg = "DMX"

# What does the following expression evaluate to?
# "Dead Poet" = fav_bar
Error - variable needs to be on left side. 

# What does the following expression print?
# something = "cats"
# crazy = something
# puts crazy
=> "cats"
The variables point to the same value.

# What does the following expression evaluate to?
# 3 + 4
7

# What does the following expression evaluate to?
# 4 * 7
28

# What does the following expression evaluate to?
# 2 ** 3
8

# What does the following expression evaluate to?
# 8 / 2
4

# What does the following expression evaluate to?
# 3 / 2
1
It is not 1.5 because we are performing Integer division. 
Division between two integers always results in an integer.

# What does the following expression evaluate to?
# 3.0 / 2.
1.5
Because we are performing division on floating numbers

# What does the following expression evaluate to?
# "i am not shouting".upcase() 
"I AM NOT SHOUTING"

# Convert every letter of "YoLo BrAh" to lowercase.
nice = "YoLo BrAh"
nice.downcase

# Concatenate the following strings:
# first = "Beautiful "
# second = "face tattoo"
first + second
or
first.concat(second)

# Convert the number 5 to the string "5".
5.to_s

# What is the problem with the following code?
# my variable = "Mr. White"
my_variable

# Update the code, so it can run successfully:
# band = "Blink" + 182
band = "Blink" + 182.to_s

# Beginner Quiz 2: Learn Ruby - Arrays, Conditionals, Loops

# my_array = ["matt", "phil"]  
# my_array is an array with the values "matt" and "phil".  
# Create an array with the values 1 and 2.
[1,2]

# Create an array with nothing inside it.
[]
or
Array.new

# Create an Array that contains the values "mike tyson", 89, and 9.7.
array = [ "mike tyson", 89, 9.7]

# What does the following expression return:
# ["uno", "dos", "tres"].length()
3

# Is this array valid?
# name = "clem"
# age = 32
# [name, age]
Yes, variables can be used inside of Arrays.

# lyric = ["laughter", "it's", "free"]

# Get the first element of the lyric Array.
lyric.first
or
lyric[0]

# lyric = ["laughter", "it's", "free"]

# Get the last element of the lyric Array.
lyric.last
or 
lyric[-1]

# ruff = ["stop", "drop", "shut 'em down"]

# Add the string "open up shop" to the end of the ruff Array.
ruff[-1] = "open up shop"
or 
ruff.push("open up shop")

# What does the following expression evaluate to?

# 5 == 5
true

# What does the following expression evaluate to?

# true = 6
Error - because true can not be used as a variable

# Demonstrate that "matt" is the same as "matt".
"matt" == "matt"

# What does the following expression evaluate to?

# 4 != 4
false

# What does the following expression evaluate to?

# 5 > 4
true


# What does the following expression print?

# if 5 > 4
#   puts "5 is greater than 4"
# end

puts "5 is greater than 4" because the if expression was true

# What does the following expression print?

# if 5 < 4
#   puts "5 is less than 4"
# else
#   puts "5 is not less than 4"
# end
puts "5 is not less than 4" because the first statement is false, it ran the second statement

# What does the following expression print?

# if "sam" == "cat"
#   puts "sam equals cat"
# elsif "matt" == "matt"
#   puts "matt equals matt"
# else
#   puts "whatever"
# end
puts "matt equals matt"
first statement is not true so is skipped. elsif statement is true so it ran

# What does the following expression print?

# if 5
#   puts "Hello there"
# end
**********************************NEED TO STUDY***********************************

puts "Hello there"
The value after the if is the number 5, not a boolean condition. 
In Ruby, "truthy" and "falsey" values can be used in place of boolean expressions. 
Every value in Ruby is truthy, except nil and false, which are falsey.

# What does the following expression print?

# if "bob"
#   puts "bob is truthy"
# else
#   puts "bob is falsey"
# end

puts "bob is truthy"
Any value that is not nil or false is considered true in a boolean context,
so "bob" is considered true. Therefore the code in the first block is executed.

# What does the following expression print?

# if nil
#   puts "nil is truthy"
# else
#   puts "nil is falsey"
# end
puts "nil is falsey"
nil is considered false in a boolean context, so the code in the else block is executed

# What does the following expression print?

# puts "This syntax is cool" if true

# #same as this syntax

# if true
#   puts "This syntax is cool"
# end

puts "This syntax is cool"
Because true is considered true in a boolean context.


# What does the following expression print?

# puts "Tall buildings" if false
print nothing. The boolean condition is false, so the puts statement is never executed.

# x = 5
# x = x + 1
# What is the value of x?
6

# mode = "chill"
# mode += "hippie"
# What is the value of mode?
mode = "chillhippie"

# equivalent: 
# mode += "hippie"
# mode = mode + "hippie"

# What does the following code print?

# counter = 0
# while counter < 3
#   puts "Went through the loop"
#   counter = counter + 1
# end 
"Went through the loop"
"Went through the loop"
"Went through the loop"

# What does the following code print?

# while 3 > 15
#   puts "This is the end"
# end
Does not print anything because the boolean condition never evaluates to true.

# What does the following code print?

# while true
#   puts "This is the song that never ends"
# end
puts "This is the song that never ends"
Infinite loop 

# Quic # 3 - Variable Scope and Methods

# What does this code print?

# x = "HELLO"
# if true
#   puts x
# end
"HELLO"
The variable x is defined outside the conditional and can be accessed inside the conditional

# What does this code print?

# if true
#   y = "Baaaaah"
# end
# puts y
"Baaaaah"
The y variable is defined inside the conditional and can be accessed outside the conditional

# Identify the elements of this code:

# def my_name()
#   return("Zoo Lander")
# end
def - a keyword in Ruby for defining methods

my_name() - the name of the method that is being defined

return("Zoo Lander") - the body of the method that is executed when the method is called

end - a keyword in Ruby for indicating the method definition is complete

# What is the difference between the code in the previous example and this code?

# def my_name
#   "Zoo Lander"
# end

This example uses implicit syntax and the previous example uses explicit syntax.

# What does the following code print?

# def my_name()
#   return("Zoo Lander")
# end

# puts my_name()
"Zoo Lander"
 
# What does the following code return?

# def add(x, y)
#   return(x + y)
# end

# add(3, 5)
8

# What does the following code print?

# y = 10
# def add_one_to_variable(variable)
#   variable += 1
#   return(variable)
# end

# puts add_one_to_variable(y)
11

# The y variable is passed to an argument in the add_one_to_variable() method.

# What does the following code print.

# cool = "Beans"
# def dinner_plans()
#   puts cool
# end

# dinner_plans()
error - undefined local variable or method "cool"

# What does the following code print?

# def blah()
#   my_var = "my_var has been defined"       /// LOCAL variable! 
# end

# puts my_var
Error - my_var is a local variable to the blah method.

# What does the following code print?

# def cray()
#   lyric = "Stuff is cray cray"
#   puts lyric
# end

# cray()
"Stuff is cray cray"
because local variable is defined inside the cray method, but also used within the method

# What does the following code print?

# def first_name()
#   return("Otto")
# end

# def last_name()
#   return("Mation")
# end

# def full_name()
#   first_name() + " " + last_name()
# end

# puts full_name()
"Otto Mation"

# What does the following code print?

# def square_of_number(number)
#   return(number * number)
# end

# def cube_of_number(number)
#   return(number * square_of_number(number))
# end

# puts cube_of_number(2)

8

# Define a method that multiplies two numbers together.
def multiply(a,b)
	return a * b
end

multiply(2,3)

# Define a method called silly_check() that takes a number argument and 
# returns "The number is less than 5" if the argument is less than 5 and 
# "The number is greater than or equal to 5" otherwise.

def silly_check(number)
	if number < 5
		return "The number is less than 5" 
	else
		return "The number is greater than or equal to 5"
end
end
silly_check(4)

# Define a method called funify() that takes an array as an argument and 
# adds the word "fun" to the end of the array.
********* double check ******* 

def funify(array)
	array.push("fun")
end

def funify(array)
  return(array.push("fun"))
end


# Define a method called more_fun() that replaces the first element 
# of an array with the word "FUN FUN".

def more_fun(array)
	array[0] = "FUN FUN"
end

# Define a method called increment_variable() that takes a 
# variables as an argument and adds one to it.

def increment_variable(var)
	var += 1
end

# Quiz 4 - Symbols, Array Methods, and Hashes

# What does the following code print?

# name = :crank
# puts name.inspect()

:crank 

# What does the following code print?

# puts "unicorn".reverse()
"nrocinc"

# What does the following code print?

# puts :unicorn.reverse()
Error - symbols do not have the method reverse. 

# What does this code print?

# ["fat", "bat", "rat"].each do |word|
#   puts word + "-land"
# end
fat-land
bat-land
rat-land

# What does this code print?

# counter = 0
# array = ["fat", "bat", "rat"]
# while counter < array.length
#   puts array[counter] + "-land"
#   counter += 1
# end
fat-land
bat-land
rat-land


# What does the following code print?

# array = ["snake", "rat", "cat", "dog"]
# array.each do |animal|
#   puts animal if animal[0] == "s"
# end
put animal name if the first letter starts with "s"
"snake"

# What does the following code return?

# [:a, :b, :c].include?(:a)
true

# What does the following code return?

# ["roof", "top"].include?("bar")
false

# What does the following code return?

# ["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")
"Too Weird To Live Too Rare To Die"

# What does the following code return?

# ["where's", "wallace", "at"].join("***")
"where's***wallace***at"

# What does the following code return?

# [2, 4, 6, 8].map { |number| number ** 2 }
[4, 16, 36, 64]

# What does the following code return?

# [2, 4, 6, 8].map do |number|
#   number ** 2
# end
same thing as above

# What does the following code return?

# warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
# warty_newt["type"] 
"Amphibian"


# What does the following code return?

# warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
# warty_newt.fetch("type")
"Amphibian"

# What does the following code print?

# warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
# warty_newt["weight"] = "0.3 ounces"
# puts warty_newt
{"type"=>"Amphibian", "diet"=>"Carnivore", "life_span"=>"25 years", "weight"=>"0.3 ounces"}

# Create a hash for a snowy_owl, a bird that is a carnivore and has a life span of 10 years.
snowy_owl = {:type => "bird", :diet => "carnivore", :life_span => 10}

# What does the following code return?

# snowy_owl = { "type"=>"Bird", "type" => "Owl", "diet"=>"Carnivore", "life_span"=>"10 years" }
# puts snowy_owl
Returns the hash 

# What does the following code return?

# snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
# snowy_owl.keys()
["type", "diet", "life_span"]

# What does the following code return?

# snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
# snowy_owl.values()
["bird", "carnivore", "10 years"]

# What does the following code return?

# snowy_owl = {
#   "type"=>"Bird",
#   "diet"=>"Carnivore",
#   "life_span"=>"10 years"
# }
# snowy_owl.select do |key, value|
#   key == "type" 
# end

{"type" => "Bird"}


# result = []
# first_names = ["Hamburglar", "Grimace", "Ronald"]
# last_name = "McDonald"
# Iterate through first_names and populate result with the first_names 
# and last name (result should be ["Hamburglar McDonald", "Grimace McDonald", "Ronald McDonald"] 
# after the iteration).

first_names.each do |first_name|
	result.push(first_name +  " " + last_name)
end

# personality_types = ["bad", "good", "great"]
# Iterate through personality_types and construct this array: 
# ["bad person", "good person", "great person"]

person_array = []
personality_types.each do |type|
	person_array.push(type + " person")
end

# Convert ["waters", "too", "polluted", "with", "germs"] 
# to "waters too polluted with germs".
word_array = ["waters", "too", "polluted", "with", "germs"]
word_array.join(" ")

# lebron = {:sport => "basketball", :birthplace => "Akron"}
# Return the value corresponding to the key :sport in the lebron hash.

lebron[:sport]

# lebron = {:sport => "basketball", :birthplace => "Akron"}
# Add the :high_school key to the lebron hash with the value 
# "St. Vincent-St. Mary High School".
lebron[:high_school] = "St. Vincent-St. Mary High School"

# lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}
# Return an array of all the keys in the lebron hash.
lebron.keys

# lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}
# Return an array of all the values in the lebron hash.
lebron.values

# Quiz 5 - Intro to OOP 

# What is the value of the variable x?
# x = String.new("i wish i was surfing")

"I wish i was surfing"

# Make the following object: 
# "i thought he said this wasn't going to be abstract..."
String.new("i thought he said this wasn't going to be abstract...")

# What does this return?
# "hi".methods()

Returns an array of the methods that the object can use - the String class

# What does this return?
# "hello".upcase()

"HELLO"

# What does this return?

# "sUp DuDe".swapcase()

"SuP dUdE"

# What does this return?
# "This is a sentence, kinda".split()
["This", "is", "a", "sentence", "kinda"]

# Create a string object with the text "road trip".
"road trip"
or
String.new("road trip")

# What does this code return?
# Array.new()
[]

# What does this code print?

# my_array = Array.new
# my_array.push("nice")
# my_array.push("hair")
# puts my_array.inspect
["nice", "hair"]

# What is a class?
A class is like a factory that makes objects 

# What is an object.
An object is an instance of a class. Objects have methods that be called to 
make them do stuff. 

# How is a String object created?
String.new("bob")
or 
"bob"

# Create a new Hash object.
Hash.new

# Create a new Array object and add two string objects to it: "fun" and "games".
array = ["fun", "games"]

# What does the following code evaluate to?

# my_string = String.new("special")
# my_string.push("cool")
Error - push method is defined for array objects, not string objects. 

# What does the following code evaluate to?
# a_string = String.new("ear")
# a_string.class()
String

# What does the following code evaluate to?
# an_array = Array.new()
# an_array.class()
Array 

# Create an instance of the Animal class and assign it to the variable fido.
class Animal 
end

fido = Animal.new

# Create an instance of the Dog class and assign it to the variable spot.  
# Then call the speak() method on the spot dog object.
class Dog
  def speak()
    return("ruff ruff")
  end
end

spot = Dog.new
spot.speak()

# Define a Penguin class with a looks() method that returns "We are cute!".
class Penguin
	def looks()
		return "We are cute!"
	end
end
p = Penguin.new
p.looks()

# The following code creates a Fish class with a general_overview() class method.

class Fish
  def self.general_overview()
    return("Fish are animals that live in the sea")
  end
end

# Call the general_overview() method on the Fish class.
Fish.general_overview()

********************** REVIEW ************************

Class methods are called directly on the class itself. An instance of the Fish 
class (a fish object) does not need to be created to call the general_overview method.

# Define a Calculator class with an add() class method.  
# Demonstrate how the add() method can be called to add two numbers.
class Calculator
	def add(a,b)
		return a + b
	end
end
c = Calculator.new
c.add(1,3)

# Here is how to define a Person class that is instantiated with a name.

class Person
  def initialize(name)
    @name = name
  end
end

# Identify the key components of this code.

initialize is a method that is run when Person.new() is executed. 
@name is an instance variable that is used to maintan state in a Ruby class. 
The @name iv can be used by instance methods throughout the Person class and this
is a powerful OOP technique. 

# Here is how to create a Tiger class with a name instance variable 
# and a method that returns the name.

class Tiger
  def initialize(name)
    @name = name
  end

  def return_tigers_name
    return(@name)
  end
end

simba = Tiger.new("Simba")
puts simba.return_tigers_name() # prints "Simba"

# Explain how the return_tigers_name() method works.
The return_tigers_name() method simply returns the value that is 
stored in the @name instance variable.  The @name instance variable is 
accessible by all instance methods in the Tiger class and 
return_tigers_name() is an instance method of the Tiger class.

# Create a Celsius class that is initialized with temperature.
# Add a method to_fahrenheit() to the Celsius class that converts 
# the Celsius temperature to Fahrenheit.  
# The formula to convert Celsius to Fahrenheit is the temperature in 
# Celsius times 1.8 plus 32.

class Celcius 
	def initialize(temperature)
		@temperature = temperature
	end

	def to_fahrenheit
		#converts C to F (temp_C * 1.8 + 32)
		return (@temperature * 1.8 + 32)
	end
end
c = Celsius.new(12)
c.to_fahrenheit #=> 53.6

# Quiz 6 - Iteration and nested data structures

# What does :id.instance_of?(Symbol) return?
true

# Iterate over every element of weird_array and add the element 
#to the result array if the element is a Symbol 
# (i.e. an instance of the Symbol class).

result = []
weird_array = ["blah", :meow, 42, 90, :building]

weird_array.map do |x|
	if x.instance_of? Symbol
	result.push(x)
end
end

************************ review ***************************
# Iterate over the sports Array and print out the following list:
# "0. basketball"
# "1. baseball"
# "2. football"
sports = ["basketball", "baseball", "football"]

sports.each_with_index |sport, index|
puts index.to_s + "." + sport
end

# Iterate over last_names and create this array: ["Paul D", "Paul Krugman"]
last_names = ["D", "Krugman"]

last_names.map {|last_name| puts "Paul " + last_name }

# Return true if any of the elements in the soap_opera array start 
# with the letter "a" and false otherwise.
soap_opera = ["all", "my", "children"]

soap_opera.any? do |letter|
	letter[0] = "a"
end

soap_opera.map {|letter| letter[0].include?("a")}
 => [true, false, false]

# Return true if every element of the tools array starts with an "r" 
# and false otherwise.
tools = ["ruby", "rspec", "rails"]

tools.any? {|letter| letter[0] = "r"}

# or can use .all?

# Return true if the string "stimpy" contains the letter "s" and 
# false otherwise.

"stimpy".include?("s")

# Create a new array from the captain_planet array with all the 
# elements that contain the letter "a".
captain_planet = ["earth", "fire", "wind", "water", "heart"]

captain_planet.select {|letter| letter.include?("a")}

# Identify the first element in the stuff array that begins with the 
# letters "wa".
stuff = ["candy", :pepper, "wall", :ball, "wacky"]

stuff.find {|x| x[0..1] = "wa"}

# Identify all the elements in the stuff array that begins with the 
# letters "wa".
stuff = ["candy", :pepper, "wall", :ball, "wacky"]
stuff.select {|x| x[0..1] = "wa"}

# Create the array [:c, :b, :a] from the abcs array.
abcs = [:a, :b, :c]
abcs.reverse

# The people array is an array of two arrays (this is also called a 
# nested array). 
people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]
# Get the first element of the people array.
people[0]

# Get the "cool dude" string from the people array.
people[0][1]

# Show two ways to concatenate x and y to form the sentence: 
# "the cat and the hat"
# x = "cat"
# y = "hat"

"the #{x} and the #{y}"
"the " + x + " and the " + y

# Iterate through the people array and print the following sentences:
# Lebron is a cool dude
# Bieber is a jerk face
people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]

people.each do |name, about|
	puts "#{name} is a #{about}"
end

# Create an array of all students with test scores greater than 80.  
#The result should be [["jon", 99], ["bill", 85]].

test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]
test_scores.select do |name, score|
		return score > 80
	end

# Get the first person from the ages array that is 77 years old.  
# The result should be [:sue, 77]
ages = [[:frank, 42], [:sue, 77], [:granny, 77]]

ages.find { |name, age| age == 77}

# Return the moons of :mars.
planets = {:earth => [:luna], :mars => [:deimos, :phobos], :jupiter => [:callisto, :io, :europa]}
planets[:mars]

# Return the moons of :mars as a single string separated by a comma.  
# Result should be "deimos, phobos".
planets = {:earth => [:luna], :mars => [:deimos, :phobos], :jupiter => [:callisto, :io, :europa]}
planets[:mars].join(" , ")

# Return the number of home_runs that Babe Ruth hit in his career.
baseball_players = {:babe_ruth => {:hits => 2873, :home_runs => 714, :obp => 474}, :barry_bonds => {:hits => 2935, :home_runs => 762, :obp => 444}}
baseball_players[:babe_ruth][:home_runs]

# Return the number of home runs that Babe Ruth hit in his career.  Result should be 714.
baseball_players_array = [[:babe_ruth, [2873, 714, 474]], [:barry_bonds, [2935, 762, 444]]]

baseball_players_array[:babe_ruth][1][1]

# Get the name of the first element in the economists array (result should be "krugman").
economists = [{:name => "krugman", :specialty => "international macro"}, {:name => "mankiw", :specialty => "pigovian taxation"}]
#b/c it's an array of hashes, need to put [0] at beginning
economists[0][:name]

# # Quiz 7 - Modules, classes and inheritance 

# Create a Dog class that is initialized with a name.
# Add a bark() instance method to the Dog class that returns "Ruff ruff".

class Dog 
	def initialize(name)
		@name = name
	end
	def bark
		return "Ruff ruff"
	end
end

# Create an instance of the Dog class and call the bark() method.
d = Dog.new("fido")
d.bark

# What does the following code return?
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

bob = Person.new("Bob", 22)
bob.speak

Error - undefined method for speak

# Add an instance method to the Insect class to calculate the age_in_years.

class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end
  # added
  def age_in_years
  	return (@age_in_days.to_f / 365)
  end
end


class Dog
  def speak()
    return("woof woof")
  end
end

# What does the following code return?
Dog.speak()
# Raises an error - we must first create an instance of the dog class then it will work
d = Dog.new()
d.speak()

# Create a Lamp class with a class method called about_me that 
# returns the String "We brighten up people's lives".
class Lamp
	def self.about_me
		return "We brighten up people's lives"
	end
end

# Add a method to the WaterBottle class that returns the size of the 
# WaterBottle and demonstrate how this method can be used.

class WaterBottle
  def initialize(size)
    @size = size
  end
  def size
  	return @size
  end
end

w = WaterBottle.new(10)
w.size


# Create a Person class that is initialized with an age and create an age=() method
# that can be used to update the @age instance variable.  
# Also include an age method that returns the value of the @age instance variable.  
# Demonstrate how the methods can be used.

class Person
	def initialize(age)
		@age = age
	end

	def age=(new_age)
		@age = new_age
	end

	def age
		return @age
	end
end

p = Person.new(10)
p.age
p.age=(12)
p.age

# Modules define methods that can be added to classes.  Modules are useful for 
# organizing code and for code that can be reused in multiple classes.  
# Unlike classes, Modules cannot be instantiated (i.e. 
# Modules cannot be used to create objects).
# What does the following return?

module Clueless
  def funny()  #The funny() method is defined in the Clueless module. 
    return("AS IF?!")
  end
end

class Actress
  include Clueless 
  # When the Clueless module is included in the Actress class
  # all the methods defined in the Clueless module are made accessible to the 
  # Actress class.
end

What does this code return?
alicia = Actress.new
alicia.funny()
# "AS IF?!"

# Demonstrate that instances of the Person class and instances of the Alien 
# class can use the say_something() method.

module HappyHappy
  def say_something()
    return("Happy happy, joy joy")
  end
end

class Person
  include HappyHappy
end

class Alien
  include HappyHappy
end

p = Person.new()
p.say_something() # returns "Happy happy, joy joy"
a = Alien.new()
a.say_something() # returns "Happy happy, joy joy"

# Create a module called MathHelper with a method multiply_by_two() 
# that takes a number as an argument and multiplies it by two.  
# Create a class called Homework and demonstrate how multiply_by_two() can be used.

module MathHelper
	def multiply_by_two(number)
		return number * 2
	end
end

class Homework
	include MathHelper
end

h = Homework.new
h.multiply_by_two(4)

# Demonstrate that instances of the Dog class have access to the heartbeat? method.

class Mammal
  def heartbeat?
    true
  end
end

class Dog < Mammal
end

d = Dog.new
d.heartbeat  # why do I not use the ? symbol

# The ancestors() class method demonstrates all the classes that a class 
# inherits from.  Show all the classes that the Array class inherits from.

Array.ancestors
#  => [Array, Enumerable, Object, Kernel, BasicObject] 

# Explain how my_box.methods().count() returns a number greater than 50, 
# even though no methods are defined in the Box class.

class Box
end

my_box = Box.new
my_box.methods().count()

# The Box class inherits from the Object class, which gives the Box 
# class all the methods from the object class. 

# Create a BaseballPlayer class that is initialized with hits, walks, and at_bats.  
# Add a batting_average() method that returns hits divided by at_bats as a floating 
# point number.  Add an on_base_percentage() method that returns (hits + walks) 
# divided by at_bats as a floating point number.  
# Demonstrate how the batting_average() and on_base_percentage() methods can be used.

class BaseballPlayer 
	def initialize (hits, walks, at_bats)
		@hits = hits
		@walks = walks
		@at_bats = at_bats
	end

	def batting_average
		return (@hits.to_f / at_bats )
	end

	def on_base_percentage 
		return ((@hits + @walks).to_f / at_bats )
	end

end

jeff = BaseballPlayer.new(10, 20, 40)
jeff.batting_average
jeff.on_base_percentage

# Create a Person class that is initialized with a first_name and last_name.  
# Create first_name() and last_name() methods that return the values of the 
# corresponding instance variables.  
# Create a full_name() method that concatenates the first_name and last_name 
# in a single string.

class Person
	def initialize (first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def first_name 
		return @first_name
	end

	def last_name
		return @last_name
	end

	def full_name
		return "#{first_name} #{last_name}"
	end
end

bob = Person.new("Bob","Jones")
bob.full_name

# Create a module called MathHelpers with the exponent() method that takes 
# a two numbers as arguments and raises the first number to the power of the 
# second number.  

module MathHelpers
	def exponent(a,b)
		return a**b
	end
end

# Create a class called Calculator with a method called square_root() that 
# takes the square root of the number 
# (raises it to the power of 0.5).  
# The square_root() method should use the exponent() method.

class Calculator
	include MathHelpers

	def square_root(number)
		return exponent(number, 0.5)
	end
end

c = Calculator.new
c.square_root(23)





























