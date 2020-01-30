# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #arr.inject(0){|s,x| s + x }
  if arr.empty?
    0
  else
    arr.reduce(:+)
  end
end

def max_2_sum arr
  if arr.empty?
    0
  else
    a = arr.max
    arr.delete_at(arr.index(arr.max))
    if arr.empty?
      a
    else
      b = arr.max
      a+b
    end
  end
end

def sum_to_n? arr, n
  r = false
  for i in arr do
    index = arr.index(i)
    arr.delete_at(arr.index(i))
    if arr.include?(n-i)
      r = true
    end
    arr.insert(index, i)
  end
  r
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s[0] == 'a' || s[0] == 'A' || s[0] == 'E' || s[0] == 'e' || s[0] == 'I' || s[0] == 'i' || s[0] == 'o' || s[0] == 'O' || s[0] == 'U' || s[0] == 'u' || s.empty? || s[0].count("a-zA-Z") < 1
    false
  else
    true
  end
end

def binary_multiple_of_4? s
  puts s
  if s.empty?
    false
  elsif s.count('01') == s.size
    a = s.to_i(2)
    if (a%4) == 0
      true
    else
      false
    end
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price) 
    if isbn.empty?
      raise ArgumentError, 'isbn is empty'
    elsif price>0
      @isbn = String.new(isbn)
      @price = price 
    else
      raise ArgumentError, 'price too low'
    end 
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end 
  def price_as_string
    sprintf("$"+"%.2f", price)
  end 
  
end
