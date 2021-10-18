-- -- import Data.Maybe
-- fac :: (Integral a) => a -> a
-- fac 0 = 1
-- fac n = n * fac (n - 1)

-- main = do
--     print $ fac(5)
-- happyorSad :: Integer -> Bool
-- happyorSad mood = if mood == 1
--     then False
--     else True    

-- numIdentifier :: Int -> String 
-- numIdentifier n = if n < 0
--     then "negative"
--     else (if n == 0
--         then "zero"
--         else "positive")

-- simpleNumIdent n
--     | n < 0 = "negative"
--     | n == 0 = "zero"
--     | otherwise = "positive"


-- zeroDiv :: Integral a => a -> a -> Maybe a 
-- zeroDiv a b =
--     if b == 0 
--         then Nothing 
--         else Just $ div a b

-- data Fruits = 
--     Apple | Orange | Pear | Grapes | Avocado | Eww
--     deriving (Show)

-- printFruits :: String -> Fruits
-- printFruits a 
--     | a == "Red" = Apple
--     | a == "Orange" = Orange
--     | a == "Green" = Pear
--     | a == "Purple" = Grapes
--     | a == "DarkGreen" = Avocado
--     | otherwise = Eww

-- main = do
--     print $ zeroDiv 10 2
--     putStrLn "Hello World"
--     print $ printFruits("Purple")

-- import Data.List

-- fib1 n = snd . foldl fib_ (1, 0) . map (toEnum . fromIntegral) $ unfoldl divs n
--     where
--         unfoldl f x = case f x of
--                 Nothing     -> []
--                 Just (u, v) -> unfoldl f v ++ [u]

--         divs 0 = Nothing
--         divs k = Just (uncurry (flip (,)) (k `divMod` 2))

--         fib_ (f, g) p
--             | p         = (f*(f+2*g), f^2 + g^2)
--             | otherwise = (f^2+g^2,   g*(2*f-g))   
-- main = do
--     print $ fib1 3

-- fib :: Integer -> Integer
-- fib 0 = 0
-- fib 1 = 1
-- fib n = fib (n-1) + fib (n-2)
-- main = do
--     print $ fib 9