module Ch1.Utils (
  toDigits,
  toDigitsRev
) where

toDigits :: Integer -> [Integer]
toDigits num 
  | num < 0 = [] 
  | num == 0 = []
toDigits num  = toDigits ( num `div` 10 ) ++ [num `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits 

