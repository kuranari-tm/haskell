half :: Double -> Double
half = (/ 2)

seven :: Integer
seven = 7

convert :: (Double -> Double) -> (Integer -> Double)
convert f n = f $ fromIntegral n

convert' f = f . fromIntegral

convert'' :: (Double -> Double) -> (Integer -> Double)
convert'' = (. fromIntegral)

-- 課題
-- 値側にアダプタ   even $ ord 'c'
-- 関数側にアダプタ (even . ord) 'c'
