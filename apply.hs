-- 課題
--
-- 1. recip ((3 + 5) / 2)を演算子($)で書き直せ
recip $ (3 + 5) / 2

-- 2. 第1引数の値に第2引数の関数を適用する関数applyを定義せよ
apply x f = f $ x

-- 3. [挑戦問題] 演算子($)と関数idの関係について考えよ
