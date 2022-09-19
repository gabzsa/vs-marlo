function onCreate()
    makeLuaSprite('guitar', 'fisherpricedontsueme', 270, 620)
    setScrollFactor('guitar', 1, 1)
    defaultCamZoom = getProperty('defaultCamZoom') - 1
    scaleObject('guitar', 1.6, 1.6)
    setProperty('guitar.alpha', 0)
    addLuaSprite('guitar')
    setObjectOrder('guitar', getObjectOrder('boyfriendGroup') + 1)
end
function onEvent(name, value1, value2)
    if name == 'guitar' then
        duration = tonumber(value1)
        choose = tonumber(value2)
        if duration <= 0 then
            setProperty('guitar.alpha', choose)
        else
            doTweenAlpha('byebg', 'guitar', choose, duration, 'linear')
        end
    end
end