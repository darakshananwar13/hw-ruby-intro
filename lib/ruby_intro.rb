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
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.length==0)
    return false
  end
  return /[b-df-hj-np-tv-z]/.match?(s[0].downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0
      return false
  end
  num=0
  i=s.length-1
  while(i>=0)
  	if(s[i]!='0' and s[i]!='1')
        	return false
        end 
        if(s[i] =='1')
        	num+=2**(s.length-1-i)
        end
        i-=1
  end 
  return num%4==0
end

# Part 3

class BookInStock
# YOUR CODE HERE
      @isbn
      @price

      def initialize(isbn,price)
                   if(isbn.length==0)
                        raise ArgumentError.new("ISBN is an empty string")
                   end
                   if(price<=0)
                        raise ArgumentError.new("price is less than or equal to zero")
                   end
                   @isbn = isbn
                   @price = price
      end
 
      def isbn=(isbn_input)
            @isbn=isbn_input
      end

      def price=(price_input)
            @price=price_input
      end

      def isbn
            @isbn
      end

      def price
            @price
      end
      
      def price_as_string
            price = @price
            decimals = 0
            while (price - price.to_i > 0)  
                  decimals+=1  
                  price *= 10;  
            end
            price_string=@price.to_s
            if(decimals==0)
                  price_string+='.'
            end
            for i in 1..2-decimals
                  price_string+='0'
            end
            return '$'+price_string
      end
end
