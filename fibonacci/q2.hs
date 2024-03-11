somar_algarismos :: Integral a => a -> a
somar_algarismos algarismo = sum (quebrar_inteiro algarismo)

quebrar_inteiro :: Integral a => a -> [a]
quebrar_inteiro 0 = []
quebrar_inteiro algarismo = quebrar_inteiro (algarismo `div` 10) ++ [algarismo `mod`  10]

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

verifica_fibonacci :: Int -> Int 
verifica_fibonacci numero = go 0
    where 
        go n
            |somar_algarismos (fibonacci n) == numero = fibonacci n
            |otherwise = go (n+1)

main :: IO ()
main = do
    input <- getLine
    let num = (read input)
    putStrLn (show (verifica_fibonacci num))



