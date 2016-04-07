-- is x a factor of n?
isFactor :: Integer -> Integer -> Bool
isFactor n x = n `mod` x == 0

-- get the rounded sqrt of an int
roundSqrt = round . sqrt . fromIntegral

-- find the factors of n
findFactors :: Integer -> [Integer]
findFactors n = filter (isFactor n) [1..(roundSqrt n)]

-- is n prime?
isPrime :: Integer -> Bool
isPrime n = 1 == (length $ (findFactors n))

-- find the prime factors of an int
primeFactors :: Integer -> [Integer]
primeFactors = (filter isPrime) . findFactors

-- find the largest prime factor
largestFactor :: Integer -> Integer
largestFactor = maximum . primeFactors

-- solution
main = print $ largestFactor 600851475143
