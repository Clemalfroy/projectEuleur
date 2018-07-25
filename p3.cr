def largestPrimeNumber(number)
    actual = 2
    highest = 0
    while actual <= number
        if number % actual == 0
            highest = actual
            number/= actual
        end
        actual += 1
    end
    highest
end

puts largestPrimeNumber(600851475143 )