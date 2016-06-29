# Part 1
require 'set'

def sum array
  # Sum the elements of an array.
  array.inject(0) { |sum, x| sum + x }
end

def max_2_sum array
  # Sum the two elements with max value in an array.
  sum(array.max(2))
end

def sum_to_n?(arr, n)
  # Check if there are 2 elements in arr, which sum equals n.
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  # Check if a string starts with a consonant - not (A, E, I, O, U)
  (s =~ /^[b-df-hj-np-tv-z]/i) != nil
end

def binary_multiple_of_4? s
  # Check if s represents a binary number that is a multiple of 4.
  (s =~ /^[10]*00$/) != nil || s == "0"
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if price <= 0 || isbn.length == 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % "#{self.price}"
  end
end
