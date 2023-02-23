# When done, submit this entire file to the autograder.

# Part 1
#returns the sum of an array. if array is empty return 0
def sum arr
  x = 0

  # loops and adds elements of an array
  for y in arr do
    x = x+y
  end

  # returns sum of array or 0 if empty
  return x 
end

#returns the sum of the two largest values in an array, even if the values are the same
#returns zero if array is empty and returns value of a single element array
def max_2_sum arr
  count = 0
  x = arr[0]
  y = arr[1]

  #loops and assigns largest numbers to x and y
  for i in arr do
    if i > x 
      x = i
      y = x

    elsif i < x

      if i > y
        y = i
      end

    end
    count = count + 1 #tracks if array is 0 or 1

  end

  #return 0 if empty
  if count == 0
    return 0

  #return value of element if array has only 1 element
  elsif count == 1
    return x

  #returns sum of 2 highest values
  else
    return x+y
  end
end

# returns true 2 elements add up to n
def sum_to_n? arr, n
bool = false
count = 0
x=0
y=0 #x and y are trackers of elements

  #loops through 1st array
  for i in arr do
    count = count + 1
    x=x+1
    y=0
    #loops through 2nd array
    for j in arr do
      y=y+1

      #condition if elements add up and are not the same element
      if i + j == n && x != y
        bool = true
      end
    end
  end

#returns false if array only has 1 element
if count == 1
  bool = false
end

return bool
end

# Part 2

def hello(name)
  str = "Hello, #{name}"
  return str
end

#checks if a string begins with a consanant, returns true or false
def starts_with_consonant? s
  vowel = ['a' ,'e', 'i', 'o', 'u']
  bool = true

  #if string is empty return false
  if s.empty?
    bool = false
  
  #if string starts with non-letters return false
  elsif s.downcase.ord < 97 || s.downcase.ord > 122
    bool = false

  #if string starts with a vowel return false
  elsif vowel.include?(s.chr.downcase)
    bool = false

  end
  
  return bool
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

#class defining if book is in stock
class BookInStock

  #constructor
  def initialize(isbn, price)
    #throws errors if isbn is empty or price is zero
    raise ArgumentError.new() if isbn.length <= 0
    raise ArgumentError.new() if price <= 0

    #instance variables for BookInStock
    @isbn = isbn
    @price = price
  end

  #getter for isbn
  def isbn
    @isbn 
  end

  #getter for price
  def price
    @price
  end

  #setter for isbn
  def isbn=(value)
    @isbn = value
  end

  #setter for price
  def price=(value)
   @price = value
  end

  #formats the price as a string
  def price_as_string
    "$%.2f" % @price
  end

end
