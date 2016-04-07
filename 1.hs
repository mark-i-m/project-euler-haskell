isMult3or5 :: Integer -> Bool
isMult3or5 x = (x `mod` 3 == 0) || (x `mod` 5 == 0)

-- sum of all multiples of 3 or 5 less than n
totalMult3or5 :: Integer -> Integer
totalMult3or5 n = sum $ filter isMult3or5 [1..(n-1)]

-- solution
main = print $ totalMult3or5 1000
