# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  # Default value is zero for the empty array case
  # Sums values in an array
  return arr.inject(0){|sum,x| sum + x}
end

def max_2_sum arr
  # YOUR CODE HERE
  
  # If the array is empty, return 0
  if arr.empty?
    return 0
  
  # Otherwise, find the max two values in the array and sum them together
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  # Create array of all possible pairs
  # Find the pair that sums to n
  pair = arr.combination(2).find{|i,j| i + j == n}
  
  # If no pair exists, return false
  if pair.nil?
    return false
  # Otherwise, return true
  else
    return true
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  # Concatenate Hello with name
  concatenated_name = "Hello, " + name
  return concatenated_name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  # If input string is empty, return false
  if s.empty?
    return false
  end
  
  # Make string lowercase
  # Extract first character of the string
  s = s.downcase
  first_letter = String(s[0])

  # If the first character is not a string, return false
  if first_letter.match?(/[^a-z]/)
    return false
  end
  
  # Assuming all other if statements did not execute...
  # Return true if first letter is not a vowel
  return !(first_letter.match?(/a|e|i|o|u/))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  # Make input string lowercase
  s = s.downcase
  
  # If string has any letters, return false
  if s.count("a-z") > 0
    return false
  end
  
  # A binary multiple of 4 implies the last two bits are 00
  # Check if last two bits are 00
  # If so, return true, otherwise return false
  len = s.length
  if s[len - 1] == "0"
    if s[len - 2] == "0"
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE

  # Define getters and setters
  attr_accessor :isbn
  attr_accessor :price

  # Constructor for class
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    # If isbn input is empty, raise ArgumentError
    if @isbn.empty?
      raise ArgumentError
    end
    
    # If price input is less than or equal to zero, raise ArgumentError
    if @price <= 0
      raise ArgumentError
    end
    
  end
  
  # Method to present input price as string
  def price_as_string
    
    # If price input is an integer, add '$' and .00' 
    if @price.integer?
      @price = @price.to_s
      @price = "$" + @price + ".00"
      
    # Otherwise, assure the float has two decimal places and add '$'  
    else
      if @price.to_s.split(".").last.size == 1
        @price = @price.to_s
        @price = "$" + @price + "0"
      else
        @price = @price.round(2).to_s
        @price = "$" + @price
      end
    end
  end

end
