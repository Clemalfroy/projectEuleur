require "math"

def largestPrimeNumber(number)
    if number % 2 == 0
        number = number / 2
        lastFactor = 2
        while number % 2 == 0
            lastFactor = 1
        end
    end
    factor = 3
    maxFactor = Math.sqrt(number)
    while number > 1 && factor <= maxFactor
        if number % factor == 0
            number /= factor
            lastFactor = factor
            while number % factor == 0
                number /= factor
            end
        end
        factor = factor + 2
    end
    if number = 1
        lastFactor
    else
        number
    end
end

puts largestPrimeNumber(1)