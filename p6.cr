sumSquares = 0
squareSums = 0

(1..100).each do |n|
    sumSquares += n * n
    squareSums += n
end

squareSums **= 2

puts squareSums - sumSquares
