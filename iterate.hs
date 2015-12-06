myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x)

-- 課題
collazNext' :: Integer -> Integer
collazNext' n = case (n `mod` 3) of
        0 -> n `div` 3
        1 -> n * 2 + 1
        2 -> n * 2 + 2

collatzInf' :: Integer -> [Integer]
collatzInf' n = n : collatzInf' (collazNext' n)

collatzInf'' :: Integer -> [Integer]
collatzInf'' = iterate collazNext'

takeTo p = foldr (\x -> (x :) . if p x then const [] else id) []
