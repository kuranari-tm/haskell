digit '0' = 0
digit '1' = 1
digit '2' = 2
digit '3' = 3
digit '4' = 4
digit _ = -1

friend (Just name) = name ++ " is my friend."
friend Nothing = "I'm alone"

notZero 0 = Nothing
notZero n = (Just n)

