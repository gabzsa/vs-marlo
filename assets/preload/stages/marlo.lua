local xx = 425.59
local yy = 529.03
local xx2 = 986.95
local yy2 = 526.99
local ofs = 50
local followchars = true

function onCreate()

	makeLuaSprite('bg', 'marlo background sigh', -1000, -800)
	setScrollFactor('bg', 0.6, 1)
	scaleObject('bg', 1, 1)
	
	makeLuaSprite('bush', 'maro bushes also sorry for yelling in the mario ground filename', -1500, -300)
	setScrollFactor('bush', 0.8, 1)
	scaleObject('bush', 1, 1)
	
	makeLuaSprite('grnd', 'MARO GROUND', -2000, 720)
	setScrollFactor('grnd', 1, 1)
	scaleObject('grnd', 1, 1)
	
	addLuaSprite('bg', false)
	setProperty('bg.antialiasing',false)
	addLuaSprite('bush', false)
	setProperty('bush.antialiasing',false)
	addLuaSprite('grnd', false)
	setProperty('grnd.antialiasing',false)
end