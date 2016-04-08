sumOfSquares n = sum $ map (^2) [1..n]

squareOfSum n = (^2) $ sum [1..n]

main = print $ s' - s
    where
        s  = sumOfSquares 100
        s' = squareOfSum 100
