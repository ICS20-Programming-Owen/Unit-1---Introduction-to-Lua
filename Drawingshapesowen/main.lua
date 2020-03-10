
--Title:Local Variables
--Name:Owen
--Course:ISC20
--This program displays four different polygons.

---------------------------------------------------


--hide the Status Bar
display.setStatusBar(display.HiddenStatusBar)


-------------------------------------------------------




local triangleVertices = {0,-50, -50,50, 50,50}
local triangleX = 130
local triangleY = 100

local myTriangle = display.newPolygon(triangleX, triangleY, triangleVertices )
local triangleText = display.newText("Triangle", 115, 120, nil, 50 )

myTriangle:setFillColor(0.3, 0.1, 0.4)

myTriangle:setStrokeColor(0.5, 0.2, 0.3)



--------------------------------------------------------------------------------------



<<<<<<< HEAD
local trapezoidVertices = {-50,50, 100,50, 200,-50, -150,-50}
local trapezoidX = 500
local trapezoidY = 500
=======
local trapezoidVertices = {-50,-50, -100,50, 100,50, 50,-50}
local trapezoidX = 50
local trapezoidY = 30
>>>>>>> df92f1f7b1df5922f955a640a570327b10a71e5c
local myTrapezoid = display.newPolygon (trapezoidX, trapezoidY, trapezoidVertices )
local trapezoidText = display.newText("Trapezoid", 485,490, nil, 50)

myTrapezoid:setFillColor(0.1, 0.3, 0.2)

myTrapezoid:setStrokeColor(0.1, 0.2, 0.9)

-- flip the trapezoid
myTrapezoid:scale(1, -1)
---------------------------------------------------------------------------------------

<<<<<<< HEAD
local hexagonVertices = {100,100, 200,0, 100,-100, -100,-100, -200,0, -100,100}
local hexagonX = 700
local hexagonY = 700
=======
local hexagonVertices = {-100,-100, -150,100, 150,100, 100,-100, -150,150, 100,150}
local hexagonX = 70
local hexagonY = 70
>>>>>>> df92f1f7b1df5922f955a640a570327b10a71e5c


local myHexagon = display.newPolygon (hexagonX, hexagonY, hexagonVertices )
local hexagonText = display.newText("Hexagon", 85,65, nil, 50)


myHexagon:setFillColor(0.1, 0.3, 0.2)

myHexagon:setStrokeColor(0.1, 0.2, 0.3)


----------------------------------------------------------------------------------------


<<<<<<< HEAD
local pentagonVertices = {-250,250, -150,150, -150,50, -350,50, -350,150}
local pentagonX = 300
local pentagonY = 300
=======
local pentagonVertices = {-50,-100, -150,100, 150,100, 100,-100, -150,150}
local pentagonX = 70
local pentagonY = 85
>>>>>>> df92f1f7b1df5922f955a640a570327b10a71e5c

local myPentagon  = display.newPolygon (pentagonX, pentagonY, pentagonVertices )
local pentagonText = display.newText("Pentagon", 100, 130, nil, 50)



myPentagon:setFillColor(0.1, 0.2, 0.3)

myPentagon:setStrokeColor(0.1, 0.2, 0.3)



--flip the pentagon
myPentagon:scale(1,-1)
------------------------------------------------------------------------------------------


<<<<<<< HEAD
local heptagonVertices = {900,900, 950,900, 950,900, 900,900, 850,850, }
local heptagonX = 900
local heptagonY = 870
=======
local heptagonVertices = {-100,-100 -150,100, 150,100, 100,-100, -150,150, }
local heptagonX = 85
local heptagonY = 100
>>>>>>> df92f1f7b1df5922f955a640a570327b10a71e5c


local myHeptagon = display.newPolygon(heptagonX, heptagonY, heptagonVertices)
local heptagonText = display.newText("Heptagon", 85, 60, nil, 50)




myHeptagon:setFillColor(0.2, 0.2, 0.3)

myHeptagon:setStrokeColor(0.2, 0.1, 0.3)

 
----------------------------------------------------------------------------------------

<<<<<<< HEAD
=======
local rectangleVertices = {-100,-100, -150, 100, 150,100, 100,-100}
local rectengleX = 85
local rectangleY = 90

local myRectangle = display.newRect(rectengleX, rectangleY, rectangleVertices)
local my RectangleText = display.newText("Rectangle", 85, 60, nil, 50)

myRectangle:setFillColor(0.4, 0.3, 0.9)
>>>>>>> df92f1f7b1df5922f955a640a570327b10a71e5c




 
---------------------------------------------------------------------------------------------/
















