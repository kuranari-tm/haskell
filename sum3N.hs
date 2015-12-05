sum3N :: Integer -> Integer
-- sum3N n = sum $ filter ((== 0) . (`mod` 3)) [0 .. 3 * n]

productOdds :: Integer -> Integer
productOdds n = product $ filter odd [1 .. 2 * n + 1]

sum3N n = sum $ map (* 3) [0 .. n]

sum3N5 :: Integer -> Integer
sum3N5 n = sum . map (* 3) $ filter ((/= 0) . (`mod` 5)) [0 .. n]

-- 1からnまでの奇数を3倍した値すべての積を求める関数productOdd3を作成せよ
productOdd3 n = product . map (* 3) $ filter odd [1 .. n]

is :: [Integer]
is = [23, 15, 4, 9]

bs :: [Bool]
bs = [True, False, False, True]
