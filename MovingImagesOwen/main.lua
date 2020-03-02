--Ttle: Moving objects
--Name: Owen.Moving
--Course: ICS20
--This program moves a beetleship across the screen and then makes it fade it out. I added a
--second object that moves in a different direction, fades out, and grows in size.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setsStatusBar(display.HiddenStatusbar)

--global variables
scrollSpeed=3

--background image with width and hieght
local backgroundImage= display.newImageRect("Image/background.png", 2048, 1536)

--character image with width and hieght
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHieght/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scrollSpeed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	--change the transparency every time it moves so that it fades out\
    beetleship.alpha = beetleship.alpha = 0.01
end
--Move ship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
	
