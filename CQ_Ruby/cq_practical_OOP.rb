# Code Quizzes - Ruby - Practical OOD 
definitely review 

# What is the main advantage of writing object oriented code?

easier to maintain as the code base evolves

# Does design matter if the program is completely specified in advance 
# and will never change?

No, design does not matter if the program is completely specified and will never change.
However, most programs change so proper design usually matters 

# How do objects interact?

They send messages to each other

# What is a dependency between two objects?

when the object that is a sender of a message has to know things about the object
that is a receiver of the message. 

# What is the main purpose of object oriented design?

managing dependencies between objects and minimizing how much objects know about each other. 

# What is design?

The art of arranging code 

# If we know that the code will change in the future, why dont we just 
# anticipate the changes that will be made instead of spending time 
# managing dependencies between objects?

It is impossible to predict how software will change. It is better to just focus on 
designing the code well, so that it is flexible and can be changed when new features are added. 

# Should you design an entire program up-front (i.e. design all the features 
# and their inner workings up-front)?
No 

# Are there objective ways to assess the quality of code?
Yes, there are ruby gems that assess code quality. The ruby gems can reliably check if the code
is poor quality, but may give false properties and give good scores to code that is over designed.

# What are your goals when you model an application with classes.
Have the application do what it is supposed to do now that is also easy to change later. 

# What is the key characteristic of a well designed class?

a well designed class has a single responsibility that is clear and well defined. you
should be able to describe the purpose of the class in a single sentence that does not 
use "and" or "or".

# Create a post class with title and body attributes and a method that 
# calculates the average word length of the post body. Call the method with an example.

class Post
  attr_reader :title, :body

    def initialize(title, body)
      @title = title
      @body = body
    end

    def word_length 
      words = body.split
      words.inject(0) {|memo, word| memo += word.length} / words.count.to_f
    end
end

post = Post.new("hello there", "what's going on")
 => #<Post:0x0000010192a3b8 @title="hello there", @body="what's going on"> 
2.1.0 :194 > post.word_length
 => # 4.333333333333333 

# Add a comment attribute to the Post class and a method that calculates 
# all the words in the title, body, and comment.

class Post
  attr_reader :title, :body, :comment

    def initialize(title, body, comment)
      @title = title
      @body = body
      @comment = comment 
    end

    def word_length 
      words = body.split
      words.inject(0) {|memo, word| memo += word.length} / words.count.to_f
    end

    def comment_amount
      words = [title, body, comment]
      words.join(" ").split.count
    end
end

post = Post.new("hello there", "what's going on", "yo yo yo yo")
 => #<Post:0x000001011a2e10 @title="hello there", @body="what's going on", @comment="yo yo yo yo"> 
2.1.0 :249 > post.comment_amount 
 => # 9 

# What do you call a class that has data a methods that all related 
# to the central purpose of the class?

The class is called highly cohesive or to have a single responsibility. 

# Refactor the following code:

class Dog 
    attr_reader :sound

  def initialize
    @sound = "ruff"
  end

  def bark
    "#{@sound} #{@sound}" #now can just have #{sound} if want too
  end
end

dog = Dog.new
dog.bark

Replace the instance variables with instance methods 
(always want to hide instance variables when possible)

# How can the following code be refactored?

class BadDesign
  attr_reader :data
  def initialize
    @data = [[71, 165], [67, 178], [59, 210], [78, 250]]
  end

  def bmi
    data.map {|height, weight| weight / height.to_f ** 2 * 703 }
  end
end

# didn't refactor 

# Refactor the following method and explain why it should be refactored.
def exponents(numbers)
  numbers.map {|number| number ** 2}
end

# didn't refactor

# their answer:
This method does 2 things. Methods should only do one thing, so it should be broken down 
into two method. 

def exponents(numbers)
  numbers.map {|number| exponent(number)}
end

def exponent(number)
  number ** 2
end

The exponents method now sends a message to get the exponent for a given number. Separating
iteration from the action that is being performed on each element is a common case of methods 
with two responsibilities. 

# How can you eliminate the need for a comment within a method?
pull the code that requires a comment into a separate method, so the comment is not required 

# Do objects need to know things about other objects.
yes, objects only have a single purpose, so they need to know things about other objects in order 
to accomplish things. dependencies are when objects know things about other objects 
and these must be managed properly. 

# What is the problem with objects that are closely related (i.e. they have a 
# lot of dependencies so they behave as one unit).

two objects that are tightly coupled behave as a single object, so you cannot change 
one object without having to change the other. this makes code an entangled mess and you
cannot change one thing without breaking everything else. 

# Identify the dependencies in the following example.
class HockeyPlayer
  attr_reader :height, :weight
  def initialize(height, weight)
    @height = height
    @weight = weight
  end
end

class Stick
  attr_reader :player
  def initialize(height, weight)
    @player = HockeyPlayer.new(height, weight)
  end

  def length
    player.height - 10
  end

  def flex
    player.weight / 2
  end
end

s = Stick.new(60, 210)
p s.length
p s.flex
# Dependencies:   
1. stick class needs to know the name of the HockeyPlayer class. 
2. stick class expects HockeyPlayer objects to respond to have ht and wt methods
3. stick class knows HockeyPlayer objects are instantiated with ht and wt
4. stick class knows ht comes first and wt comes second when instantiating object 

# Refactor the code, so the Stick class does not depend on the name of the 
# HockeyPlayer class.

The stick class should not be initialized with ht and wt. 

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(height, weight)
    @height = height
    @weight = weight
  end
end

class Stick
  attr_reader :player
  def initialize(player)
    @player = player
  end

  def length
    player.height - 10
  end

  def flex
    player.weight / 2
  end
end

s = Stick.new(HockeyPlayer.new(60, 210))
p s.length
p s.flex

# Suppose that HockeyPlayer cannot be moved out of the Stick class 
# (in other words, the dependency cannot be removed).  How should the code be refactored?

Isolate the dependency so it is in one place and is easy to spot.

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(height, weight)
    @height = height
    @weight = weight
  end
end

class Stick
  attr_reader :height, :weight
  def initialize(height, weight)
    @height = height
    @weight = weight
  end

  def player
    @player ||= HockeyPlayer.new(height, weight)
  end

  def length
    player.height - 10
  end

  def flex
    player.weight / 2
  end
end

s = Stick.new(60, 210)
p s.length
p s.flex


# What are external messages?  Where does the prior example use an external message?

external messages are messages that are sent to someone other than self. 
for example the length method in the stick class sends player to self, but sends height to player. 

# refactor the length method to move the external dependency

Originally length knew that player objects had a height method.  
This dependency is now isolated in the player_height method.

def length
  player_height - 10
end

def player_height
  player.height
end

# There is an argument order dependency in the hockeyplayer class. Refactor to remove. 

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(args)
    @height = args[:height]
    @weight = args[:weight]
  end
end

class Stick
  attr_reader :height, :weight
  def initialize(args)
    @height = args[:height]
    @weight = args[:weight]
  end

  def player
    @player ||= HockeyPlayer.new(:height => height, :weight => weight)
  end

  def length
    player_height - 10
  end

  def player_height
    player.height
  end

  def flex
    player.weight / 2
  end
end

s = Stick.new(:height => 60, :weight => 210)
p s.length
p s.flex

# Update the code to give the player a default height of 58 and a default weight of 175.

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(args)
    @height = args.fetch(:height)
    @weight = args.fetch(:weight)
  end
end

class Stick
  attr_reader :height, :weight
  def initialize(args)
    @height = args.fetch(:height, 58)
    @weight = args.fetch(:weight, 175)
  end

  def player
    @player ||= HockeyPlayer.new(:height => height, :weight => weight)
  end

  def length
    player_height - 10
  end

  def player_height
    player.height
  end

  def flex
    player.weight / 2
  end
end

s = Stick.new({})
p s.length
p s.flex

# What does it mean to manage the dependency direction?

dependencies have a direction and oftentimes, the dependency direction can be reversed. 
In our example, stick depends on hockeyplayer, but the code could easily be refactored, so 
hockeyplayer depends on stick. 

#refactor the code to reverse the dependency between hockeyplayer and stick 

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(args)
    @height = args.fetch(:height)
    @weight = args.fetch(:weight)
  end

  def stick
    @stick ||= Stick.new(self)
  end
end

class Stick
  attr_reader :player
  def initialize(player)
    @player = player
  end

  def player_height
    player.height
  end

  def player_weight
    player.weight
  end

  def length
    player_height - 10
  end

  def flex
    player_weight / 2
  end
end

player = HockeyPlayer.new({:height => 66, :weight => 215})
p player.stick.length
p player.stick.flex

#how do you choose the best direction for a dependency?

a class should depend on another class that changes less frequently. 

