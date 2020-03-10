--Title: Touch and React 
-- Name: Owen 
--Course: ICS20 
-- This program does something when I click on the button.
-------------------------------------------------------------

--set the background colour
display.setDefault ("background", 153/255, 204/255, 255/255)

--hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible 
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

--create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false 

--create text object, set its position and make it invisible \
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false



-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when the blue button is clicked, it will make the text appear with the red button and make the blue button disapear.
local function BlueButtonListener(touch)
	if (touch.phase == "began") then 
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
    end

    if (touch.phase == "ended") then 
    	blueButton.isVisible = true 
    	redButton.isVisible = false
    	textObject.isVisible = false
    end
end 

-- add the respective listener to each function 
blueButton:addEventListener ("touch", BlueButtonListener)


-- Function: redButtonListener
-- Input: touch listener
-- Output: none
-- Description: when the red button is clicked -, it will make the text appear with the blue button and make the red button disapear.
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then 
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = false
    end
end

--add the event listener to the function
redButton:addEventListener ("touch", RedButtonListener)

