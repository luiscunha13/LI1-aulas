--module Main where

import Graphics.Gloss
import Data.List
import Graphics.Gloss.Interface.Pure.Game

type Estado = ((Float,Float), [Key])

estadoInicial :: Estado
estadoInicial = ((0,0), [])

desenhaEstado :: Estado -> Picture
desenhaEstado ((x,y), _) = Translate x y $ Color red $ circleSolid 20

reageEvento :: Event -> Estado -> Estado
reageEvento (EventKey k@(SpecialKey KeyUp) Down _ _) ((x,y), ks) = ((x,y),k:ks)
reageEvento (EventKey k@(SpecialKey KeyUp) Up _ _) ((x,y), ks) = ((x,y), delete k ks)
reageEvento (EventKey (SpecialKey KeyDown) Down _ _) (x,y) = (x,y-10)
reageEvento (EventKey (SpecialKey KeyRight) Down _ _) (x,y) = (x+10,y)
reageEvento (EventKey (SpecialKey KeyLeft) Down _ _) (x,y) = (x-10,y)
reageEvento _ s = s

reageTempo :: Float -> Estado -> Estado
reageTempo t ((x,y), []) = ((x,y), [])
reageTempo t ((x,y), k:ks) = reageTempo t (efeitoKey k (x,y), ks)

efeitoKey :: Key -> (Float,Float) -> (Float,Float)
efeitoKey (SpecialKey KeyUp) (x,y) = (x,y+5)
efeitoKey _ (x,y) = (x,y)

framerate :: Int
framerate = 60