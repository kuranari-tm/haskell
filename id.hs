devide :: Double -> Double -> Double
-- devide 0 b = b
-- devide a b = b / a

devide 0 = id
devide a = (/ a)

-- fromMaybeId _ (Just x) = id x
-- fromMaybeId d _ = id d
--
-- maybeId _ f (Just x) = f x
-- maybeId d _ _ = id d

-- maybe _ f (Just x) = f x
-- maybe d _ _ = d
-- fromMaybe _ (Just x) = x
-- fromMaybe d _ = d

-- fromMaybeId y (Just x) = maybe y id (Just x)
-- fromMaybeId y Nothing = maybe y id Nothing
fromMaybeId y z = maybe y id z
fromMaybeId2 y = maybe y id
fromMaybeId3 = (`maybe` id)
