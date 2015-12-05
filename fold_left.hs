sumIter :: Integer -> [Integer] -> Integer
sumIter s [] = s
sumIter s (x : xs) = sumIter (s + x) xs

