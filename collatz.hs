takeTo :: (a -> Bool) -> [a] -> [a]
-- takeTo _ [] = []
-- takeTo p (x : xs)
--         | p x = [x]
--         | otherwise = x : takeTo p xs

-- takeTo p = foldr (\x lst -> if p x then [x] else x : lst) []
-- takeTo p = foldr (\x -> if p x then const [x] else (x :)) []
takeTo p = foldr (\x -> (x :) . if p x then const [] else id) []

collatzNext :: Integer -> Integer
collatzNext n
        | even n = n `div` 2
        | otherwise = n * 3 + 1

collatzInf :: Integer -> [Integer]
-- collatzInf n = n : collatzInf (collatzNext n)
collatzInf = iterate collatzNext

collatz :: Integer -> [Integer]
collatz = takeTo (== 1) . collatzInf
