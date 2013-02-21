module PasswordChecker (strong)
where

import Data.Char (isUpper, isLower, isDigit)
import Data.List (any)

strong :: [Char] -> Bool
strong xs = and $ map (\f -> f xs) predicates

predicates :: [ [Char] -> Bool ]
predicates = [ lengthPred, uppercaseLetters, lowercaseLetters, digitLetters ]

lengthPred :: [Char] -> Bool
lengthPred xs = (length xs) >= 15

uppercaseLetters :: [Char] -> Bool
uppercaseLetters = any isUpper

lowercaseLetters :: [Char] -> Bool
lowercaseLetters = any isLower

digitLetters :: [Char] -> Bool
digitLetters = any isDigit
