DONE - re-read

# Code Quizzes: Intermediate Ruby, Array Methods

#1) Get the 'biggie' string from arr.  Explain how arrays are ordered.

arr = ['onyx', 'wu tang', 'biggie']
puts arr[2]
# or arr[-1]

#2) Explain how the arr array contains different types of objects

arr = [:cool, "freezing", -10, Object.new]
# The arr array contains a symbol, a string, an integer and a generic object

#3) What's the the key difference between the two examples

#Example #1:
my_array = [10, 20, 30]
my_array[0] = "bob"
#  => ["bob", 20, 30] 
#mutates my_array

#Example #2:
another_arr = [10, 20, 30]
another_arr.map {|num| num == 10 ? "bob" : num}
# => ["bob", 20, 30] 
#does not mutate

#4) Identify the components of the following code 
# i.e. the method name, arguements and codeblock 

['a', 'b'].each do |letter|
  hangout = letter + ' bar'
  p hangout
end
# => "a bar" "b bar"

#5) Use the colors array to construct the following array: 
[['red', 1], ['violet', 2], ['blue', 3]]

colors = ['red', 'violet', 'blue']
colors.map.with_index {|color, index| [color, index + 1]}

#6) Create an array of numbers 1 - 100
(1..100).to_a

#7) Create an array of all the numbers between 1 and 100 
# that are divisible by both 3 and 5.

(1..100).to_a.select {|n| n % 3 == 0 && n % 5 == 0}
# => [15, 30, 45, 60, 75, 90] 

#8) Use fib to create the following array: [0,1,1,2,3,5,8,13,21,34]. Notice
# that these are the first ten #s in the Fibonocco sequence and each
# number equals the sum of the prior two numbers. 

# don't understand
fib = [0,1]
while fib.length < 10
	fib << fib[-2] + fib[-1]
end

#9) Use the blockbusters array to construct the following hash: 
# {"will smith" => "i am legend", "brad pitt" => "fight club", "frodo" => "the hobbit"}

blockbusters = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]
Hash[blockbusters]

#or 

result = {}
blockbusters.each {|actor, movie| result[actor]= movie}

#10) Use the players array to construct the following array: ["kelly", "cent", "cyrus"]

players = [['r', 'kelly'], ['50', 'cent'], ['miley','cyrus']]
players.map {|last_name| last_name[1]}

#or

players.map do |first_name, last_name|
	last_name
end

#11) Sum all the elements in the numbers array
numbers = [1,2,3,4]
numbers.inject {|sum, x| sum + x}
# => 10 
# The inject method keeps track of the running total in the sum block variable. 
# For each iteration, the # is added to the sum and the sum is returned. 

#12) Use nums and letters to construct the following array: 
# [[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]]

nums = [1,2,3]
letters = ['a', 'b', 'c']

result = []
nums.each do |n|
	letters.each do |letter|
		result << [n, letter]
	end
end

#13) Notice that every element of the array is equal to the previous element times ten. 
#Create the following array: [1, 10, 100, 1_000, 10_000, 100_00, 1_000_000]

7.times.map {|n| 10 ** n}

#14) Use numbers and suits to construct the following array (represents the 52 cards in a deck): 
# [["2", "spades"], ["3", "spades"] ... ["K", "clubs"], ["A", "clubs"]]

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

result = []
numbers.each do |num|
	suits.each do |suit|
		result << [num, suit]
	end
end

#15) Use the music array to construct the following hash: 
#{"blind melon" => "no rain", "sublime" => "40 oz to freedom", "damian marley" => "jr gong"}

music = [["blind melon", "no rain"], ["sublime", "40 oz to freedom"], ["damian marley", "jr gong"]]
Hash[music]

#16) Use fav_numbers to create the following array (all the even numbers): [2, 4, 10, 20]

fav_numbers = [1,2,3,4,10,20,33,35]
fav_numbers.select {|num| num % 2 == 0}

#17) Explain the difference between the following examples:

#Example #1: - does not mutate
[1, 2, 3, 4].select {|x| x.odd?}

# Example #2: mutates
[1, 2, 3, 4].select! {|x| x.odd?}


#18) What does the following code return?
text_editor = ["vim"]
nemesis = ["vim"]
text_editor == nemesis
#=> true

#19) What does the following code return?

book = ["intelligent investor"]
great_book = ["intelligent investor"]
book.object_id == great_book.object_id
# => false, different object ids

#20) What does the following code return?

['a', 'b'] == ['b','a']
# => false

#21) Add a all_start_with_a? method to the Array class that returns true if 
# every String element in an array starts with the letter "a".
 
 #don't understand
def all_start_with_a?

end
["all", "in", "the", "family"].all_start_with_a? # should return false
["aardvark", "anteater"].all_start_with_a? # should return true

#22) What is the sum of all the #s between 0 & 100 that are divisible by both 3 & 5?

numbers = (1..100).select {|x| x % 5 == 0 && x % 3 == 0}
# => => [15, 30, 45, 60, 75, 90] 

numbers.inject {|sum, x| sum + x}
# => 315

#23) Create an array of all the elements that are in first, but not second

first = ["cool", "busta", "odb"]
second = ["puffy", "cool", "busta"]

first-second
#=> "odb"

#24) Create an array of all the elements that are in first and second with no duplicates.

new_array = first + second
new_array.uniq
#  => ["cool", "busta", "odb", "puffy"]

#25) Create an array of all elements in the manly array that contain the word 
# "man".  The return value should be: ["batman", "manbot", "nah man, nah"]

manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']

#review
manly.select {|word| word.match /man/ }

#26_) Create an array of the elements with indexes 0 and 2.  
# The return value should be ['mon', 'wed'].

days = ['mon', 'tues', 'wed', 'thur', 'fri']
days.values_at(0,2)
















