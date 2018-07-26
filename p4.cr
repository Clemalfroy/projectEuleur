struct Int
    def palindrome?
      self.to_s == self.to_s.reverse
    end
end

maxPalindrome = 0
(100..999).each do |i|
    (i..999).each do |j|
        resultMult = i * j 
        if resultMult  > maxPalindrome && resultMult.palindrome?
            maxPalindrome = resultMult
        end
    end
end

puts maxPalindrome