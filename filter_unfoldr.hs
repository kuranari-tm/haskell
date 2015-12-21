import Data.List
filterU :: (a -> Bool) -> [a] -> [a]
filterU p = unfoldr $ \l -> case dropWhile (not . p) l of
        x : xs -> Just (x, xs)
        _ -> Nothing
