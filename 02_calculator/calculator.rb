def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(array)
    sum = 0
    for i in array do
        sum += i
    end
    sum
end

def multiply(a,b)
    a * b
end

def power(a,b)
    a ** b
end

def factorial(a)
    if a == 0 or a == 1 
        return 1
    elsif a == 2 
        return 2
    end
    next_a = a - 1
    while next_a > 0 do
        a *= next_a
        next_a -= 1
    end
    return a
end 
