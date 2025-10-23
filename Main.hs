module Main where

import Token
import System.IO
import qualified Lex as L

main :: IO ()
main = do
    handle <- openFile "teste.j--" ReadMode
    contents <- hGetContents handle

    outputHandle <- openFile "resultados.j--" WriteMode
    hSetEncoding outputHandle utf8

    let tokens = L.alexScanTokens contents

    putStrLn "Tokens gerados pela análise léxica: "
    print tokens
    putStrLn "\n"

    hPutStrLn outputHandle "Tokens gerados pela análise léxica:"
    hPutStrLn outputHandle (show tokens) -- Convertendo a lista de tokens para string e botando no arquivo de saída
    hPutStrLn outputHandle "\n"

    hClose handle
    hClose outputHandle
