# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.count == 0
    return 0
  elsif arr.count == 1
    return arr.at(0)
  else
    arr.sort! { |x,y| y <=> x }
    return (arr.at(0)+arr.at(1))
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  res = false
  if arr.count == 0
    return false
  else
    k = arr.count - 1
    m = k-1
    for i in 0..m
      for j in (i+1)..k
        tmp = arr.at(i) + arr.at(j)
        if tmp == n
          res = true
        end
      end
    end
  end
  return res
end

# Part 2

def hello(name)
  a = "Hello, "
  return a.concat(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  res = false
  if s.length > 0
    str = s[0,1]
    if str=~ /[a-zA-Z]/
      if str=~ /[AaEeIiOoUu]/
        res = false
      else
        res = true
      end
    end
  end
  return res
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  res = false
  if s =~ /[^01]+/
    res = false
  else
    if s.length == 1
      res = (s[0,1] == '0')
    else
      i = s.length - 2
      if s[i,2] == "00"
        res = true
      end
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i, p)
    @isbn= ""
    @price= 0
    if i.length > 0 and p > 0
      @isbn=i
      @price=p
    else
      raise ArgumentError
    end
  end

  def isbn
    @isbn
  end
  def price
    @price
  end

  def isbn=(value)
    @isbn=value
  end
  def price=(value)
    @price=value
  end

  def price_as_string
    tmp = (@price.round(2)).to_s
    tmp = "$" + tmp
    i = tmp.length - 3
    if tmp[i,1] != "."
      tmp = tmp + "0"
    end
    return tmp
  end
end

