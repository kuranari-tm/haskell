introduction :: (String, Integer) -> String
introduction (n, a) =
  "My name is " ++ n ++
  ". I'm " ++ show a ++ " years old."

introductionTk :: Integer -> String
introductionTk = curry introduction "TK"

showAge :: (Integer, Bool) -> String
-- showAge (n, bool)
--   | bool == False = "secret"
--   | otherwise = show n

showAge (n, bool)
  | bool = show n
  | otherwise = "secret"

-- (別解)
-- showAge (n, True) = show n
-- showAge _ =  "secret"

showAge39 :: Bool -> String
-- showAge39 bool = showAge(39, bool)
showAge39 = curry showAge 39


-- なんかDRYじゃないなぁ
triangle :: (Integer, Integer, Integer) -> Bool
triangle (x, y, z) =
  x > 0 && y > 0 && z > 0 && x + y > z && x + z > y && y + z > x

curry3 :: ((a, b, c) -> d) -> (a -> b -> c -> d)
curry3 f x y z = f (x, y, z)
