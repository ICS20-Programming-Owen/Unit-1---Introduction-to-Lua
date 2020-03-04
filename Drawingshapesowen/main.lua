--Title:Local Variables
--Name:Owen
--Course:ISC20
--This program displays four different polygons.
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






