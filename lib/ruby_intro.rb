# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|element| sum+=element}
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if(arr.length == 0)
	return 0
  elsif (arr.length == 1)
        return arr[0]
  else 
        max_two = arr.max(2)
        sum=0
        max_two.each {|x| sum+=x}
        sum
  end 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.sort!
  s=0
  e=arr.length-1
  while(s<e)
     if(arr[s]+arr[e]==n)
         return true
     elsif(arr[s]+arr[e]<n)
         s+=1
     elsif(arr[s]+arr[e]>n)
         e-=1
     end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
