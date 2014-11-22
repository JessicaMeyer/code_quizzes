# Code Quizzes - Code Blocks


# Describe how the code block works in the following example.

[1, 2, 3].map do |number|
  number * 2
end

# goes through array and multiplies each number in array by 2, then returns result as a new array.

# What does the following code print?

def cool
  return yield
end

p cool {"yes!"}
# "yes!"

#the yield keyword instructs Ruby to execute the code in the block. In this example, the block
#returns the string "yes!". An explicit return statement was used in the cool method.

# What does the following code print?

def nice
  yield("captain", "planet")
end

nice do |first_name, last_name|
  "#{first_name} #{last_name}"
end

#"captain planet"

# What does the following code print?

def like_map(array)
  result = []
  array.each do |element|
    result << (yield element)
  end
  result
end

result = like_map([1, 2, 3]) do |number|
  number * 2
end
p result

# [2,4,6]

# Add a my_map() method to the Array class that behaves the same as the Array#map method.
class Array
  def my_map
    result = []
      self.each do |element|
        result << (yield element)
      end
      result
    end
end

result =  [1,2,3].my_map do |x|
  x * 2
end

p result 
# [2,4,6]


# What does the following code print?
def add(x, y)
  return(x + y)
end

result = add(4, 5) do
  puts "Hey mom"
end
p result

# 9 

# the add method is passed a code block, but it doesn't require the code block. When methods 
# are passed a code block but don't require the code block the code block is simply ignored. 

# What does the following code print?

p ["tommy", "chuckie"].map(&:upcase)

# ["TOMMY", "CHUCKIE"]

# Example using shorthand symbol to proc notation to apply the upcase method to every element
# in the array. same as:

["tommy", "chuckie"].map {|name| name.upcase}





