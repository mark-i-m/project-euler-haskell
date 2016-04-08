import Data.HashMap (HashMap, insert, findWithDefault, empty, foldWithKey)
import Data.List (nub)

-- get the prime factors of n
primeFactors n =
  case factors of
    [] -> [n]
    _  -> factors ++ primeFactors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]

-- count occurences of x in a list
count x = length . filter (==x)

-- take a list of form [a,b,c,c,c] and group elements of the same form
-- into [(a, 1), (b, 1), (c, 3)]
group l = nub $ map (\x -> (x, count x l)) l

-- insert the factor x into hm at least y times... i.e. map x to a value >= y
addFactor x y hm | findWithDefault 0 x hm < y   = insert x y hm
                 | otherwise                    = hm

-- add the prime factors of n to the map if they are
-- not already there
addFactors hm n = head $ map (\(x,y) -> addFactor x y hm) $ group $ primeFactors n

-- collect factors for all ints <= n
gatherFactors n = foldl addFactors empty [1..n]

-- find the product of all values
multFactors :: Integer -> Integer
multFactors n = foldWithKey acc 1 factors
    where 
        factors = gatherFactors n
        acc x y t = (x ^ y) * t

-- solution
main = print $ multFactors 20
