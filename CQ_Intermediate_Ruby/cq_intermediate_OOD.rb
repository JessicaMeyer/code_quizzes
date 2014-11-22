# Code Quizzes - OOD // Intermediate Ruby - Object Oriented Design

# Suppose the Dog class is responsible for parsing a CSV file to create dog objects 
# and implementing the behavior of dog objects.  Should the Dog class be refactored?

Yes, it should be refactoed. Classes should only have a single responsibility.

# Why is good design important?  Is good design ever unimportant?
Good design creates software that is easy to maintain and change. 

# What is the main goal of software design?
Make software that is easy to change. 

# Identify the dependency in the following code:

["nice", "person"].join(" ")

The code depends on arrays responding to the join message.

# Identify the dependencies in the following code:

class A
  def self.add(x, y)
    x + y
  end
end

class B
  def lala
    "2 plus 2 equals #{A.add(2, 2)}"
  end
end

p B.new.lala

Class B will break if class A is renamed, the A.add method is deleted, or the A.add method
is changed to not take two arguments. 

# Identify the dependencies in the following code.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Beatles
  def drummer
    Person.new("Ringo Starr", 74)
  end
end

The name of the person class, initialize method arguments 
A dependency can also be thought of as stuff a class needs to know about another class. 

# Refactor the following class to remove the argument-order dependency.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Yankees
  def captain
    Person.new("Jeter", 39)
  end
end

#refactored: 

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Yankees
  def captain
    Person.new({ name: "Jeter", age: 39 })
  end
end

# Use the dependency injection to refactor the following code:

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Hockey
  attr_reader :great_one
  def initialize
    @great_one = Person.new({ age: 52, name: "Gretzky" })
  end
end

p Hockey.new.great_one

# refactored:

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Hockey
  attr_reader :great_one
  def initialize(great_one)
    @great_one = great_one
  end
end

person = Person.new({ age: 52, name: "Gretzky" })
p Hockey.new(person).great_one

# Refactor the code to reverse the dependency direction and have the Person class
# depend on the DataStructureConversion class. 

class Person
  def initialize(name)
    @name = name
  end
end

class DataStructureConversion
  def initialize
    @person = Person.new("bob")
  end

  def to_hash
    @person.instance_variables.inject({}) do |memo, var|
      memo[var] = @person.instance_variable_get(var)
      memo
    end
  end
end

p DataStructureConversion.new.to_hash

#refactored: 

class Person
  def initialize(name)
    @name = name
  end

  def to_hash
    DataStructureConversion.to_hash(self)
  end
end

class DataStructureConversion
  def self.to_hash(object)
    object.instance_variables.inject({}) do |memo, var|
      memo[var] = object.instance_variable_get(var)
      memo
    end
  end
end

p Person.new("bob").to_hash

The DataStructureConversion class can now be easily reused by other classes.  
In general, it is best to have less stable classes depend on more stable classes.


# Class A is a rapidly changing class and class B is a relatively stable. 
# Should class A depend on class B or should class B depend on class A?

Yes
