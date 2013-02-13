module Homework where

data Unit = Meter
          | Yard
          | Litre
          | Gallon
          | Kilogram
          | Pound
      deriving (Ord, Eq)
instance Show Unit where
  show Meter    = "m"
  show Yard     = "yd"
  show Litre    = "l"
  show Gallon   = "gal"
  show Kilogram = "kg"
  show Pound    = "lb"

factor :: Unit -> Double
factor Meter    = 1.09361
factor Litre    = 0.264172
factor Kilogram = 2.20462
factor Yard     = 1 / (factor Meter)
factor Gallon   = 1 / (factor Litre)
factor Pound    = 1 / (factor Kilogram)

inverse :: Unit -> Unit
inverse Meter    = Yard
inverse Yard     = Meter
inverse Litre    = Gallon
inverse Gallon   = Litre
inverse Kilogram = Pound
inverse Pound    = Kilogram

convert :: (Double, Unit) -> (Double, Unit)
convert (n, u) = (n * (factor u), inverse u)

data Measurement = Measurement Double Unit deriving (Eq)
instance Show Measurement where
  show (Measurement n u) = (show n) ++ " " ++ (show u)

conv (Measurement n u) = measurement $ convert (n, u)
      where measurement (n1, u1) = Measurement n1 u1
