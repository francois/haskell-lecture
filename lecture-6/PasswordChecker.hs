module PasswordChecker (strong)
where

import Data.Char (isUpper, isLower, isDigit)
import Data.List (all, any)

strong :: [Char] -> Bool
strong xs = all (== True) [lengthPred xs, uppercaseLetters xs, lowercaseLetters xs, digitLetters xs]

lengthPred :: [Char] -> Bool
lengthPred xs = (length xs) >= 15

uppercaseLetters :: [Char] -> Bool
uppercaseLetters = any isUpper

lowercaseLetters :: [Char] -> Bool
lowercaseLetters = any isLower

digitLetters :: [Char] -> Bool
digitLetters = any isDigit
