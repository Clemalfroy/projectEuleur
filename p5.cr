def gcd(a, b)
    return b == 0 ? a : gcd(b, a % b)
end

def lcm(a, b)
    return a * b / gcd(a, b)
end

result = 1
(1...20).each do |n| 
    result = lcm(result, n)
end

puts result