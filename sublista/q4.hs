verifica_lista :: [Int] -> Int
verifica_lista [] = 0
verifica_lista [x] = 0
verifica_lista [x, y] = if x < y then 1  else 0
verifica_lista (h:s:t:ta)  
    |h < s  && s < t = 1 + verifica_lista ta 
    |h < s && s > t = 1 + verifica_lista (t:ta)
    |h > s = verifica_lista (s:t:ta)
    |otherwise = verifica_lista ta


main :: IO()
main = do
    input <- getLine
    let listaStr = words input
        listaInt = map read listaStr :: [Int]
    putStrLn (show (verifica_lista listaInt))