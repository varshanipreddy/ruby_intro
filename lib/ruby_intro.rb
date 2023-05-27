# frozen_string_literal: true

# Part 1

def sum(arr)
   return arr.sum 
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  end
  
  return arr.max(2).sum

end

def sum_to_n?(arr, number)
  if arr.empty? or arr.count == 1
    return false
  end

  a_sort = arr.sort
  left=0
  right=arr.count - 1
  
  while left < right 
    temp = a_sort[left] + a_sort[right]
    if temp == number
      return true
    elsif temp < number
      left = left + 1
    else 
      right = right - 1
    end
  
  end

  return false

  
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant?(string)

  if string[0] =~ /(?=[a-z])(?=[^aeiou])/i
    return true 
  end
  
  return false
  
end

def binary_multiple_of_4?(string)
  

  if string =~ /^(?:00?|[01]*00)$/
    return true
  end
  
  return false

end

# Part 3

# Object representing a book
class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
    @isbn = isbn 
    @price = price

    if isbn.empty? or price <= 0 
      raise ArgumentError
    end
  end

  def price_as_string
    return format("$%<num>0.02f",num: @price)
  end 
end
