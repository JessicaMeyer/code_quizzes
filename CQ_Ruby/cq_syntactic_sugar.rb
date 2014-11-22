# Code Quizzes - Ruby - Syntactic Sugar

# Rewrite this expression with explicit syntax:
# 3 + 4

explicit:
3.send(:+, 4)

# Rewrite this expression with explicit syntax.
# "nice".upcase

explicit:
"nice".send(:upcase)

a = ["zero", "one", "two"]

# Rewrite this expression with explicit syntax:
# a = ["zero", "one", "two"]
# a[0]
a.send(:[], 0)

# Rewrite the following expression with explicit syntax:
"bob" * 3

explicit:
"bob".send(:*, 3)

# Show how to update the @name variable with the name=() method 
# without using syntactic sugar.


class Person
  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end
end

The @name variable can be updated with the following syntactic sugar:
craig = Person.new("Craig")
craig.name = "Jenny Craig"

answer:
phil = Person.new("Phil")
phil.send(:name=, "PHILLIP")

# Why does the living_animal?() method have a question mark after it?

class Human
  def living_animal?()
    true
  end
end

#The question mark does not have any special meaning. It is a ruby convention 
# to add a question mark to Ruby methods that return true or false.

# Describe how the add() method can still return a value even though it 
# does not have an explicit return() statement and explain how the add() 
# method is called without surrounding the arguments in parenthesis.

class Calculator
  def add(x, y)
    x + y
  end
end

calc = Calculator.new(3,4)

# Ruby functions automatically return the last expression that was evaluated, so
# explicit return statements are not always required. 

# Explain how the computer object has access to the type() method:
# mac = Computer.new("Mac")
# puts mac.type()

class Computer
  attr_reader :type
  def initialize(type)
    @type = type
  end
end

# attr_reader :type automatically adds the following method to the Computer class:
# def type
#   @type
# end

# Explain how the computer object has access to the type=() method:
# mac = Computer.new("Mac")
# mac.type = "PC"

class Computer
  attr_writer : type
    def initialize(type)
      @type = type
    end
  end

 # attr_writer :type adds the following method and updates the name 
#  def type=(type)
#   @type = type
# end

# Methods are called in Ruby with the following syntax: object, 
# followed by dot, followed by method name.  In the following example, 
# ["sup", "dude"] is the object and count() is the method.
["sup", "dude"].count()

# Describe how the first_name() method is being called in the following example.

class Person
  def first_name()
    "Skee-Lo"
  end

  def intro()
    "My name is " + first_name
  end
end

skee = Person.new
skee.intro

# The intro method calls the first_name method and the object that the method is being
# called on is referred to as self. self is implicit in Ruby but it can also be used
# explicitly:
# def intro()
#   return "my name is " + self.first_name()
# end

# Symbols are similar to Strings, but have fewer methods and are more 
# sparing of computer resources.

def weird_string(sym1, sym2)
  return "#{sym1.to_s} and #{sym2.to_s} were converted to strings"
end

What does this line return:
weird_string :ren, :stimpy
=> "ren and stimpy were converted to strings"

# Is the stuff Hash valid?

stuff = { "name": "Tom", "weight": 445 }

# no it is not valid
# the shortcut hash syntax can only be used when the keys are symbols. 

def arg_and_hash(arg, hash)
  return "arg: #{arg} AND hash: #{hash}"
end

# What does this line of code return?

arg_and_hash 4, a: 5, b: 7, kung: "foo"

=> "arg: 4 AND hash: {:a=>5, :b=>7, :kung=>\"foo\"}"

# When a hash as passed as the last argument in a method the curly 
# braces are optional.  

# When parenthesis and curly braces are used, it is much more clear 
# that arg_and_hash() is a method that takes two arguments.

arg_and_hash(4, { a: 5, b: 7, kung: "foo" })

# What does this line of code return?

def hash_and_arg(hash, arg)
  return "hash: #{hash} AND arg: #{arg}"
end
# raises an error
# correct syntax:

hash_and_arg({a: 5, b: 7, kung: "foo"}, 42)


# Blocks are a type of Ruby closure and allow coders to yield a code 
# block when iterating.  What does the following code return?  Explain your answer.

[1, 2, 3, 4].map() { |number| number * 2 }
=> [2, 4, 6, 8]
# maps through array and returns a new array with the number * 2

What does the following code return?  Explain your answer.

[1, 2, 3, 4].map() do |number|
  number ** 2
end
[1, 4, 9, 16]
# maps through array and returns a new array with the number to the power of 2

# Blocks can also be delimited with do and end.  The Array.map() method 
# iterates over every element of the [1, 2, 3, 4] object, 
# and every element of the array is yielded to the block:
do |number|
  number ** 2
end

# Ruby is whitespace insensitive, so blocks delimited with { } 
# can be multiline and blocks delimited with do and end can be on a single line.  
# The convention is to delimit multiline blocks with do and end and single 
# line blocks with { }.

Here is some Ruby code that is generated from a Rails migration.  Describe every component of the code.

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.float :credits
      t.timestamps
    end
  end
end
# CreateCourses is a class that inherits from ActiveRecord::Migration.

# change() is a method that does not take any arguments.

# create_table() is a method that takes one argument (:courses) and the 
# following block is appended to the create_table() method:
# do |t|
#   t.string :name
#   t.float :credits
#   t.timestamps
# end

#  Explain how the kitty object has more than 50 methods 
# even though no methods are defined in the Cat class.

class Cat
end

kitty = Cat.new
kitty.methods().count()

# the cat class inherits from object implicitly. explicit syntax makes it more obvious
# that the cat class is inheriting from object. example:

class Cat < Object
end