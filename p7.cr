struct Int
    def prime?
        if self < 2
            return false
        end
        i = 2
        while i <= self / i
            if self % i == 0
                return false
            end
            i += 1
        end
        return true
    end
end

max = 2147483647
indexToFind = 10_001
nth = 1
result = 0
(3..max).step(2).each do |n|
    if n.prime?
        nth += 1
        if nth == indexToFind
            result = n
            break
        end
    end
    
end
puts result