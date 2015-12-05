myProduct :: [Integer] -> Integer
myProduct [] = 1
myProduct (x : xs) = x * myProduct xs

myMaximum :: [Integer] -> Integer
-- 要素がなければ、最小値である0を返す
myMaximum [] = 0
-- 1要素であればその要素が最大値
-- myMaximum (x : []) = x
-- 先頭の2つのうち大きい方を残す
-- myMaximum (x : y : xs) = myMaximum((max x y) : xs)

myMaximum (x : xs) = max x (myMaximum xs)
