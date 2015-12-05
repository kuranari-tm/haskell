price :: Integer -> Integer -> Integer
price x y = x * (100 + y) `div` 100

congruent :: Integer -> Integer -> Integer -> Bool
congruent c x y = ( x `mod` c ) == (y `mod` c)

uncurry3 :: (a -> b -> c -> d) -> ((a, b, c) -> d)
uncurry3 f (x, y, z) = f x y z

-- curryとuncrryどっちがどっちか分からなくなるなぁ
