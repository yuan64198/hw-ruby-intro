# When done, submit this entire file to the autograder.

# Part 1
def sum arr
    if arr.length==0
        return 0
    end
    return arr.inject{|sum, n| sum+n} 
end

def max_2_sum arr
    return 0 if arr.length==0
    return arr[0] if arr.length==1
    return arr.sort[-2]+arr.sort[-1]
end

def sum_to_n? arr, n
    left=0
    right=arr.length-1
    arr = arr.sort
    while left<right
        if arr[left]+arr[right] == n
            return true
        elsif arr[left]+arr[right]<n
            left=left+1
        else
            right=right-1
        end
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    consonants = ('A'..'Z').reject { |c| ['A', 'E', 'I', 'O', 'U'].include? c }
    consonants.any? { |c| s.upcase.index(c).eql? 0 }
end

def binary_multiple_of_4? s
    return false if s==nil
    return true if /^[01]*00$/.match(s)||s=="0"
    return false
end

# Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn,price)
        @isbn=isbn
        @price=price
        if @isbn.empty? || @price <= 0 
            raise ArgumentError
        end
    end
    def price_as_string
        "$#{'%.2f' %  @price}"
    end
end
