dobro :: Int->Int
dobro x = 2*x

main::IO()
main = do
    input <- getLine 
    let num = dobro(read input)
    print num