# Code Quizzes - Advanced ruby - Singleton classes and methods

# Which class defines the Dog.about method?  Demonstrate that this class 
# includes the about method.

class Dog
  def self.about
    'we bark'
  end
end

Dog.about
=> "we bark"

Dog.about is a singleton method that is defined in Dogs singleton class:
Dog.singleton_class.instance_methods.include?:about #=> true
Every ruby object has a singleton class to store methods for a particular object.

# What does the following code print?  Explain.

class NewYork
  class << self
    def greeting
      "how you doin'?"
    end
  end
end

p NewYork.greeting
=> "how you doin'?"

The class << self syntax is used to access the scope of the NewYork singleton class.
Once inside the scope of the singleton_class, instance_methods are the same as singleton_methods.
NewYork.singleton_methods #=> [:greeting]

# What does the following code print?  Explain.

class Human
  def Human.about; end
  def self.generation; end
  def hi; end
  instance_eval do
    def bye; end
  end
end

p Human.singleton_methods
 => [:about, :generation, :bye] 

 Notice that the Human hi method is a regular instance method and is not a singleton method. 


# Describe the method lookup process for the following code.

class Ghost; end
casper = Ghost.new
casper.boo

casper is an instance of the Ghost class and is the receiver of the message :boo.
The receiver first looks in its singleton_class for a method named :boo. If it does
not find a method, it will continue up the ancestor chain to look for the method.

# Describe the method lookup process for the following code.

class Alpha; end
Alpha.profit

The :profit message is sent to the receiver, Alpha. Alpha looks for methods 
corresponding to the :profit message in the following order: Alphas singleton 
class, Object's singleton class, BasicObject's singleton class, Class, Module, 
  Object, Kernel and finally BasicObject.  method_missing is called if no 
  methods correspond with the :profit message.

# What is the superclass of BasicObject's singleton class?
Class

BasicObject.singleton_class.superclass #=> Class

The superclass of BasicObject is nil 



