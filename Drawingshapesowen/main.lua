
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

myTriangle:setFillColor(0.7, 0.5, 0.1)

myTriangle:setStrokeColor(0.4, 0.6, 0.3)



--------------------------------------------------------------------------------------



local trapezoidVertices = {-50,-50, -100,50, 100,50, 50,-50}
local trapezoidX = 500
local trapezoidY = 500
local myTrapezoid = display.newPolygon (trapezoidX, trapezoidY, trapezoidVertices )
local trapezoidText = display.newText("Trapezoid", 485,490, nil, 50)

myTrapezoid:setFillColor(0.1, 0.3, 0.8)

myTrapezoid:setStrokeColor(0.5, 0.2, 0.3)

---------------------------------------------------------------------------------------

local hexagonVertices = {-100,-100, -150,100, 150,100, 100,-100, -150,150, 100,150}
local hexagonX = 700
local hexagonY = 700


local myHexagon = display.newPolygon (hexagonX, hexagonY, hexagonVertices )
local hexagonText = display.newText("Hexagon", 685,690, nil, 50)


myHexagon:setFillColor(0.9, 0.3, 0.5)

myHexagon:setStrokeColor(0.1, 0.6, 0.3)


----------------------------------------------------------------------------------------


local pentagonVertices = {-300,-300, -350,300, 350,300, 300,-300, -250,250}
local pentagonX = 300
local pentagonY = 300

local myPentagon  = display.newPolygon (pentagonX, pentagonY, pentagonVertices )
local pentagonText = display.newText("Pentagon", 285, 290, nil, 50)



myPentagon:setFillColor(0.5, 0.6, 0.4)

myPentagon:setStrokeColor(0.1, 0.4, 0.6)

------------------------------------------------------------------------------------------


local heptagonVertices = {-900,-900, -950,900, 950,900, 900,-900, -850,850, }
local heptagonX = 900
local heptagonY = 870


local myHeptagon = display.newPolygon(heptagonX, heptagonY, heptagonVertices)
local heptagonText = display.newText("Heptagon", 885, 860, nil, 50)




myHeptagon:setFillColor(0.4, 0.5, 0.6)

myHeptagon:setStrokeColor(0.2, 0.1, 0.5)

 
----------------------------------------------------------------------------------------

local rectangleVertices = {-700,-700, -650, 600, 650,700, 700,-700}
local rectengleX = 700
local rectangleY = 670

local myRectangle = display.newRect(rectengleX, rectangleY, rectangleVertices)
local my RectangleText = display.newText("Rectangle", 685, 660, nil, 50)

myRectangle:setFillColor(0.4, 0.3, 0.9)

myRectangle:setStrokeColor(0.3, 0.4, 0.6)



 
---------------------------------------------------------------------------------------------/
















