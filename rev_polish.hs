import Text.Read

operators :: [(String, Integer -> Integer -> Integer)]
operators = [("+", (+)), ("-", (-)), ("*", (*)), ("/", div)]

rpolishIter mns [] = mns
rpolishIter (Just ns) (s : ss) = case lookup s operators of
        Just o -> case ns of
                y : x : ns' -> rpolishIter (Just $ x `o` y : ns') ss
                _ -> Nothing
        _ -> rpolishIter (maybe Nothing (Just . (: ns)) $ readMaybe s) ss
rpolishIter _ _ = Nothing

rpolish :: [String] -> Maybe [Integer]
rpolish = rpolishIter $ Just []
