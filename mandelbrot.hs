-- Generates the Mandlebrot set

import Data.Complex
import List

mandl a = iterate (\z -> z^2 + a) a 

mandelbrotFindItors z max = findIndex (\x->(magnitude x) > 2) (take max (mandl z))
mandelbrotFindChar Nothing = '*'
mandelbrotFindChar (Just x) = ' '

--fullset creates a ascii representation of the set 
--to print it out to the screen, 
--mapM_ putStrLn fullset 

fullset = [[if (mandelbrotFindItors (x :+ y) 100) == Nothing then '*' else ' ' | x <- [-2, -1.9685 .. 0.5]] |  y <- [1, 0.95 .. -1]]
