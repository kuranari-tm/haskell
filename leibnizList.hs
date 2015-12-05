-- estPi n = sum . take n $ map (\k -> (-1) ** k / (2 * k + 1)) [0..]
estPi = (4 * ) . sum . (`take` map (\k -> (-1) ** k / (2 * k + 1)) [0..])

sumN 0 = 0
sumN n = sumN(n - 1) + n
