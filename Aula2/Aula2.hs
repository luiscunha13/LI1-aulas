import Data.Char
--1
incrementa :: Int -> [Int] -> [Int]
incrementa valor [] = []
incrementa valor (h:t) = (valor + h) : (incrementa valor t)

--2
removerchar :: Char -> [String] -> [String]
removerchar letra [] = []
removerchar letra(h:t) 
    |head(h) == letra = removerchar letra t
    | otherwise = h : removerchar letra t


--3
addvalor :: Int -> [(Int,Int)] -> [(Int,Int)]
addvalor n [] = []
addvalor n ((x,y):t) = (x+n,y):(addvalor n t)

--4
maiorvalor :: [(Int,Int)] -> Int
maiorvalor [(x,y)] = y
maiorvalor (h:t) = let (a,b) = h 
                       recCall = maiorvalor t in 
                   if b > recCall
                   then b
                   else recCall 

--5
proximodigito :: Char -> Char
proximodigito c 
    |c == '9' = '0'
    |otherwise = chr (ord c+1)

--6
sucessor :: [Int] -> [Int]
sucessor [] = []
sucessor (h:t) = h+1 : sucessor t

--7
vogal :: [Char] -> [Char]
vogal [] = []
vogal (h:t)
    | h == 'a' = 'e' : vogal t
    | h == 'e' = 'i' : vogal t
    | h == 'i' = 'o' : vogal t
    | h == 'o' = 'u' : vogal t
    | h == 'u' = 'a' : vogal t

--8
type Nome = String
type Coordenada = (Int, Int)
data Movimento= N | S | E | W deriving (Show,Eq) -- norte, sul, este, oeste
type Movimentos = [Movimento]
data PosicaoPessoa = Pos Nome Coordenada deriving (Show,Eq)

--8 a)
--posicao :: PosicaoPessoa -> Movimentos -> PosicaoPessoa
--posicao a [] = a 
--posicao a (h:t)
--    | h == N = 

