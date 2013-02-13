module Tree
where

data Tree = Leaf Int
          | Tree Int Tree Tree

add :: Tree -> Int
add (Leaf n) = n
add (Tree n left right) = n + (add left) + (add right)
