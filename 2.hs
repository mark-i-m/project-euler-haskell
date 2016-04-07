-- get the fibonacci numbers <= n
fib :: Integer -> [Integer]
fib n = fibRec 1 1 n []
    where
        fibRec x y n acc | y > n        = x:acc
                         | otherwise    = fibRec y (x+y) n (x:acc)

-- get the sum of even fib #s <= n
totalEvenFib :: Integer -> Integer
totalEvenFib = sum . filter (\n -> n `mod` 2 == 0) . fib

-- solution
main = print $ totalEvenFib 4000000
