import Data.Char
-- safeRecip 0 = Nothing
-- safeRecip x = Just $ 1 / x

safeRecip = \x -> case x of
  0 -> Nothing
  _ -> Just $ 1 / x

checkAnswer :: Char -> Maybe Bool
checkAnswer c = case toLower c of
  'y' -> Just True
  'n' -> Just False
  _ -> Nothing


diffRecip :: Double -> Double -> Maybe Double
diffRecip x y = case x - y of
  0 -> Nothing
  d       | d > 0 -> Just $ recip d
          | otherwise -> Just $ recip (- d)

-- 5で割った余りが0ならば5をそれ以外ならば余りの値を返す関数oneToFiveを作成せよ

oneToFive :: Integer -> Integer
oneToFive x = case x `mod` 5 of
  0 -> 5
  d -> d
