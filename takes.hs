import Data.List

takeRaw, takeU :: Int -> [a] -> [a]

takeRaw n (x : xs) | n > 0 = x : takeRaw (n - 1) xs
takeRaw _ _ = []

-- takeU = curry . unfoldr $ \nl -> case nl of
--         (n, x : xs) | n > 0 -> Just (x, (n - 1, xs))
--         _ -> Nothing

-- takeU = curry (unfoldr (\nl -> case nl of
--         (n, x : xs) | n > 0 -> Just (x, (n - 1, xs))
--         _ -> Nothing))

-- takeU a b = curry (unfoldr (\nl -> case nl of
--         (n, x : xs) | n > 0 -> Just (x, (n - 1, xs))
--         _ -> Nothing)) a b

-- g x y = curry f x y
-- g x y = f(x, y)

takeU a b = unfoldr (\nl -> case nl of
        (n, x : xs) | n > 0 -> Just (x, (n - 1, xs))
        _ -> Nothing) (a, b)

dropRaw :: Int -> [a] -> [a]
dropRaw n (x : xs) | n > 0 = dropRaw (n - 1) xs
dropRaw _ xs = xs

splitAtRaw :: Int -> [a] -> ([a], [a])
splitAtRaw n (x : xs) | n > 0 = (x : t, d)
        where (t, d) = splitAtRaw (n - 1) xs
splitAtRaw _ xs = ([], xs)

