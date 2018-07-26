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

maxBoundary = 2_000_000_u64
sum = 2_u64
(3...maxBoundary).step(2).each do |n|
    if n.prime?
        sum += n
    end
end

puts sum