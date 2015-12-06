import Data.List
import Text.Read

operators :: [(String, Integer -> Integer -> Integer)]
operators = [("+", (+)), ("-", (-)), ("*", (*)), ("/", div)]

rpolish1 :: Maybe [Integer] -> String -> Maybe [Integer]

rpolish1 (Just ns) s = case lookup s operators of
        Just o -> case ns of
                y : x : ns' -> Just $ x `o` y : ns'
                _ -> Nothing
        _ -> maybe Nothing (Just . (: ns)) $ readMaybe s
rpolish1 _ _ = Nothing

rpolish :: [String] -> Maybe [Integer]
rpolish = foldl' rpolish1 $ Just []

-- 練習問題
-- 生の再帰
rbolishIter :: Integer -> [(Bool, Integer)] -> Integer
rbolishIter mns [] = mns
rbolishIter y ((b, x) : ss) = rbolishIter ((if b then (*) else (+)) x y) ss

rbolish :: [(Bool, Integer)] -> Integer
rbolish = rbolishIter 0

-- foldl'
rbolish1' :: Integer -> (Bool, Integer) -> Integer
rbolish1' x (b, y) = (if b then (*) else (+)) x y
rbolish' :: [(Bool, Integer)] -> Integer
rbolish' = foldl' rbolish1' 0
