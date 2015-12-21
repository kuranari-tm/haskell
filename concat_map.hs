concatMapRaw, concatMapF :: (a -> [b]) -> [a] -> [b]
concatMapF f = foldr (\x xs -> f x ++ xs) []

concatMapRaw f (x : xs) = f x ++ concatMapRaw f xs
concatMapRaw _ _ = []


filterC f (x : xs) = if p x then [x] else [] ++ filterC f xs
filterC _ _ = []
