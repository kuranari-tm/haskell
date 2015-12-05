myLength :: [a] -> Int
myLength [] = 0
myLength (_ : xs) = 1 + myLength xs

myLength1 :: [Integer] -> Integer
-- ポイントフリースタイルにできないか？
-- myLength1 xs = sum $ map (const 1) xs
myLength1 = sum . map (const 1)
