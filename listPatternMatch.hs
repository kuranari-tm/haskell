myHead :: [a] -> a
myHead (x : _) = x
myHead _ = error "Bonehead!"

myTail :: [a] -> [a]
myTail (_ : xs) = xs

myNull :: [a] -> Bool
myNull [] = True
myNull (_:_) = False

plural :: [a] -> Bool
plural (x : []) = False
plural _ = True
