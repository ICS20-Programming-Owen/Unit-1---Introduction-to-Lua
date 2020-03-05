-----------------------------------------------------------------------------------------
--Title: Touch and Drag
--Name: Owen
--Course: ICS20
--This program displays images that react to a mouse or a persons finger.
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar(display.hiddenStatusBar)

--local variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local beetleShip = display.newImageRect("Images/beetleshipcopy.png", 150, 150)
local beetleShipWidth =beetleShip.width
local beetleShipHieght = beetleShip.Hieght

local rocketShip = display.newImageRect("Images/rocketShip.png", 150, 150)
local rocketShipWidth = rocketShip.Width
local rocketshipHieght = rocketship.Hieght

--my boolean variables to keep track of which object i touched first 
local alreadyTouchedBeetleShip = false 
local alreadyTouchedRocketShip = false

--set the initial x and y position of my image 
beetleShip.x = 400
beetleShip.y = 500

rocketShip.x = 300
rocketship.y = 200

-- Function: Rocketshiplistener
-- Input: touch listener
-- Output: none
--Description: when rockethip is touched, move it
local function Rocketshiplistener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedRocketShip == false) then
			alreadyTouchedBeetleShip = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedBeetleShip == true) ) then
		beetleShip.x = touch.x
		beetleShip.y = touch.y 
	een
	if (touch.phase == "ended") then
		alreadyTouchedBeetleShip = false
		alreadyTouchedRocketShip = false 
	end 
end 

--add the respective listeners to each object 
rocketShip:addEventListener("touch", Rocketshiplistener)
