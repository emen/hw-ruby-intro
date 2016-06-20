# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum( arr.inject([]) { |max_2, elem| (max_2 << elem).max(2) } )
end

def sum_to_n? arr, n
  (0...arr.length-1).any? do |i|
    (i+1...arr.length).any? { |j| arr[i] + arr[j] == n }
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.match(/\A(?![aeiou])[a-z]/i)
end

def binary_multiple_of_4? s
  s.match(/\A[01]+\z/) && (s == '0' || s.match(/00\z/))
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'isbn can not be empty' if isbn.nil? || isbn.empty?
    raise ArgumentError, 'invalid price'         unless price > 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    '$' + ("%.2f" % price)
  end
end
