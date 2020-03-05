--Title:Local Variables
--Name:Owen
--Course:ISC20
--This program displays four different polygons.
<<<<<<< HEAD
---------------------------------------------------

--hide the Status Bar
display.setStatusBar(display.HiddenStatusBar)

local rect =display.newRect (160, 240, 150, 50)

local display.newtriangle (350, 420, 340, 240)

local display.newPentagon ( 120, 200, 110, 10)

local dispaly.newhexagon (640, 700, 610, 520)




=======
------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)


local myTriangle
local triangleText = display.newText
local triangleVertices = {0,-50, -50,50, 50,50}
local triangleX = 130
local triangleY = 100


myTriangle = display.newPolygon (triangleX, triangleY, triangleVertices )
--------------------------------------------------------------------------------------

local myTrapezoid
local trapezoidText
local trapezoidVertices = {-50,-50, -100,50, 100,50, 50,-50}
local trapezoidX = 500
local trapezoidY = 500

myTrapezoid = display.newPolygon (trapezoidX, trapezoidY, trapezoidVertices )
---------------------------------------------------------------------------------------


local myHexagon
local myPentagon
local myHeptagon





>>>>>>> 0cc20161c77bdac2fc60b64335e2426e7adc1170

