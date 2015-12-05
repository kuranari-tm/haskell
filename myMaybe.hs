myMaybe _ f (Just x) = f x
myMaybe d _ _ = d

myFromMaybe _ (Just x) = x
myFromMaybe d _ = d

maybe2 _ f (Just x) (Just y) = f x y
maybe2 d _ _ _ = d

