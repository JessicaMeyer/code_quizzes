#Code Quizzes - Advanced Ruby - Module Include and Extend

# What does the following code print?  Explain.

module M
  def hi
    'hey hey'
  end
end

class A
  include M
end

p A.instance_methods.include? :hi
=> true

# What does the following code print?  Explain.

module Stuff
  def self.hi
    'hey there partner'
  end
end

class Lamp
  include Stuff
end

p Lamp.hi
=> NoMethodError: undefined method 'hi'

The hi method lives in the singleton class of the Stuff module
and is ignored when Stuff is included in the Lamp class. 

# What does the following code print?  Explain.

module AAA
  def hi
    'AAA#hi' 
  end
end

class Money
  class << self
    include AAA
  end
end

p Money.hi
 => #<Class:Money> 
 => "AAA#hi"

The class << self syntax is used to change the scope to Moneys singleton
class. The modules methods are added to the singleton class as instance 
methods when the module is included in the singleton class.

# What does the following code print?  Explain.

module AAA
  def hi; 'AAA#hi'; end
end

class Money
  extend AAA
end

p Money.hi
 => "AAA#hi"

extend is another way to add methods to the singleton class of a class.


# What does the following code print?  Explain.

module Ghost
  def self.boo; end
  class << self 
    def hi; end
  end  #def hi within this class/end 
  def bye; end
end

p Ghost.singleton_methods
=> [:boo, :hi]

The boo and hi methods are bound to ghosts singleton class. 

# Add code to the Bob module so both of the following print 
# statements can run without raising and exception.

module Bob
  def job
    "gettin' loaded"
  end
  # module_function :job - creates singleton methods for the module object
end

class A
  include Bob 
end

p Bob.job
p A.new.job

# What does the following code print?  Explain.

module Simpsons
  def homer; end
  module_function :homer

  instance_eval do
    def bart; end
  end
end

p Simpsons.singleton_methods
=> [:homer, :bart]

instance_eval evaluates a block of code in the context of 
an object (the implicit self in this example) and can also be 
used to add singleton methods.

# What does the following code print?  Explain.

module Window
  def hi; 'Window#hi'; end
end

module Shade
  def hi; 'Shade#hi'; end
end

class BBB
  include Window
  include Shade
end

p BBB.new.hi
=> "Shade#hi"

Included modules are added to the method lookup chain right after the including
class (BBB in this case). Window is added to the right of the BBB in the 
method look up chain and then Shade is added to the right of the BBB 
in the method lookup chain. Therefore, Ruby looks for methods in Shade 
before looking for methods in Window. 

# What does the following code print?  Explain.

module X; end
module Y; end
class Z
  include Y
  include X
end

p Z.ancestors
=> [Z, X, Y, Object, Kernel, BasicObject] 

# What does the following code print?  Explain.

module Cat; end
module M; end
class Feline
  extend Cat
  class << self
    include M
  end
end

p Feline.ancestors
=> [Feline, Object, Kernel, BasicObject] 


# Update the code to bypass the module scope gate.

x = 'i am variable'
module M
  def silly
    x
  end
  module_function :silly
end

p M.silly

#new code

x = 'i am variable'
M = Module.new do
  define_method(:silly) do
    x
  end
  module_function :silly
end

# What does the following code print.

module Batman
  def self.sidekick
    'robin'
  end
end

p Batman::sidekick
=> 'robin'

# Explain what the following code prints and how it works.

module M
  def self.included(obj)
    obj.extend(SingletonMethods)
  end

  def yo; 'yo yo'; end

  module SingletonMethods
    def hi; 'hey hey'; end
  end
end

class C
  include M
end

p C.new.yo
p C.hi

'yo yo'
'hey hey'

This is a common Ruby design pattern to include instance methods 
and singleton methods to a class from a single module.  The M.included? 
callback method is run when M is included in C and enables the 
singleton methods to be included in the singleton class.  This is a 
nifty design pattern thats used by many Ruby libraries and should 
be memorized.