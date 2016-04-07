-- return true if n is a palindrome
isPalindrome :: Integer -> Bool
isPalindrome n = (show n) == (reverse $ show n)

-- find palindromes of numbers in [n, m]
palindromes :: [Integer] -> [Integer] -> [Integer]
palindromes n m = filter isPalindrome [x * y | x <- n, y <- m]

-- get the largest palindrome by a product of numbers in [n, m]
largestPalidrome :: Integer -> Integer -> Integer
largestPalidrome n m = maximum $ palindromes [n..m] [n..m]

-- solution
main = print $ largestPalidrome 100 999
