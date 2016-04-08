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

-- get the nth prime
getPrime n = getPrimeRec 1 n 2
    where
        getPrimeRec x y m | x == y && isPrime m     = m
                          | isPrime m               = getPrimeRec (x+1) y (m+1)
                          | otherwise               = getPrimeRec x y (m+1)

main = print $ getPrime 10001
