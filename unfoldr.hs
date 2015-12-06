import Data.List
myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f s = case f s of
        Nothing -> []
        Just (x, s') -> x : myUnfoldr f s'

popDecimal :: Integer -> Maybe (Integer, Integer)
popDecimal n | n <= 0 = Nothing
popDecimal n = Just (n `mod` 10, n `div` 10)

revDecimal :: Integer -> [Integer]
revDecimal n = case popDecimal n of
        Nothing -> []
        Just (f, n') -> f : revDecimal n'

revDecimal' :: Integer -> [Integer]
revDecimal' = unfoldr popDecimal
