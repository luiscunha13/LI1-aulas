module Main where
import Graphics.Gloss

circulo1 :: Picture
circulo1 = Circle 50

circulo2 :: Picture
circulo2 =  rotate (-45) $ scale 0.5 1 $ Translate (-60) 30 circulo1

circulo3 :: Picture
circulo3 = scale 1 0.5 $ color yellow $ circleSolid 20

circuloVermelho :: Picture
circuloVermelho = Color red circulo1

quadradoVerde :: Picture
quadradoVerde = color green $ rectangleSolid 20 20

linhapoligonal :: Picture
linhapoligonal = Line [(0,0), (-200,0), (200,200), (0,200), (0,0)]

quadradopoligono = Pictures [quadradoVerde, linhapoligonal, circulo3]

circuloAzul :: Picture
circuloAzul = Color blue circulo2

circulos = Pictures [circuloVermelho, circuloAzul]

window  :: Display
window = InWindow "Janela" (200,200) (10,10)

background :: Color
background = greyN 0.8

main :: IO ()
main = display window background quadradopoligono