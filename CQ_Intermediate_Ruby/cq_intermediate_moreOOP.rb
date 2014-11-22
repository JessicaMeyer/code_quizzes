DONE - review

# # Code Quizzes: More OOP - Intermediate Ruby - Monkey Patching, Modules

# # What does the following code print?

class Dog
  def name
    "Fido"
  end
end

class Dog
  def introduction
    "Hi, my name is #{name} and I like to woof"
  end
end

fido = Dog.new
p fido.introduction
# "Hi my name is Fido and I like to woof"

# The dog class is initially defined with the name instance method. 
# The dog class is then reopened and the introduction instance method is added. 


# What does the following code print?

class Array
def say_hi
"HEY!"
  end
end

p [1, "bob"].say_hi
# "HEY!"

# The array class was reopened and the say hi method was added for all 
# instances of the array class. 

# Add a method to the Array class that applies the String#downcase method to 
# every string object in the Array. 

class Array
	def downcase_strings
    self.map do |element|
      element.instance_of?(String) ? element.downcase : element
    end
  end
end

[1,"BOB","JESS"].downcase_strings

# Refactor the following class with the built-in Ruby shortcut getter method.

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

bob = Person.new("bob")
p bob.name

# refactored version:

class Person
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

bob = Person.new("bob")
p bob.name

# Refactor the following class with the built-in Ruby shortcut setter method.

class Train
  def initialize(sound)
    @sound = sound
  end

  def sound=(sound)
    @sound = sound
  end
end

train = Train.new("choo choo")
p train
train.sound = "chugga chugga"
p train

# getter methods return the value of an instance variable.

# refactored version:

class Train

	attr_writer :sound

	def initialize(sound)
		@sound = sound
	end
end

# setter methods update the value of an instance variable

# Refactor the following class with the built-in Ruby shortcut getter / setter method.

class Sky
  def initialize(color)
    @color = color
  end

  def color
    @color
  end

  def color=(color)
    @color = color
  end
end

sky = Sky.new("blue")
p sky.color
sky.color = "pink"
p sky.color

# refactored version: 

class Sky
	attr_accessor :color
	def initialize(color)
		@color = color
	end
end

# provides getter and setter methods to return the value of an iv, and update the value of the iv

# Use the following code to create an instance of the Cat class.

module Wrapper
  module Container
    class Cat
    end
  end
end

cat = Wrapper::Container::Cat.new

# The cat class is inside the wrapper and container modules. They need to be 
# referenced to instantiate instances of the Cat class

# Discuss how Modules are used to avoid namespace collisions 
# in the following example.

module Machine
  class Crane
    def self.about
      "Equipment for hoisting"
    end
  end
end

module Bird
  class Crane
    def self.about
      "Long neck"
    end
  end
end

p Machine::Crane.about   # Equipment for hoisting
p Bird::Crane.about      # Long neck

# There are two Crane classes with about() methods.  One Crane class is 
# namespaced in the Machine module and the other is namespaced in the Bird 
# module.  There are no name conflicts because the Crane classes are namespaced 
# in different modules.

# What does the following code print?  Explain.

module Desk
  COLOR = :brown
end

p Desk::COLOR
# :brown

# :: notation used to access constants in modules

# What does the following code print?

module Table
  TYPE = :wood
  module Speaker
    class Something
      def self.about
        "I like #{TYPE}"
      end
    end
  end
end

p Table::Speaker::Something.about
# " I like wood "

# nested modules and classes have access to constants that are defined in parent modules. 

# What does the following code print?

module Membrane
  module Layer
    DERP = "not change opinions, despite the facts"
  end

  class Economist
    def self.about
      "We love to #{Layer::DERP}"
    end
  end
end

p Membrane::Economist::about
# "we love to not change opinions, despite the facts"

# the derp constant is accessed in the Economist.about method as layer::derp.
# derp is not defined in economist, so it cannot be referred to directly. 
# the derp constant could also be referred to as: Membrane::Layer::DERP, but 
# the membrane portion of the reference is not necessary because economist is already 
# wrapped in the membrane module.

# What does the following code print?  Explain.

my_object = Object.new
def my_object.blah
  "blah blah blah"
end
p my_object.blah
" blah blah blah "

# Blah is a singleton method added to the my_object object.  
# Singleton methods are methods defined for a particular instance of a class,
# not all instances of the class. In this example, my_object responds to 
# the :blah message, but other instances of the Object class will not 
# respond to the blah message

# What does the following code print?  Explain.

class Dog; end
dog = Dog.new
def dog.bark
  "ruff ruff"
end
p dog.bark
# "ruff ruff"

#dog is an instance of the dog class and is given a singleton method bark. 
# the bark method can be called on the dog instance of the dog class, but is not 
# available for other instances of the dog class. 

# List all the singleton methods that are defined for the method_man object.

method_man = Object.new
def method_man.clan
  "wu-tang"
end
# method_man.singleton_methods
# [:clan]

# What does the following code print?

class Dog
  def self.life_purpose
    "serve master"
  end
end

Dog.singleton_methods
# [:life_purpose]

# dog is a class, but dog is also an object. Dog is actually a constant that
# refers to the dog class. "Class" methods in Ruby are really just singleton methods defined
# on the class object. 

# What does the following code print?

class Turtle; end
biggie = Turtle.new
def biggie.beak
  "sharp"
end
smalls = Turtle.new
p "Biggie's singleton methods #{biggie.singleton_methods}
   Smalls' singleton methods #{smalls.singleton_methods}"

# "Biggie's singleton methods [:beak]\n   Smalls' singleton methods []"
# The biggie object has the :beak singleton method, 
# but the smalls object does not have any singleton methods."

# Identify the objects in the following line of code.

random_stuff = [:tall, "dude", 45.23]

# random stuff is a variable that is assigned to an array (instance of the array class)
# the array contains a symbol, string and number

# Identify the object in the following code.

class Bird
end

# bird is a constant that is assigned to the value of the bird class. 
# the bird class is an instance of the class class. since the bird class
# is an instance of a class, the bird class is an object. the bird class
# is a special type of object that is used to create new objects.





