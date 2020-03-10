-- Title: Numeric Text Fields
-- Name: Owen
-- Course: ICS20
-- this program displays a math question and asks the user to answer in numeric textfield terminal.
------------------------------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusbar(display.HiddenStatusBar)

-- sets the background colour 
display.setDefault("background", 124/255, 249/255, 199/255)

--------------------------------------------------------------------------
--LOCAL VARIABLES
---------------------------------------------------------------------------

-- create local variables
local questionObject 
local correctObject 
local numericField
local randomNumber1
local randomNumber2
local userAnswer 
local correctAnswer 

-------------------------------------------------------------------------------
--LOCAL FUNCTIONS 
-------------------------------------------------------------------------------

local function AskQuestion()
	--generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10) 

	correctAnswer = randomNumber1 + randomNumber2

	--create a question in the text object 
	questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end 