flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

flip13 :: (a -> b -> c -> d) -> c -> b -> a -> d
flip13 f x y z = f z y x


-- 第1引数を無視し第2引数の値を返す関数const'を関数flipとconstで定義せよ

-- const' x y = flip const x y
const' = flip const
-- const' = const id
