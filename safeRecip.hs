-- safeRecip 0 = Nothing
-- safeRecip x = Just (1 / x)

safeRecip = \x -> case x of
        0 -> Nothing
        _ -> Just $ 1 / x
