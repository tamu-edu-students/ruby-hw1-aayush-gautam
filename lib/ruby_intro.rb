# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  if arr.size==0
    return 0
  elsif arr.size==1
    return arr[0]
  else
    sorted_arr = arr.sort {|a,b| b<=>a}
    max1, max2 = sorted_arr[0], sorted_arr[1]
    return max1 + max2
  end
end

def sum_to_n?(arr, number)
  for i in 1...arr.size do
    for j in 1...arr.size do
      if i!=j and arr[i]+arr[j]==number 
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

def starts_with_consonant?(string)
  (string[0]=~/[a-zA-Z]/)==0 and (string =~ /[AEIOUaeiou]/) != 0
end

def binary_multiple_of_4?(string)
  if string=="0" or (string.chars.sort.to_a.uniq == ["0", "1"] and string[-2..-1]=="00")
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if isbn == '' or price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn=new_isbn
  end

  def price=(new_price)
    @price=new_price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
