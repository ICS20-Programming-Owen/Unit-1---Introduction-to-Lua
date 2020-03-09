
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



local trapezoidVertices = {-50,50, 100,50, 200,-50, -150,-50}
local trapezoidX = 500
local trapezoidY = 500
local myTrapezoid = display.newPolygon (trapezoidX, trapezoidY, trapezoidVertices )
local trapezoidText = display.newText("Trapezoid", 485,490, nil, 50)

myTrapezoid:setFillColor(0.1, 0.3, 0.2)

myTrapezoid:setStrokeColor(0.1, 0.2, 0.9)

-- flip the trapezoid
myTrapezoid:scale(1, -1)
---------------------------------------------------------------------------------------

local hexagonVertices = {100,100, 200,0, 100,-100, -100,-100, -200,0, -100,100}
local hexagonX = 700
local hexagonY = 700


local myHexagon = display.newPolygon (hexagonX, hexagonY, hexagonVertices )
local hexagonText = display.newText("Hexagon", 685,690, nil, 50)


myHexagon:setFillColor(0.1, 0.3, 0.2)

myHexagon:setStrokeColor(0.1, 0.2, 0.3)


----------------------------------------------------------------------------------------


local pentagonVertices = {-250,250, -150,150, -150,50, -350,50, -350,150}
local pentagonX = 300
local pentagonY = 300

local myPentagon  = display.newPolygon (pentagonX, pentagonY, pentagonVertices )
local pentagonText = display.newText("Pentagon", 285, 290, nil, 50)



myPentagon:setFillColor(0.1, 0.2, 0.3)

myPentagon:setStrokeColor(0.1, 0.2, 0.3)



--flip the pentagon
myPentagon:scale(1,-1)
------------------------------------------------------------------------------------------


local heptagonVertices = {900,900, 950,900, 950,900, 900,900, 850,850, }
local heptagonX = 900
local heptagonY = 870


local myHeptagon = display.newPolygon(heptagonX, heptagonY, heptagonVertices)
local heptagonText = display.newText("Heptagon", 885, 860, nil, 50)




myHeptagon:setFillColor(0.2, 0.2, 0.3)

myHeptagon:setStrokeColor(0.2, 0.1, 0.3)

 
----------------------------------------------------------------------------------------





 
---------------------------------------------------------------------------------------------/
















