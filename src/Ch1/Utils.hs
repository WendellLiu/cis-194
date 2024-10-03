module Ch1.Utils (
  toDigits,
  toDigitsRev,
  doubleEveryOther
) where

toDigits :: Integer -> [Integer]
toDigits num 
  | num < 0 = []
  | num == 0 = []
toDigits num  = toDigits ( num `div` 10 ) ++ [num `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits

calcFunc :: Int -> Integer -> Integer 
calcFunc index ele
  | even index = ele
  | otherwise = ele * 2

doubleAndConcatWhenIndexMatch :: (Int -> Integer -> Integer) -> Integer -> (Int, [Integer]) -> (Int, [Integer])
doubleAndConcatWhenIndexMatch eleFunc number (index, acc) = do
  let newNumber = eleFunc index number
  (index + 1, acc ++ [newNumber])

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther arr = do
  let result = foldr (doubleAndConcatWhenIndexMatch calcFunc) (0, []) arr
  reverse (snd result)
