mySum = foldr (+) 0
myProduct = foldr (*) 1
-- myLength = foldr len 0

myLength = foldr (const (1 +)) 0

myFoldr _ v [] = v
myFoldr op v (x:xs) = x `op` myFoldr op v xs
