# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sm = 0
  arr.each do |thing|
    sm += thing
  end
  return sm
end

def max_2_sum arr
  case arr.size()
  when 0
    return 0
  when 1
    return arr[0]
  else
    if arr[0] >= arr[1]
      max1 = arr[0]
      max2 = arr[1]
    else
      max1 = arr[1]
      max2 = arr[0]\
    end
    arr.shift
    arr.shift #removing first two elements
  end

  while arr.size() > 0
    if arr[0] > max1
      max2 = max1
      max1 = arr[0]
    elsif arr[0] > max2
      max2 = arr[0]
    end
    arr.shift
  end
  return max1 + max2
end

def sum_to_n? arr, n
  arr.each do |num1|
    arr.each do |num2|
      if num1 == num2
        next
      end

      if (num1 + num2) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  consonants = "QWRTYPSDFGHJKLZXCVBNMqwrtypsdfghjklzxcvbnm"
  if s.empty?
    return false
  end
  if consonants.include?(s[0])
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s == ""
    return false
  end
  ss = s.split('')
  ss.each do |char|
    if char != '0' and char != '1'
      return false
    end
  end

  if (s.to_i(2) % 4) == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    if isbn.empty? or price <= 0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$" + ('%.2f' % @price.round(2)).to_s
  end
end



