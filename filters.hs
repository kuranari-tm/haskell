import Data.List
import Data.Char

filterRaw, filterF :: (a -> Bool) -> [a] -> [a]

filterRaw p (x : xs)
        | p x = x : filterRaw p xs
        | otherwise = filterRaw p xs
filterRaw _ _ = []

filterF p = foldr ( \x -> if p x then (x :) else id) []

-- filterU p = unfoldr $ \l -> case l of
--                                                      ↓ リストに追加しないようにしたい
--         x : xs -> if p x then Just (x, xs) else Just(nil, xs)
--         _ -> Nothing

partitionRaw, partitionF :: (a -> Bool) -> [a] -> ([a], [a])
partitionRaw p (x : xs)
        | p x = (x : ts, es)
        | otherwise = (ts, x : es)
        where (ts, es) = partitionRaw p xs
partitionRaw _ _ = ([], [])
partitionF p = foldr
        (\x (ts, es) -> if p x then (x : ts, es) else (ts, x : es))
        ([], [])
