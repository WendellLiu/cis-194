module Ch1.Utils (
  toDigits,
  toDigitsRev,
  doubleEveryOther,
  sumDigits,
  isValid
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

sumAndSum :: Integer -> Integer -> Integer
sumAndSum acc num = do
  let splitDigits = (sum . toDigits) num 
  acc + splitDigits

sumDigits :: [Integer] -> Integer
sumDigits = foldl sumAndSum 0

isDivisibleByTen :: Integer -> Bool
isDivisibleByTen num
  | num `mod` 10 == 0 = True
  | otherwise = False

isValid :: Integer -> Bool
isValid = isDivisibleByTen .sumDigits . doubleEveryOther . toDigits
