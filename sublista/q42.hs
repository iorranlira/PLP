countSublistsCrescentes :: [Int] -> Int
countSublistsCrescentes [] = 0
countSublistsCrescentes [_] = 0
countSublistsCrescentes (x:y:xs)
    | x < y = 1 + countSublistsCrescentes (y:xs)
    | otherwise = countSublistsCrescentes (y:xs)

main :: IO ()
main = do
    putStrLn "Digite a lista de números inteiros separados por espaços:"
    input <- getLine
    let lista = map read (words input) :: [Int]
        resultado = countSublistsCrescentes lista
    putStrLn $ "Número de sublistas crescentes encontradas: " ++ show resultado
