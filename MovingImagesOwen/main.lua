--Ttle: Moving objects
--Name: Owen.Moving
--Course: ICS20
--This program moves a beetleship across the screen and then makes it fade it out. I added a
--second object that moves in a different direction, fades out, and grows in size.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3

--background image with width and hieght
local backgroundImage= display.newImageRect("Image/background.png", 2048, 1536)

--character image with width and hieght
local girl5 = display.newImageRect("Images/girl5.png", 200, 200)

--set the image to be transparent
girl5.alpha = 0

--set the initial x and y position of beetleship
girl5.x = 0
girl5.y = display.contentHeight/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scrollSpeed to the x-value of the ship
	girl5.x = girl5.x + scrollSpeed
	--change the transparency every time it moves so that it fades out\
    girl5.alpha = girl5.alpha + 0.01
end
--Move ship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
	
