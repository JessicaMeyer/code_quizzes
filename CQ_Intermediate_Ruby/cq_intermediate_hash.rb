DONE - re-read

# Code Quizzes: Intermediate Ruby - Hash Methods

#1) Return the value that corresponds with the "ruby" key.  
# Describe the Ruby Hash data structure at a high level.

languages = {
  "ruby" => "awesome",
  "javascript" => "weird, but cool",
  "java" => "don't know"
}

languages["ruby"]
#= > "awesome"

#2) What does the following code return?

browsers = {
  :favorite => :chrome,
  :favorite => :firefox,
  :worst => :internet_explorer
}
browsers[:favorite]
#=> :firefox

#3) Is the following hash valid?

weird_hash = {[1, 2, 3] => Object.new(), Hash.new => :mousie}
#  => {[1, 2, 3]=>#<Object:0x0000010290bed0>, {}=>:mousie} 
# Valid, any object can be a key or value in a hash. 

#4) Return the physical costs associated with hockey in the following sports hash.

sports = {
  :hockey => {
    :benefits => [:fun, :teamwork],
    :costs => {
      :financial => ["mad money"],
      :physical => [:concussions]
    }
  }
}

sports[:hockey][:costs][:physical]
#=> [:concussions]

#5) Create an array of all the first names in the people array.  
# The result should be ["bob", "frank"]

people = [
  {:name => "bob", :age => 42},
  {:name => "frank", :age => 13}
]

people.map { |person| person[:name]}
# => ["bob", "frank"]

#6) Return an average of all the grades in :section_one and :section_two.
#review

class_grades = {
  :section_one => [88, 74, 64],
  :section_two => [99, 100]
}
grades = class_grades.values.flatten
grades.inject(0) do |sum, grade|
  sum += grade
end.to_f / grades.length

# The Hash#values method returns an array of the values in a hash and the 
# Array#flatten method converts the nested Array structure into a simple array.  
# The inject() method is used to calculate the sum of all grades in the array 
# and compute the average.

#7) Use the cities hash to print out the following strings:
# "santa_cruz is chill"
# "new_york is intense"

cities = {
  santa_cruz: "chill",
  new_york: "intense"
}

cities.each {|city, vibe| puts "#{city} is #{vibe}"}

#8) Use the movie hash to construct the string "dude where's my car" 
#(notice that the keys of the movie hash are the components of the desired string).

movie = {
  "dude" => [],
  "where's" => "",
  "my" => {},
  "car" => Object.new
}

movie.keys.join(" ")

#9) Return the product of all the values in the dude hash 
# (the result should be 44 * 250 * 25 = 275_000).

dude = {
  age: 44,
  weight: 250,
  net_worth: 25
}


# dude.values.inject(0) {|sum,x| sum += x}  - if adding items, need to multiply

dude.values.inject(1) {|elem, num| elem *= num}

#10) Use the christmas hash to construct the following hash: {santa: "ho ho ho"}

christmas = {
  santa: "ho ho ho",
  grinch: "presents destroy wealth"
}


#11) What does the following code return?  Explain.

blah = {}
sah = blah
sah[:redwall] = "awesome books!"
sah.object_id == blah.object_id

# true - because blah and sah are initially assigned to the same empty hash. 
# the hash is mutated, but both variables are still assigned to the same object, 
# so they have the same object id.

#12) What does the following code return?  Explain.

clocks = {
  big_ben: "tick tock",
  grandfather: "dong dong"
}

big_clocks = clocks.select do |k, _|
  k == :grandfather
end
clocks.object_id == big_clocks.object_id

#false - the select method creates a new hash and does not mutate the original. 
# the big_clocks variable is assigned to a new hash but with a different object id

#13) What does the following code return?  Explain.

haha = {a: 1, b: 2}
bozo = haha.merge!({lala: "word up"})
haha.object_id == bozo.object_id

#true - assigned to same variable.

#14) What does the following code return?

def blah_blah(x, y, chatter)
  chatter.map do |k, v|
    [k, v]
  end
end

blah_blah(34, 22, afi: "high school football hero", against_all_authority: "24 hour roadside resistance")
# => => [[:afi, "high school football hero"], [:against_all_authority, "24 hour roadside resistance"]] 

#15) Retrieve the value associated with the :dumb_and_dumber key in the videos hash.  
# If the :dumb_and_dumber key is not available in the hash,
# return the string "no one's home".

videos = {yoga: "stretch it out"}


videos.fetch(:dumb_and_dumber, "no one's home")

#or 

video[:dumb_and_dumber] || "no one's home"

#16) What is the difference between the following lines of code?
# simpsons.fetch(:bart)
# simpsons[:bart]

simpsons = {homer: "my idol"}
simpsons.fetch(:bart)
simpsons[:bart]

# simpsons.fetch(:bart) raises an exception because the :bart key is not present 
# in the simpsons hash (if a second argument was added to the fetch() method, 
# the default value would be returned instead of raising an exception).

# simpsons[:bart] returns nil because the :bart key is not present in the simpsons hash.

#17) Monkey patch the Hash class and define a method called all_values_even? 
# that returns true if all the values in a Hash are even. 
#review 

class Hash
  def all_values_even?
    self.values.all?(&:even?)
  end
end

{a: 2, b: 4, c: 6}.all_values_even? # returns true
{a: 3, b: 6}.all_values_even? # returns false

# Monkey patching the Hash class allows us to define custom methods 
# that can be applied directly to hash objects.


#18) Convert animals to {'dogs' => 11, 'cats' => 3}.
#review

animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]

animals.inject(Hash.new(0)) do |memo, (animal, num)|
  memo[animal] += num
  memo
end

#19) Convert the people array to the following hash: 
# {"bob" => 320, "edgar" => 152, "maria" => 125}

people = [["bob", 320], ["edgar", 152], ["maria", 125]]
Hash[people]

#20) Return true if the boring hash has no elements and false otherwise.

boring_hash = {}
boring_hash.empty? 

#21) Create an array of the values associated with the :kesha and :missy_elliot keys.

singers = {
  kesha: "fun",
  pitbull: "how is this dude famous?",
  missy_elliot: "really smart"
}

singers.values_at(:kesha, :missy_elliot)

#22) Use h1 and h2 to construct the following hash: 
# {:surfing => "fun", :rock_climbing => "scary"}

h1 = {surfing: "fun"}
h2 = {rock_climbing: "scary"}

h1.merge(h2)

#23) Convert some_hash to [[:a, 123], [:b, 456]]

some_hash = {a: 123, b: 456}

some_hash.to_a

#24) Use the following Person class to create a person object with the 
# first_name "Mohammed" and the age 12.

class Person
  def initialize(args)
    @first_name = args.fetch(:first_name)
    @age = args.fetch(:age)
  end
end

m = Person.new({first_name: "Mohammed", :age: 12})

# Hashes are great to use as initialization arguments for classes.  
# When hashes are used as initialization arguments, the code is readable and 
# self documenting.  Additionally, argument order dependencies are eliminated 
# when hashes are used. 

#25) Create a hash with a default value of "cheese" so the hash 
# returns the string "cheese" if a key that does not exist in the hash is requested. 

my_hash = Hash.new("cheese")
my_hash.empty? # true because there are no elements in my_hash yet
my_hash[:bacon] = "yummy" # add key / value pair to the hash
my_hash[:salad] # returns "cheese" because the :salad key isn't in the hash
my_hash[:bacon] # returns "yummy"
