DONE

# Code Quizzes: Instance Variables, Constant, Messages

#1) What does the following code print?  
# Explain how the @bark instance variable is used in the speak() method.

class Dog
  def initialize
    @bark = "ruff ruff"
  end

  def speak
    "I like to #{@bark}"
  end
end

fido = Dog.new
puts fido.speak()

#=> "I like to ruff ruff"

# The @bark instance variable is set to the value "ruff ruff" in the initialize() 
# method. Instance variables can be accessed by any instance methods in a class 
# and are used to maintain "state" (state is the data that objects "know").

#2) What does the following code print?  Explain the result.

class Computer
  def initialize
    @sound = "beep beep"
  end

  def self.about
    "Sometimes I go #{@sound}"
  end
end

p Computer.about

#=> "Sometimes I go"
# The about method is a class method and does not have access to the @sound instance variable.
# @sound is only available to the instance methods. 

#3) What does the following code print?

class Xyz
  def pots
    @nice
  end
end

xyz = Xyz.new
p xyz.pots

#= > nil 
# The @nice iv has not been asigned to anything so default value is nil

#4) What does the following code print?

class Xyz
  def paper
    unassigned_local_variable
  end
end

xyz = Xyz.new
p xyz.paper

#= > undefined local variable or method `unassigned_local_variable'

#5) What does the following code print?  
# Explain what happens when the meaning_of_life() method is run multiple times for a given object.

class Something
  def meaning_of_life
    @result ||= result
    "The meaning of life is the number #{@result}"
  end

  def result
    Math.log10(100) * 42 - 48 - 13
  end
end

something = Something.new
p something.meaning_of_life

# => "The meaning of life is the number 23.0"
# When the meaning_of_life() method is run, the return value of the result() method is 
# assigned to the @result instance variable, but only when @result is nil.  
# When the meaning_of_life() method is initially run, @result is nil, so the code in the 
# result() method is executed.  When the meaning_of_life() is run again, @result is not nil, 
# so the result() method is not executed.

# The ||= operator (pronounced "or-equal operator") is useful for caching values in 
# instance variables and preventing code from needlessly running when values have already 
# been calculated.


#6) What does the following code print?  Explain.

class Cup
  PURPOSE = "hold liquids"
  def main_use
    PURPOSE
  end
end

tea_cup = Cup.new
p tea_cup.main_use

#=> "hold liquids"
# Purpose is a constant that is assigned to the value "hold liquids"
# Constants are accessible by instance methods. 

#7) What does the following code print?  Explain.

class Chair
  AGE = "been around the block"
  def self.about
    "I'm old and I've #{AGE}"
  end
end

p Chair.about

#=> "I'm old and I've been around the block"
# The AGE constant is assigned to the value "been around the block". 
# The age constant is accessible by the about class method.

#8) What does the following code print?  Explain.

BEST_MOVIE = "Clueless"
BEST_MOVIE = "Mean Girls"
p BEST_MOVIE

#=> Mean Girls 
# BEST_MOVIE is a constant and can be reassigned to another value just like other 
# variables.  Constants are not constant if they are being reassigned, so reassigning 
# constants is not advisable.  Ruby will give you a warning when you reassign 
# a constant, but does not raise an exception and allows the reassignment to take place.

#9) What does the following code print?  Explain.

class Bottle
  DRANK = "lemme hit that"
end

p Bottle::DRANK

# "lemme hit that"

# The Bottle::DRANK allows the constant to be accessed outside of the class.  
# This namespacing of constants is useful, so there is not a namespace collision 
# if there is another DRANK constant in a different class.

#10) Explain the following statement: "Everything in Ruby is an object, 
# so there are no standalone functions in Ruby, all functions are really methods".

#11) Explain how the Pig#main_desire method can call the weight() method without 
# using the keyword self.

class Pig
  def weight()
    "500 pounds"
  end

  def main_desire()
    "eat all day and be more than #{weight()}"
  end
end

piggy = Pig.new()
piggy.main_desire()

#When piggy.main_desire() is called, the piggy object must locate the value 
# of the weight() method to respond.  

# When an explicit self is not used (i.e. self.weight()), Ruby falls back 
# to the implicit self value.  The implicit self equals the object itself 
# in instance methods.  In this example, the implicit self refers to the 
# piggy object.

#12) Explain the Fan.about method and why the about() method definition uses 
# the keyword self.

class Fan
  def self.about
    "my job is to keep people cool"
  end
end

p Fan.about

# The Fan.about method is a class method, meaning that the about method is 
# defined directly on the Fan class object.  Notice that the about message 
# needs to be sent to the Fan object itself, not instances of the Fan class.  
# The default value for self is the class itself for code that is in the class 
# definition, but not in an instance method.

#13) What does the following code print?

class Woman
  SELF = self
end

p Woman::SELF

# => Woman

# SELF is a constant value and self is a special reserved keyword in Ruby.  
# In this example, the SELF constant is assigned to the value of the special 
# reserved keyword.  When self is in the class definition, but not in an i
# nstance method, it refers to the class itself, or Woman in this case.

#14) What does the following code print?  Explain.

class Dude
end

def Dude.motto
  "Cowabunga"
end

p Dude.motto

#"Cowabunga"

# The Dude class is initially defined without any instance or class methods.  
# The Dude.motto method is then defined as a singleton method on the Dude object. 
# Singleton methods are methods that are defined for a particular object 
# (as opposed to instance methods that are defined for all objects made by the 
# class).  Class methods in Ruby are really just singleton methods defined 
# for the class object.

#15) What does the following code print?  Explain.

class Phone
  def Phone.job
    "Distract you from life"
  end
end

p Phone.job

#=> "Distract you from life"

# The Phone.job class method is a singleton method on the phone class.  
# Both the self keyword and the Phone class object name can be used to define 
# class methods.  Here is another way to write the code with the same behavior.

class Phone
  def self.job
    "Distract you from life"
  end
end

#16) What does the following code print?
def blah
  "blah blah"
end

class Dog
  def speak
    "I am #{blah}"
  end
end

p Dog.new.speak

# "I am blah blah"

#17) Identify the object, message, method, and receiver in the following example.

x = 5.to_f
# 5 is the object and receiver of the message, to_f message and method 

#18) Use the following code to describe how the message is sent, 
# the receiver of the message, and the content of the message.

"table".upcase() # table is the receiver of the upcase method

#19) Describe the message and receiver in the following example.

class Calculator
  def add(x, y)
    x + y
  end
end

my_calculator = Calculator.new
my_calculator.add(3, 4)

# my_calculator is the calculator object that is the receiver of the add message.
# When the my calc object receives the add message, it invokes the add method. 


#20) Describe the message receiver and message in the following example.

3 + 4 # 3 is the receiver of the + message

#21) Describe the message sender, message receiver, and message when the 
# Circle#area method is called in the following example.

class Circle
  def area(radius)
    calc = Calculator.new
    calc.pi * radius ** 2
  end
end

class Calculator
  def pi
    3.14
  end
end

my_circle = Circle.new
p my_circle.area(3)

#When the Circle area method is called the my_circle object (message sender) sends 
# the "new" message to the Calculator class to instantiate a calc object.  
# Then the my_circle object sends the "pi" message to the calc object (message receiver) 
# to compute the area.

# The message sender sends messages and the message receiver is responsible for 
# finding a method corresponding to the message in the inheritance chain, invoking 
# the method, and responding with a value.

















