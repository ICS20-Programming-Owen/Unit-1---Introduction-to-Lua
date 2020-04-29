--MathFun
--Name: Owen
--Course: ICS20
--Description: this program...
---------------------------------------------------------

--hide the status bar
display.setStatusBar(display.hiddenStatusBar)

--set the background colour
display.setDefault("background", 155/255, 2,255, 155/255)

------------------------------------------------------------
--LOCAL VARIABLES
-----------------------------------------------------------

--create the local variables
local randomOperator
local randomNumber1
local randomNumber2
local correctAnswer
local questionObject
local numericField
local userAnswer
local incorrectObject
local correctObject

-- variables for the timer
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer

local livesText

local gameOver


--------------------------------------------------------------
--SOUNDS
-------------------------------------------------------------
--correct sound
local correctSound = audio.loadSound( "Sounds/correctSound.mp3" ) --setting the variable to an mp3 file
local correctSoundChannel

--incorrectSound
local incorrectSound = audio.loadSound( "Sounds/incorrectSound.mp3" )
local incorrectSoundChannel
-----------------------------------------------------------
--LOCAL FUNCTIONS
-----------------------------------------------------------

local function AskQuestion()
    --generate a random number between 1 and 2
    randomOperator = math.random(1, 4)

    --generate 2 random numbers 
    randomNumber1 = math.random(1, 10)
    randomNumber2 = math.random(1,10)

    --if the random operator is one then do addition
    if(randomOperator == 1) then 

        --calculate the correct userAnswer
        correctAnswer = randomNumber1 + randomNumber2

        --create the question in text object 
        questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "


    --otherwise, if the randomOperator is 2, do subtraction
    elseif (randomOperator == 2) then

        if (randomNumber1 >- randomNumber2) then
            correctAnswer = randomNumber1 - randomNumber2
            questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

        else correctAnswer = randomNumber2 - randomNumber1
           questionObject.text = randomNumber2 .. " - " .. randomNumber1 .. " = "   
        end   

    elseif (randomOperator == 3) then
        --calculate the correct answer
        correctAnswer = math.round(randomNumber1 * randomNumber2)

        --create the question in the text object
        questionObject.text = randomNumber1 .. " x " .. randomNumber2 .. ' = '

    elseif (randomOperator == 4) then
        --calculate the correct answer
        correctAnswer = randomNumber1 / randomNumber2
        correctAnswer = correctAnswer * 10
        correctAnswer = math.round(correctAnswer)
        correctAnswer = correctAnswer / 10

        --create the question in the text object 
        questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "
end end

--hide the correct answer
local function HideCorrect()
    correctObject.isVisible = false
    AskQuestion()
end

local function NumericFieldListener( event )
    --user begins editing numeric field 
    if ( event.phase == "began" ) then 

        --clear the text field
        event.target.text = ""

    elseif event.phase == "submitted" then 

        --when the users answer is submitted set the user input to the user's answer
        userAnswer = tonumber(event.target.text)

        --clear the text field
        event.target.text = ""

        --if the users answer and the correct answer are the same 
        if (userAnswer == correctAnswer) then
            correctObject.isVisible = true
            correctSoundChannel = audio.play(correctSound)


            timer.performWithDelay(1800, HideCorrect)

        else
            --if the users answer and the correct answer are different
            incorrectObject.isVisible = true
            incorrectSoundChannel = audio.play(incorrectSound)
            timer.performWithDelay(1800, HideIncorrect)
end end end

local function UpdateTime()

    -- decrement the number of seconds
    secondsLeft = secondsLeft - 1

    -- display the number of seconds left in the clock object
    clockText.text = secondsLeft .. ""

    if (secondsLeft == 0) then
        -- reset the number of seconds left
        LoseLives()
        AskQuestion()
    end
end
-----------------------------------------------------------------------------------------
--OBJECT CREATION
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--create the question object text
questionObject = display.newText("", display.contentWidth/4, display.contentHeight/3, nil, 45)

--create the numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/3, 200, 70 )
numericField.inputType = " decimal "

--add the event listener 
numericField:addEventListener( "userInput ", NumericFieldListener )

--make the correct teext object invisible to the user
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*1.5/3, nil, 45 )
correctObject:setTextColor(10/255, 195/255, 28/255 )
correctObject.isVisible = false

incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*1.5/3, nil, 45 )
incorrectObject:setTextColor(50/255, 0/255, 255/255 )
incorrectObject.isVisible = true

clockText = display.newText( "Time Left: 3", display.contentWidth/2, display.contentHeight*1.8/3, nil, 45 )
clockText:setTextColor(50/255, 0/255, 255/255 )
clockText.isVisible = true

livesText = display.newText( "Lives Left: 2", display.contentWidth/2, display.contentHeight*2.5/3, nil, 50)
livesText:setTextColor(50/255, 0/255, 255/255)
livesText.isVisible = true 

gameOver = display.newImage( "Images/gameOver (1).png", display.contentWidth, display.contentHeight)




-----------------------------------------------------------------------------
--FUNCTION CALLS
-----------------------------------------------------------------------------

--call on the ask question function
AskQuestion()



