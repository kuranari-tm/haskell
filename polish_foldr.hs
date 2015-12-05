import Text.Read
import Data.Maybe

-- operators :: [(String, Integer -> Integer -> Integer)]
-- operators = [("+", (+)), ("-", (-)), ("*", (*)), ("/", div)]
--
-- polish1 :: String -> Maybe [Integer] -> Maybe [Integer]
-- polish1 s (Just ns) = case lookup s operators of
--         Just o -> case ns of
--                 x : y : ns' -> Just $ x `o` y : ns'
--                 _ -> Nothing
--         _ -> maybe Nothing (Just . (: ns)) $ readMaybe s
-- polish1 _ _ = Nothing
--
-- polish :: [String] -> Maybe [Integer]
-- polish = foldr polish1 (Just [])

-- 練習問題
-- operators :: [(Bool, Integer -> Integer -> Integer)]
-- operators = [(True, (*)), (False, (+))]

bolish1 :: (Bool, Integer) -> Integer -> Integer
-- bolish1 (b, x) y = fromJust (lookup b operators) x y
bolish1 (b, x) y = (if b then (*) else (+)) x y

bolish :: [(Bool, Integer)] -> Integer
bolish = foldr bolish1 0

-- 生の再帰
bolish' :: [(Bool, Integer)] -> Integer
bolish' [] = 0
bolish' ((b, x) : xs) = (if b then (*) else (+)) x (bolish' xs)
