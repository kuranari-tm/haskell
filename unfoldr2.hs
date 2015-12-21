import Data.List

popDigit :: Integer -> Maybe (Integer, Integer)
popDigit n = case n of
      0 -> Nothing
      x -> Just (n `mod` 10, x `div` 10)

digits :: Integer -> [Integer]
digits n = case popDigit n of
        Nothing -> []
        Just (n, m) -> n : digits m

digits' :: Integer -> [Integer]
digits' = unfoldr popDigit
