devide' :: Double -> Double -> Double
-- devide' 0 _ = 0
-- devide' a b = b / a
devide' 0 = const 0
devide' a = (/ a)


const' :: a -> b -> b
-- const' _ x = x
-- const' _ a = a
const' _ = id

const'' = const id
