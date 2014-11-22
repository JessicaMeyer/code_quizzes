#Code Quizzes - Advanced Ruby - Object Model

# What does the following code print?  Explain.

class Pencil; end
p Pencil.class
 => Class

All class objects (objects that can be used to instantiate other objects)
are instances of the Class class.

# What does the following code print?  Explain.

class CompactDisc; end
cd = CompactDisc.new
p cd.class
 => CompactDisc 

The cd object is an instance of the CompactDisc class. 

# What does the following code print?  Explain.

Class.class
=> Class 

The Class object is an instance of itself. 

# What does the following code print?  Explain.

class Blink; end
p Blink.superclass
 => Object 

All user defined classes inherit from Object by default.

# What does the following code print?  Explain.

p BasicObject.superclass
=> nil

Every class object (i.e. instance of the Class class)
has a superclass, except for BasicObject. BasicObject
is at the top of the class hierarchy and does not have a superclass.

# What does the following code print?  Explain.

p BasicObject.singleton_class.superclass
=> Class 

BasicObjects singleton_class inherits from Class

# What does the following code print?  Explain.

class Seltzer
  private
  def bubbles; end
end

a_can = Seltzer.new
p a_can.bubbles
=> NoMethodError: private method 'bubbles'

Private methods cannot be called with an explicit receiver (a_can)

# What does the following code print?  Explain.

class Surfer
  def speak
    "My hair is #{self.hair}"
  end

  private

  def hair
    'golden'
  end
end

dude = Surfer.new
p dude.speak
=> NoMethodError: private method 'hair'

Private methods cannot be called, even if the explicit receiver is self.

# What does the following code print?  Explain.

class Pig
  protected
  def sound
    'oink!'
  end
end

piggy = Pig.new
p piggy.sound
=> NoMethodError: protected method 'sound'

Protected methods cannot be called with an explicit receiver.

# What does the following code print?  Explain.

class Fido
  def angry
    self.sound * 3
  end

  protected

  def sound
    'woof'
  end
end

p Fido.new.angry
=> "woofwoofwoof" 

Protected methods can be called with an explicit receiver, but only
if the explicit receiver is self. 
  
# What does the following code print?  Explain.

class IceCream
  @temp = 'cold'
end

p IceCream.instance_variables
 => [:@temp] 

Instance variales are bound to objects. Unless specified otherwise,
instance variables are bound to self. self is a keyword that points to 
different objects based on the context of the program. In this example
self points to the IceCream object, so the @temp instance variable is bound
to IceCream.

# What does the following code print?  Explain.

class Soccer
  @fun = 'woo hoo'
  def initialize
    @goal = 'score'
  end
end

s = Soccer.new
p s.instance_variables
 => [:@goal] 
Soccer.instance_variables
 => [:@fun] 

The @goal instance variable is bound to instances of the Soccer class.

The @fun instance variable is bound to the Soccer class object. 

# What does the following code print?  Explain.

h = {}
class Sublime
  @fav = 'caress me down'
  def sing(obj)
    obj.instance_variable_set(:@greeting, 'mucho gusto')
    obj.instance_variable_set(:@name, 'me llamo brad lee')
  end
end

s = Sublime.new
s.sing(h) 
#=> => "me llamo brad lee" 
p s.instance_variables
#=> []
p "***"
p h.instance_variables
#  => [:@greeting, :@name]
