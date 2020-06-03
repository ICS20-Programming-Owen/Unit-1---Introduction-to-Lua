-- Title: HelloWorld
-- Name: Owen
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
-------------------------------------------------------------------------------------

--print "Hello, World" to command terminal
print ("***Hellooooooooo World!")

--print "by Owen to the command terminal"


--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background colour 
display.setDefault("background", 124/255, 249/255, 199/255)

--create a local variable
local textObject 

--displays text on the screen at position x = 500 and y = 500 
--a default font style and a font style of 50 
textObject = display.newText( "Hello, Owen!", 500, 500, nil, 50)

--sets the colour of the text 
textObject:setTextColor(155/255, 42/255, 198/255)

local textObject

textObject = display.newText( "O.M", 500, 600, nil, 40)