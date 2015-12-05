-- encrypt n e m = m ^ e `mod` n
-- decrypt n d c = c ^ d `mod` n

xxcrypt n ed mc = mc ^ ed `mod` n
-- encrypt m = xxcrypt 138689 13 m
-- decrypt c = xxcrypt 138689 95497 c

-- encrypt = xxcrypt 138689 13
-- decrypt = xxcrypt 138689 95497

xxcrypt1 = xxcrypt 138689
encrypt = xxcrypt1 13
decrypt = xxcrypt1 95497

nary n a b = a * n + b
octal = nary 8

tax = \x -> x * 108 `div` 100

sec h m s = 3600 * h + 60 * m + s
sec1 = \h m s -> 3600 * h + 60 * m + s
