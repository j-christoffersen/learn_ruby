#write your code here
def add a, b
    return a+b
end

def subtract a,b
    return a-b
end

def sum nums
    nums.reduce(0){|sum,x| sum + x }
end

def multiply nums
    nums.reduce(1){|product,x| product * x }
end

def power a,b
    return a**b
end

def factorial a
    return multiply(1..a)
end