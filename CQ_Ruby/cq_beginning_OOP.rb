# # Code Quizzes - Ruby - Beginning OOP 


# What is an object?

An object is an instance of a class. Think of a class as a factory that makes objects. 

# What does the initialize method do?

The initialize method is called whenever a new object based on the class is created. 

# What is the scope of local, instance, class, and global variables?

Local - can only be accessed in a given method

Instance - scope within the current object 

Class - accessed within the class

Global - access anywhere

# Define a Square class and a method in the Square class that counts how many 
# Square objects have been created.

class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else    
      @@number_of_squares = 1
    end
  end

  def self.count
    @@number_of_squares
  end
end

a = Square.new
b = Square.new
p Square.count
c = Square.new
p Square.count

# Create a Hello class and make a class method that prints "Hello from the class method" 
# and an instance method that says "Hello from the instance method."  
# Call both of these methods.

class Hello

  def self.hi 
    puts "hello from class method"
end

  def hi
    puts "hello from instance method"
end


Hello.hi #hello from class method
Hello.new.hi #hello from instance method
or 
hello = Hello.new
hello.hi #hello from instance method 


# What are two ways to define the class method "test" for the Square class.
self.test
or 

Square.test

If you do not classify a method as a class method, then ruby treats it as an instance method.

# Make an Animal class and a Human class and have the Human class inherit from the 
# Animal class. Add a method to the Animal class that returns "Hello from the Animal 
# class" and add a method to the Human class that puts "Humans are intelligent."  
# Set the variable "Bob" equal to an instance of the Human class and 
# call both of these methods on the Human object.

class Animal 
  def test 
      puts "Hello from the Animal class"
    end
end

class Human < Animal 
  def other
      puts "Humans are intelligent"
  end
end

bob = Human.new
bob.other
bob.test


# How do you determine when inheritance is appropriate?  Should Human 
# inherit from Animals?  

"is a" test

# Make a Person class that assigns a name to a person and a Doctor class 
# that inherits from the Person class.  
# Modify the name method in the Doctor class so it prints out Dr. + name

class Person 

    attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Doctor < Person
    def method 
      puts "Dr. " + super
  end
end

person = Person.new('Jessica')
person.method

# Extend the string class, so the upcase method makes all the letters of a 
# string lower case.

.downcase

# Assume doctor_phil is a variable that is assigned to an object 
# (i.e. an instance of a class).  
# Return all instance variables associated with doctor_phil.

doctor_phil.instance_variables

# Is it OK to have the same method name in different classes?

yes

# Explain the results of the following code:
class ParentClass
  def method1
    puts "Hello from method1 in the parent class"
  end

  def method2
    puts "Hello from method2 in the parent class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the child class"
  end
end

my_object = ChildClass.new
p my_object.method1
p my_object.method2

method2 in the ChildClass will overwrite the method2 in the ParentClass

# Add a Doctor Class to the following code, so the script prints "Dr. Bob" 

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Doctor < Person
  def name
    puts "Dr. #{@name}"   #notice how above super was used instead 
  end
end

bob = Doctor.new("Bob")
p bob.name

# What is polymorphism?

writing methods that can be used on multiple data types. ex: the to_s method works on strings,
arrays, hashes, and numbers. 

# Create a class called Numbers and add the constant Pi = 3.14 to the numbers class.  
# Show how to access Pi outside of the Numbers class.

class Numbers
  Pi = 3.14
end

Numbers::Pi

# Show two ways to access the what_am_i method and one way the what_am_i 
# method can not be accessed. 

class Drawing
  def Drawing.give_me_a_circle
    Circle.new
  end

  class Line
  end

  class Circle
    def what_am_i
      "This is a circle"
    end
  end
end

Two methods that work: 

a = Drawing.give_me_a_circle
a.what_am_i

a = Drawing::Circle.new
a.what_am_i

Method that does not work: 

a = Circle.new
puts a.what_am_i
#undefined constant

# What is the scope of constants?
Constants are defined within the scope of the current class and are
made available to all child classes

# What is the class of irb?
Object

# Define a Number module with a hello method that says "Hello from the Number module" 
# and a Letter module with a hello method that says "Hello from the LETTER module."  
# Then call these two modules and note that there is no name conflict even though 
# both modules use a method with the same name.

module Number
  def self.hello
   puts "hello from the number module"
  end
  end

module Letter
  def self.hello
   puts "hello from the letter module"
  end
end

Number.hello
Letter.hello

# What is the purpose of modules?
to organize methods, classes and constants into separate namespaces.

you cannot create an instance of a module and modules do not support inheritance.

# Define a Crane class in a Bird module and write a simple method in the class.  
# Define another Crane class in a seperate Machine module and write a simple 
# method in the class. Call the methods from the respective Crane classes and 
# note that there is no name conflict, even though the classes have the same name.
module Bird
class Crane
    def method
      puts "hello from bird crane class"
  end
end
end

module Machine
  class Crane
    def method
      puts "hello from machine crane class"
  end
end
end

bird1 = Bird::Crane.new
bird1.method

bird2 = Machine::Crane.new
bird2.method


# What is the shortcut way to write the following code?             
class Person
  attr_accessor :name, :gender, :age

  def initialize(name, gender, age)
    @name = name
    @gender = gender
    @age = age
  end
end

#shortcut:

Person = Struct.new(:name, :gender, :age)

# What is a better name for @board_array?

@board

# Write the methods that attr_accessor provides for free in the following ex:

class Person
  attr_accessor :name
end

attr_accessor just writes some code for you.
Notice that the attr_writer method is just a regular method b/c assignments in ruby
are just calls to regular methods. 

class Person
  def name 
    @name = name
  end

  def name=(name)
    @name = name
  end
end

# Is employee_id a good variable name to use in the Employee class?
no, you are already in the Employee class, so the variable name should be id

# Initialize an instance of the Dog class:

class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end
end

class Dog < Animal
end

dog = Dog.new("Spike", "Chihuahua")

#answer uses symbols instead of strings in parameters

# Initialize a new instance of the Dog class: 

class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end
end

class Dog < Animal
  def initialize(teeth)
    @teeth = teeth
  end
end

dog = Dog.new(12)

#the initialize method in the dog class has overwritten the initialize method 
# in the animal class. 


# Create an instance of the Dog class: 

class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end
end

class Dog < Animal
  def initialize(name, type, teeth)
    super(name, type)
    @teeth = teeth
  end
end

dog = Dog.new("Spike", "Chihuahua", 12) 
# super gets the name and type initialization from the Animal class 
# and the teeth initialization is added in the Dog class.

# Refactor the following code, so super is not required: 

class Cookie
  def initialize(baking_time)
    @baking_time = baking_time
  end
end

class ChocolateChip < Cookie
  def initialize(baking_time, num_choc_chips)
    super(baking_time)
    @num_choc_chips = num_choc_chips
  end
end

choc_chip_cookie1 = ChocolateChip.new(15, 100)
p choc_chip_cookie1

# refactored:

class Cookie
end

class ChocolateChip < Cookie
  def initialize(num_choc_chips)
    @num_choc_chips = num_choc_chips
  end

  def baking_time
    15
  end
end

choc_chip_cookie1 = ChocolateChip.new(100)
choc_chip_cookie1.baking_time


# What are the three most common methods to have classes interact?

1. inheritance
2. composition - creating objects and passing them in other classes
3. mixins - creating modules and including them in classes. 

# When is inheritance less desirable?

when a subclass will overwrite a lot of different methods from the parent 
class because then it gets harder to keep track of things.

# Update the following code so you can use the greetings method in the Hi class. 

module Hello
  def greetings
    "Greetings earthling"
  end
end

class Hi
  include Hello
  def sup
    "Whattup my people"
  end
end

Hi.new.greetings