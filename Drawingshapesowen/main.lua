
--Title:Local Variables
--Name:Owen
--Course:ISC20
--This program displays four different polygons.

---------------------------------------------------


--hide the Status Bar
display.setStatusBar(display.HiddenStatusBar)

set.fillColour(0.1, 0.4, 0.6)

set.strokeColour(0.9, 0.7, 0.6)

local rect = display.newRect (160, 240, 150, 50)

local display.newtriangle (350, 420, 340, 240)

local display.newPentagon ( 120, 200, 110, 10)

local dispaly.newhexagon (640, 700, 610, 520)
------------------------------------------------------------------------


set.fillColour(0.7, 0.5, 0.1)

set.srtokeColour(0.4, 0.6, 0.3)

local myTriangle
local triangleText = display.newText("Triangele")
local triangleVertices = {0,-50, -50,50, 50,50}
local triangleX = 130
local triangleY = 100


myTriangle = display.newPolygon (triangleX, triangleY, triangleVertices )
--------------------------------------------------------------------------------------

set.fillcolour(0.1, 0.3, 0.8,)

set.strokeColour(0.5, 0.2, 0.3)


local myTrapezoid
local trapezoidText = display.newText("Trapezoid")
local trapezoidVertices = {-50,-50, -100,50, 100,50, 50,-50}
local trapezoidX = 500
local trapezoidY = 500

myTrapezoid = display.newPolygon (trapezoidX, trapezoidY, trapezoidVertices )
---------------------------------------------------------------------------------------

set.fillColour(0.9, 0.3, 0.5)

set.strokeColour(0.1, 0.6, 0.3)


local myHexagon
local hexagonText = display.newText("Hexagon")
local hexagonVertices {-600,-600, -650,600, 650,600, 600,-600, -550,550, 700,650}
local hexagonX = 700
local hexagonY = 700

myHexagon = display.newPolygon (hexagonX, hexagonY, hexagonVertices )
----------------------------------------------------------------------------------------

set.fillColour(0.5, 0.6, 0.4,)

set.strokeColour(0.1, 0.4, 0.6)


local myPentagon
local pentagonText = display.newText("Pentagon")
local pentagonVertices {-300,-300, -350,300, 350,300, 300,-300, -250,250}
local pentagonX = 300
local pentagonY = 300

myPentagon = display.newPolygon (pentagonX, pentagonY, pentagonVertices )
------------------------------------------------------------------------------------------


set.fillcolour(0.4, 0.5, 0.6)

strokeColour(0.2, 0.1, 0.5)


local myHeptagon
local heptagonText = display.newText("Heptagon")
local heptagonVertices {-900,-900, -950,900, 950,900, 900,-900, -850,850, }
local heptagonX = 900
local heptagonY = 870

myHeptagon = diplay.newPolygon (hexagonX, heptagonY, heptagonVertices)
----------------------------------------------------------------------------------------

set.fillColour(0.4, 0.3, 0.9)

set.strokeColour(0.3, 0.4, 0.6)


local myRectangle
local my RectangleText = display.newText("Rectangle")
local rectangleVertices {-700,-700, -650, 600, 650,700, 700,-700}
local rectengleX = 700
local rectangleY = 670

myRectangle = display.newRect {rectengleX, rectangleY, rectangleVertices}
---------------------------------------------------------------------------------------------/
















