dupHead :: [a] -> [a]
dupHead xa@(x : _) = x : xa
