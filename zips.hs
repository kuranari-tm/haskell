zipRaw, zipU :: [a] -> [b] -> [(a, b)]

zipRaw (x : xs) (y : ys) = (x, y) : zipRaw xs ys
zipRaw _ _ = []

zipU = curry . unfoldr $ \l -> case l of
        (x : xs, y : ys) -> Just ((x, y), (xs, ys))
        _ -> Nothing


