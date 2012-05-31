import Data.Complex
import List

--mandelbrotFindChar :: t -> Char = _
--mandelbrotFindItors :: RealFloat a => Complex a -> Int -> Maybe Int = _

--mandl :: Num a => a -> [a] = _
mandl a = iterate (\z -> z^2 + a) a 

mandelbrotFindItors z max = findIndex (\x->(magnitude x) > 2) (take max (mandl z))
mandelbrotFindChar Nothing = '*'
mandelbrotFindChar (Just x) = ' '

--mapM_ putStrLn 

fullset = [[if (mandelbrotFindItors (x :+ y) 100) == Nothing then '*' else ' ' | x <- [-2, -1.9685 .. 0.5]] |  y <- [1, 0.95 .. -1]]