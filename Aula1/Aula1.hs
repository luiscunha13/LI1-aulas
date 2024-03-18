area :: Double -> Double
area a = a*a


perimetro :: Double -> Double -> Double
perimetro a b = 2*a + 2*b

--caractere :: [String] -> Char -> Bool
--caractere [ae] b = if elem b [ae] then True else False

remove :: [a] -> [a]
remove l = if mod (length l) 2 == 0 then tail l else take 1 l

par :: [a] -> (a,a)
par l = (head l,last l)

parnome :: [String] -> (String,String)
parnome a = par a

headprimeiro :: ([a],[b]) -> (a,[b])
headprimeiro (xs,ys) = (head xs,ys)

abreviaNome :: [String] -> String
abreviaNome n = (head (head n)) : ("." ++ last n) 
-- : ´e usado para se ligar um elemento a um elemento de outro tipo 
-- ++ ´e usado para ligar strings 



