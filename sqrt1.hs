sqrt' x
  | x < 0 = Nothing
  | otherwise = Just (sqrt x)


div3 x
  | x `mod` 3 == 0 = x `div` 3
  | otherwise = x

abs' x
  | x >= 0 = x
  | otherwise = -x

factorial x
  | x == 0 = x
  | otherwise = x + factorial(x - 1)

func 0 = "hoge"
func _ = "fuga"
