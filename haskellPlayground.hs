--import qualified Data.Char as Char
{-
Lets define the grammar here

Character classes
    LETTER      00
    DIGIT       01
    UNKNOWN     99

Token codes
    INT_LIT     10
    IDENT       11
    ASSIGN_OP   20
    ADD_OP      21
    SUB_OP      22
    MULT_OP     23
    DIV_OP      24
    LEFT_PAREN  25
    RIGHT_PAREN 26

-}

--monty is making this one



--wordsWhen was inspired by 'Steve' on stack overflow
splitOnSpaces :: String -> [String]
splitOnSpaces = intoWordsFrom (==' ')

intoWordsFrom     :: (Char -> Bool) -> String -> [String]
intoWordsFrom a b =  case dropWhile a b of
                      "" -> []
                      b' -> w : intoWordsFrom a b''
                            where (w, b'') = break a b'














asEven :: Integral a => a -> a
asEven x = if even x
              then x
              else x + 1

-- myList :: [Integral]
myList = [0,1,2,3,4,5]

-- addFiveOne a = a + 5

addFiveAll :: Integral a => [a] -> [a]
addFiveAll = map (+5)

sumAll :: (Num a) => [a] -> a  
sumAll xs = foldl (\acc x -> acc + x) 0 xs  

