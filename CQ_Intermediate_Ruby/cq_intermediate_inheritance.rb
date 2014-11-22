# Code Quizzes: Inheritance // Intermediate Ruby - Inheritance, Ancestors

# What does the following code print?

class Mammal
  def warm_blooded?
    true
  end
end

class Dog < Mammal; end

fido = Dog.new
p fido.warm_blooded?
#true 

# The dog class inherits from the Mammal class so the Dog class has access to all
# the methods that are defined in the Mammal class. 

# What does the following code print?

class Mammal
  def self.about
    "we are living creatures with hair"
  end
end

class Dog < Mammal; end

p Dog.about
# "we are living creatures with hair"
# class methods are also inherited 

# Refactor the following code to not use inheritance.

class Person
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end

class HockeyPlayer 
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end

player = HockeyPlayer.new
p player.full_name("joe", "sakic")

# to make DRY - 
class HockeyPlayer < Person; end

# What does the following code print?  Explain.

class Dog; end
p Dog.ancestors
[Dog, Object, Kernel, BasicObject]

# What does the following code print?  Explain.

module Purr; end
class Cat
  include Purr
end
p Cat.ancestors
[Cat, Purr, Object, Kernel, BasicObject]

# What does the following code print?  Explain.

class Shelter; end
class House < Shelter; end
p House.ancestors
[House, Shelter, Object, Kernel, BasicObject]

# What is the difference between the following two class definitions.

Class Definition #1
class Cat < Object
end

Class Definition #2
class Cat
end

# No difference

# What does the following code print?

class Parent
  def status
    "I am happy"
  end
end

class Child < Parent
  def status
    "ARGH"
  end
end

p Child.new.status
# "ARGH"

# The child class inherits the status method from the Parent class, but overwrites this method.

# What does the following code print?
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

class Doctor < Person
  def full_name
    "Dr. #{super}"
  end
end

dr_phil = Doctor.new("Phil", "McGraw")
p dr_phil.full_name
# "Dr. Phil McGraw"

# The doctor class is initialized with first_name and last_name inputs, as it inherits the
# initialize method from the Person class. The doctor class overwrites the full_name method, but 
# used the super keyword, which calls the full_name method. 

# Demonstrate how to create an instance of the Textbook class.  Explain.

class Book
  def initialize(args)
    @pages = args.fetch(:pages)
    @title = args.fetch(:title)
  end
end

class Textbook < Book
  def initialize(args)
    @chapters = args.fetch(:chapters)
  end
end

# text = Textbook.new({chapters: 20})

# The textbook class is initialized with a hash that must contain the key :chapters. 
# The textbook initialize method overwrites the book initialize method, so a textbook object
# does not need to be initliazed with a hash containing :pages or :title. 

# initialize is just like any other method that can be overwritten with inheritance.

# Demonstrate how to create an instance of the Saturn class.  Explain.

class Planet
  def initialize(mass, volume)
    @mass = mass
    @volume = volume
  end
end

class Saturn < Planet
  def initialize(mass, volume, number_of_rings)
    super(mass, volume)
    @number_of_rings = number_of_rings
  end
end

saturn = Saturn.new(100, 50, 12)

# The saturn class is initialized with mass, volume, and number_of_rings. To set the mass and volume
# instance variables, the saturn intialize method uses super to call the planet intialize method.
# super takes mass and volume arguments because the planet initialize method requires these two 
# arguements. After calling super the saturn intialize method sets the number_of_rings instance variable. 

# Is it appropriate for the human class to inherit from the Mammal class?
# Yes

# Is it appropriate for the Board class to inherit from the Game class?
# No, a board is not a game, so the "is a" test is ot met. 



















