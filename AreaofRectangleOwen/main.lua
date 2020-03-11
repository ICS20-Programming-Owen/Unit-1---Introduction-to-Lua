--Title: AreaOfRectangleAndCircle
-- Name: Owen
-- Course: ICS2O/3C
-- This program displays a rectangle and shows its area 

--create my local variables
local areaText
local textSize = 50 
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200 
local AreaOfRectangleAndCircle

--set the background colour of my screen. (colours are between 0 and 1)
display.setDefault("background", 28/255, 121/255, 243/255)

--set status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and sets its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set the width of the border 
myRectangle.strokeWidth = 20

--set the colour of the rectangle 
myRectangle:setStrokeColor(0, 1, 0)

--calculate the area
AreaOfRectangle = widthOfRectangle * heightOfRectangle

--write the area on the screen.
 areaText = display.newText("The area of this rectangle with a width of \n" .. 
 	widthOfRectangle .. " snd height of " .. heightOfRectangle .. "is" .. 
 	AreaOfRectangle .. "pixels^2", 0, 0, Arial, textSize)

 --anchor the text and set it to (x,y) position
 areaText.anchorX = 0
 areaText.anchorY = 0 
 areaText.x = 20
 areaText.y = display.contentHeight/2

 --set the colour of the new text 
 areaText:setTextColor(1, 1, 1)