regra :: Int -> Int -> Int -> Float
regra x y z = fromIntegral(z * y) / fromIntegral x


main :: IO()
main = do
    x <- readLn
    y <- readLn
    z <- readLn
    let result = regra x y z

    putStrLn ("O valor de x é: " ++ show result)