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
local beetleship = display.newImageRect("Images/beetleship.png", 150, 150)
local beetleshipWidth = beetleship.width
local beetleshipHeight = beetleship.height

local rocketship = display.newImageRect("Images/rocketship.png", 150, 150)
local rocketshipWidth = rocketship.Width
local rocketshipHieght = rocketship.Hieght

--my boolean variables to keep track of which object i touched first 
local alreadyTouchedBeetleship = false 
local alreadyTouchedRocketship = false

--set the initial x and y position of my image 
beetleship.x = 400
beetleship.y = 500

rocketship.x = 300
rocketship.y = 200

-- Function: BeetleshipListener
-- Input: touch listener
-- Output: none
--Description: when beetleship is touched, move it
local function BeetleshipListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedRocketship == false) then
			alreadyTouchedBeetleship = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedBeetleship == true) ) then
		beetleship.x = touch.x
		beetleship.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedBeetleship = false
		alreadyTouchedBeetleship = false 
	end 
end 

--add the respective listeners to each object 
beetleship:addEventListener("touch", BeetleshipListener)

-- Function: RocketshipListener
-- Input: touch listener
-- Output: none
--Description: when rockethip is touched, move it
local function RocketshipListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedBeetleship == false) then
			alreadyTouchedRocketship = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedRocketship == true) ) then
		rocketship.x = touch.x
		rocketship.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedRocketship = false
		alreadyTouchedRocketship = false 
	end 
end 

--add the respective listeners to each object 
rocketship:addEventListener("touch", RocketshipListener)
