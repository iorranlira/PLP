incrementar :: Int -> Int
incrementar x = x + 1

function :: [Int] -> (Int, Int, Int)
function lista = verifica_elementos lista 0 0 0
    where   
        verifica_elementos [] x y z = (x, y, z)
        verifica_elementos(h:t) x y z
            |h <= 80 = verifica_elementos t (incrementar x) y z
            |h > 80 && h <= 88 = verifica_elementos t x (incrementar y) z
            |otherwise  = verifica_elementos t x y (incrementar z) 

main :: IO()
main = do
    input <- getLine
    let lista = read input :: [Int]
        (x, y, z) = function lista
    putStrLn ("=== Relatorio ===")
    putStrLn  ((show x) ++ " limite\n" ++ (show y) ++ " tolerancia\n"  ++ (show z) ++ " multa") 