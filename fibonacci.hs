fibs, tfibs :: [Integer]
fibs@(_ : tfibs) = 0 : 1 : zipWith (+) fibs tfibs

fnums, tnums :: [Integer]
-- fnums@(_ : tnums) = 0 : 1 : zipWith (+) tnums (map (* 2) fnums)
fnums@(_ : tnums) = 0 : 1 : zipWith ((+).(* 2)) fnums tnums
