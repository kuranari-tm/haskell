import Data.List

takeWhileRaw, takeWhileF, takeWhileU :: (a -> Bool) -> [a] -> [a]

takeWhileRaw p (x : xs) | p x = x : takeWhileRaw p xs
takeWhileRaw _ _ = []

takeWhileF p = foldr (\x -> if p x then (x :) else const []) []

takeWhileU p = unfoldr $ \l -> case l of
        x : xs | p x -> Just (x, xs) -- lが空リストではなく p x がTrueならば
        _ -> Nothing

dropWhileRaw :: (a -> Bool) -> [a] -> [a]

-- Original
-- dropWhileRaw p (x : xs) = case p x of
--         True -> dropWhileRaw p xs
--         otherwise -> x : xs
-- dropWhileRaw _ _ = []

dropWhileRaw p (x : xs) | p x = dropWhileRaw p xs
dropWhileRaw _ xs = xs

spanRaw :: (a -> Bool) -> [a] -> ([a], [a])
spanRaw p (x : xs) | p x = (x : t, d)
        where (t, d) = spanRaw p xs
spanRaw _ xs = ([], xs)
