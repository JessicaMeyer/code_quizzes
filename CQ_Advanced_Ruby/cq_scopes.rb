# Code Quizzes - Advanced Ruby - Advanced Ruby: Scope Gates, Top Level Context

# When does the scope change in a Ruby program.
# The scope changes whenever the program encounters the def, class, and module keywords.

# What does the following code print?  Explain.

p "***"
p self
class SnoopDogg; end

p "***"
 => "***" 
p self
 => main 
class SnoopDogg; end
 => nil

 # main is an instance of Object that is created whenever a ruby program is run. 
 # main is the top level scope or top level context of a ruby program.

# What does the following code print?  Explain.

p self
p "***"
class LessThanJake
  p self
end

self
 => main 
"***"
 => "***" 
class LessThanJake
  self
end
 => LessThanJake 

#  A program starts in the top level scope. When the program encounters the class keyword,
#  the scope changes to the class. When the context changes, the self keyword is reassigned to a different object. 

# What does the following code print?  Explain.

class Hockey
  p self
  p "***"
  def legend
    "Brian Leetch"
    p self
  end
end

Hockey.new.legend

=> Hockey
=> "***"
=> <Hockey:0x000001018ea790>

# When the program encounters the class keyword, it changes from the 
# top level scope to the scope of the Hockey class.  The program changes 
# scope to an instance of the Hockey class when it encounters the def keyword.  
# When a Ruby program runs, the scope is constantly changing, thus reassigning 
# the self keyword to new objects, taking old local variables out of scope, and 
# brining new local variables in scope.

# What does the following code print?  Explain.

x = "happy, happy, joy, joy"
class Stimpy
  p x
end

#=> NameError: undefined local variable or method `x' for Stimpy:Class
# x is a local variable in the top level scope. When the program hits the class keyword
# the context is changed to the Stimpy class and no local variable from other contexts
# are available. 

# What does the following code print?  Explain.

bieber = 'person'
class Weird
  y = 'boo'
  def hi
    z = 'sleepy generation'
  end
end
fever = 'sickness'

p local_variables

#=> [:bieber, :fever]


# What does the following code print?  Explain.

class DaddyYankee
  class << self
    p self
    p self == DaddyYankee.singleton_class
  end
end

#=> #<Class:DaddyYankee>
#=> true
# When the program encounters the class << self, the context changes to the DaddyYankee singleton clas. 

# Ruby does not have 'floating' functions that are not bound to any object.  
# All methods in Ruby are bound to an object.  What object is the following method bound to?  Explain.

def geek; end

# The geek method is a private instance method of the object class. all methods defined
# in the top level scope are private instance methods of the object class. 