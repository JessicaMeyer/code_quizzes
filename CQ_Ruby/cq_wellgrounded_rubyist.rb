# Code Quizzes - Ruby - Well Grounded Rubyist

# What is the default object?

the object that is used if the class of a method is not specified. All functions in ruby
are methods with an associated class, even if the class is not explicitly noted. 

# Use irb to define a method that multiplies two numbers.
def multiply(a,b)
  puts a * b
end

multiply(3,5)

# Use the prior question to fill in the blank: multiply is a method of the _______ class.
Object class

# What was the default object when the multiply method was created?
Object was the default object
self.class

# Identify the object, message, method, and receiver in the following example.
x = 5.to_f

5 - object, receiver
to_f - message sent to object 5

# How are messages sent?
with a dot operator

# Show two ways to use the add method in the following class to 
# calculate the sum of two numbers:

class Calculator
  def add(a,b)
    return a + b
  end
end

c = Calculator.new
c.add(3,4)

# Create a Person class that creates people with a name.  Be explicit about what class 
# Person inherits from, even though the explicit syntax is not required.  
# Add a name instance method.

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end

end


# Check if the person.rb program has any syntax errors from the command line.
$ ruby -cw person.rb

ruby is the Ruby interpreter
-c checks for syntax errors
-w enables verbose mode and performs a more stringent set of checks for syntax errors

# How are objects created?
Objects are instances of a class( in Ruby, objects are instances of exactly one class )
Think of a class as a factory that makes objects. 

# Can Ruby objects learn behaviors (i.e. acquire additional methods) that 
# were not given to the object when it was created by the class?

Yes

# Create an instance of the Object class in irb.

my_object = Object.new

# Add a hi method to my_object that prints "HELLO!".

def my_object.hi
  puts "HELLO!"
end

my_object.hi

# Describe the object, message, and receiver in the prior example.
The object is my_object

hi is the message that is sent to the object 

my_object is the receiver of the message

The message that is being sent is the name of the method

# Give my_object an add method that returns the sum of two numbers.
def my_object.add(x,y)
  return x + y
end

my_object.add(2,4)

# What is returned from the following method call?

def sup
  puts "Hi"
end

nil is returned. 

something is returned from every method call and if the method does 
not have any expressions, then nil is returned. 

# Describe the true object

The true object is an instance of the TrueClass

true.class

There is only one true object, so every instance of true has the same object_id. 

# Do objects in Ruby have a truthy/falsey value?  Explain.
Yes, all Ruby objects have a truthy/falsey value. 

** All ruby objects are considered true except false and nil 

# Demonstrate that the Fixnum object 0 (zero) is considered true in Ruby.

0 ? "0 is true" : "0 is false"
=> "O is true"

!!0
true
# Create an instance of the Object class and see how many methods are 
# available when an object is created.

Object.new.methods.sort

# What is an object ID?
A unique ID that is associated with every object in Ruby 

# Find the object_id for a "bob" object.  How many digits does the "bob" object_id have?
"bob".object_id
 => 2156399740

"bob".object_id.to_s.split("").length
=> 10 

# Create two "bob" objects and see if they have the same object_id.
"bob".object_id == "bob".object_id 
=> false 

# Create two :bob symbols and see if they have the same object_id.
:bob.object_id == :bob.object_id
 => true 

# How many methods does the "bob" object have? 
"bob".methods.count 
=> 162

# How many methods does the :bob object have?
:bob.methods.count
=> 79


# Return true if "bob" has the reverse method and false otherwise.
"bob".methods.include?(:reverse)
=> true
or

"bob".respond_to?(:reverse)

# Return true if :bob has the reverse method and false otherwise.
:bob.respond_to(:reverse)
=> false

# Use send to reverse the string "Frank."
"Frank".send(:reverse)
 => "knarF" 

# What is the difference between the send and public_send methods?
send can call and objects private methods and public_send cannot. 

# Define a method called sum that takes an arbitrary amount of 
# arguments and returns the sum.

def sum(a,b,c)
  return a + b + c
end

sum(1,2,4)

their answer:

def sum(*args)
  args.inject(&:+)
end

# Redefine the sum method, so it throws an error if there are less than 
# 2 arguments, but accepts any amount of arguments greater than 2.

def sum(a,b, * args)
  args.push(a, b).inject(&:+)
end

# Explain the values of the peeps, me, and you variables after 
# this function is run with the inputs below.

def people(*peeps, me, you)
  p peeps
  p me
  p you
end

people("bob", "joe", "frank", "powers", "codequizzes_person")

peeps is an array of "bob", "joe", and "frank"

the me variable is assigned to a value of "powers"

the you variable is assigned to a value of "codequizzes_person"

# Make a method called awesome_country that takes an argument with a 
# default value of Kazakhstan.
  def awesome_country(name = Kazakhstan)
    name
  end

  awesome_country
  => "Kazakhstan"

  awesome_country("Poland")
  => "Poland"

# What is name called in the following example and what is its scope?

def hi
  puts "Enter your name: "
  name = gets.chomp 
  "Hello #{name}"
end

name is a local variable. The scope of name is local to the method, which means that
the variable name has no special meaning outside of the hi method. 

# Define a method that switches the value of x and y.
def switch (x,y)
  x,y = y,x
end

# Do Ruby variables typically hold object values or references to objects?
ruby variables contain references to objects, except variables that refer to true, false,
nil or integers

# Explain the difference between the x and y variables below.
x = "YO"
y = 5

x is in reference to a String object. 
y is an immediate value representation of a Fixnum object. 

# How many "matt" objects are there?  How many nil objects are there?
many "matt" objects can be made, so there can be zero or many "matt" objects. 
however, there is only one true, false, nil and 100 object (one object per Fixnum)

# Demonstrate that new objects can be created for some built-in classes, 
# but not for others.  Explain why this is the case.

These built in classes allow for new objects to be created:

String.new("bob")
Array.new([1,2,3])

These built in classes do not allow for new objects to be created:

Fixnum.new(100)
TrueClass.new
FalseClass.new
NilClass.new

There is only one true, false, nil and 100 object (one object per Fixnum), so new 
instances cannot be created. 

# Update the "bob" object to be "BOB" and explain how that will impact the value of b.

a_string = "bob"
b = a_string
b.upcase
"bob".upcase

# What does b refer to in the following example?
arr = [1]
b = arr
b = [4, 5]

b is referring to [4,5].

# Is this allowed in Ruby?
# >> CONSTANT = 5
# >> CONSTANT = "constants aren't so constant anymore"
Yes, constants can be reassigned by IRB will give you a warning. 

# Make it so the following string cannot be modified.
awesome_city = "San Francisco"
awesome_city.freeze

# What is a keyword?  How does Ruby differentiate between 
# keywords, variables and methods?

A keyword is a reserved word that has special meaning in Ruby 

Ruby maintains a list of keywords to reference when parsing code.

A word to the left of an equals sign is a variable 

Everything else is considered to be a method call. 

# Are classes an object?

Yes

# Define an empty Dog class and explain the components.
class Dog
end

# Add a bark method to the Dog class that returns "ruff ruff".

class Dog
  def bark 
    puts "ruff ruff"
  end
end
 
# add a fight method that returns "RRRRRR ruff ruff"

class Dog
  def bark
    puts "ruff ruff"
  end

  def fight
    puts "RRRRRRR ruff ruff"
  end
end

# What is the bark method called?

The bark method is an instance method. It is made available to all instances of the Dog class.

# Delete the fight method from the Dog class. Reopen the Dog class 
# and add a meow method that returns "Hell no".

class Dog
  def bark 
    puts "ruff ruff"
  end

  def meow
    puts "hell no"
  end
end

fido = Dog.new
fido.bark
fido.meow

# What is the state of an object?  What is the behavior of an object?

The state of an object is what the object knows (the data that the object has). The behavior
of an object is what it can do with its methods.

# How do Ruby objects retain state?  Explain the properties of the mechanism 
# that Ruby objects use to retain state.

Ruby uses instance variables to retain state and these have the following properties:

a) preceded with @ 
b) only accessible within the object 
c) accessible by all the Classes instance methods.

# What does the initialize method do?
the initialize method runs every time a new instance is created. 

# Make a cat class and assign a name to every cat that is created.  
# Add a method that returns the name of a given cat.

class Cat
  attr_accessor :name

    def initialize(name)
      @name = name
  end

    def cat_name
      puts "The cat's name is #{@name}."
    end
end

cat = Cat.new("josie")
cat.cat_name
#change the name 
cat.name = "spanky"
cat.cat_name

# Create a Mammal class with height and weight attributes and a 
# Human class than inherits from the Mammal class.

class Mammal 
  attr_accessor :height, :weight
    def initialize(height, weight)
      @height = height
      @weight = weight
    end
  end

  class Human < Mammal
  end

# Does it make sense for the Human class to inherit from the Mammal class?
yes, because a human is a Mammal

# Create a human object and demonstrate that the human is an instance 
# of the human class and that it inherits from the Mammal class.

human = Human.new("6'1", 180)

# Call the height method on a human object and discuss how the inheritance process works.
human.height

# got undefined method error

The human class does not have a height method, but it inherits one from the mammal class.
The human class also inherits the initialize method from the mammal class and this is why
human objects must be initialized with height and weight attributes. 

# How many superclasses can a subclass have?

A class can only inherit from a single parent classs. 

# Print the parent class of the human object.
Human.new.class.superclass
=> Mammal

# Print the superclass of the Mammal class.
Mammal.superclass
=> Object 

All classes that we will make in Ruby inherit from Object 

# What class does Object inherit from?
BasicObject

# Demonstrate how many instance methods Object has and how many 
# instance methods BasicObject has.

Object.new.methods.count 
=> 55

BasicObject.new.methods.count
=> undefined, BasicObject does not have a methods method.

# Can classes receive messages?
Yes, classes are objects and can receive messages. 
Additionally, methods can be assigned to classes. 
Classes are similar to any other object except they also have
the special ability to create new objects. 

# Create a Dog class.  What is the class of the Dog class?  
# What is the class of the Object class?
class Dog
  end

  Dog.class => Class
  Object.class => Class

# Where is the new method defined?  Explain.
The new method is an instance method of the Class class. 
Classes inherit from Class inherit the new method and can use this method
to make objects. 

demonstrate that new is an instance method of Class:
Class.instance_methods.include?(:new)
=> true

The class class also has a new class method that used to make new
instances of the Class class 
Class.new

# What is the superclass of Class?
Class.superclass
=> Module

# What is a class method?
A method defined directly on a class object. Messages for class
messages are sent to a class rather than an instance of the class. 
A "class method" is really an instance method because classes are objects in Ruby. 

# What does Cat#sound refer to?
the sound instance method of the cat class

# What does Cat.category refer to?
the category class method of the cat class. Cat::category is another way to identify the 
category class method of the Cat class. 

# Access the constant in the following code directly, via the class method, and 
# via the instance method.

class GetUpKids
  HELLO = "YOOOO"

  def self.sup
    HELLO
  end

  def nice
    HELLO
  end
end
GetUpKids::HELLO  => "YOOOO"
GetUpKids.sup  => "YOOOO"
GetUpKids.new.nice => "YOOOO"

# Show the two ways that this constant can be changed: 
SACRED_TETRAD = [1, 2, 3, 4]

Option 1: Make SACRED_TETRAD refer to a different object:

SACRED_TETRAD = [1, 2, 3, 4, 5]

Option 2: Change the object that SACRED_TETRAD refers to:

SACRED_TETRAD << 5

