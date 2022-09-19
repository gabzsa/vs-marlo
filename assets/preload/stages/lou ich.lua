local xx = 425.59
local yy = 529.03
local xx2 = 986.95
local yy2 = 526.99
local ofs = 50
local followchars = true

function onCreate()

	makeLuaSprite('bg2', 'groundback lou', -1300, -1300)
	setScrollFactor('bg2', 0.6, 1)
	scaleObject('bg2', 1, 1)
	
    makeLuaSprite('hud', 'hud', 0, 0)
        screenCenter('hud', 0, 0)
        setObjectCamera('hud', 'other')
    addLuaSprite(‘hud’, true)
	
	makeAnimatedLuaSprite('boo','boo idle',-590,-300)
    addAnimationByPrefix('boo','boo idle','boo idle',24,false)
    setScrollFactor('boo', 0.8, 0.8)
	
	makeLuaSprite('grnd2', 'lou stage ground', -1700, -530)
	setScrollFactor('grnd2', 1, 1)
	scaleObject('grnd2', 1, 1)
	
	addLuaSprite('hud', false)
	setProperty('hud.antialiasing',false)
	addLuaSprite('bg2', false)
	setProperty('bg2.antialiasing',false)
	addLuaSprite('boo', false)
	setProperty('boo.antialiasing',false)
	addLuaSprite('grnd2', false)
	setProperty('grnd2.antialiasing',false)
end

function onBeatHit()
    if curBeat% 2 == 0 then
		objectPlayAnimation('boo', 'boo idle', false);
		
	end
end