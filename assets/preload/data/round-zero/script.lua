--Don't yell at me for my organization
local xx = 480;
local yy = 580;
local xx2 = 770;
local yy2 = 500;
local ofs = 20;
local followchars = true;

function onCreate()
    setProperty('skipCountdown',true)
    
    -- cool cenimatic aspect ratio/black bars
	makeLuaSprite('bartop','',-200,-30)
	makeGraphic('bartop',2000,100,'000000')
	addLuaSprite('bartop',false)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')

    makeLuaSprite('barbot','',-200,650)
	makeGraphic('barbot',2000,100,'000000')
	addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    --prechaching images
    precacheImage('skPort');
    precacheImage('sexePort');

--i'm already knowing all the coder niggas are gonna look at this and be like, "BANIMS WHY DID YOU DO THE TEXT LIKE THIS", to which I reply, "idk LMAO"

    -- exe dialogue text shit

    makeLuaText('exeDialogue1', 'Youll never be able to escape me Sonic..', 400, 200)
    addLuaText('exeDialogue1', true)
    setTextSize('exeDialogue1', 30.0)
    setTextAlignment('exeDialogue1', 'left')
    setTextColor('exeDialogue1','ff0000')
    setObjectCamera('exeDialogue1','hud')
    setProperty('exeDialogue1.y', 540)
    setProperty('exeDialogue1.alpha', 0.0001)

    makeLuaText('exeDialogue2', 'after all.. I AM GOD >:D', 400, 200)
    addLuaText('exeDialogue2', true)
    setTextSize('exeDialogue2', 30.0)
    setTextAlignment('exeDialogue2', 'left')
    setTextColor('exeDialogue2','ff0000')
    setObjectCamera('exeDialogue2','hud')
    setProperty('exeDialogue2.y', 540)
    setProperty('exeDialogue2.alpha', 0.0001)

    makeLuaText('exeDialogue3', 'HARDY HAR HAR HARRRRR!!', 400, 200)
    addLuaText('exeDialogue3', true)
    setTextSize('exeDialogue3', 30.0)
    setTextAlignment('exeDialogue3', 'left')
    setTextColor('exeDialogue3','ff0000')
    setObjectCamera('exeDialogue3','hud')
    setProperty('exeDialogue3.y', 540)
    setProperty('exeDialogue3.alpha', 0.0001)

    makeLuaText('exeDialogue4', ':c', 400, 200)
    addLuaText('exeDialogue4', true)
    setTextSize('exeDialogue4', 30.0)
    setTextAlignment('exeDialogue4', 'left')
    setTextColor('exeDialogue4','ff0000')
    setObjectCamera('exeDialogue4','hud')
    setProperty('exeDialogue4.y', 540)
    setProperty('exeDialogue4.alpha', 0.0001)

    -- sk sonic dialogue text shit
    makeLuaText('skDialogue1', 'Yo.. you do not scare me.. or anyone XD ', 400, 700)
    addLuaText('skDialogue1', true)
    setTextSize('skDialogue1', 30.0)
    setTextAlignment('skDialogue1', 'left')
    setTextColor('skDialogue1','0040ff')
    setObjectCamera('skDialogue1','hud')
    setProperty('skDialogue1.y', 540)
    setProperty('skDialogue1.alpha', 0.0001)

    makeLuaText('skDialogue2', 'Also youre are NOT fucking gOD LMAOO', 400, 700)
    addLuaText('skDialogue2', true)
    setTextSize('skDialogue2', 30.0)
    setTextAlignment('skDialogue2', 'left')
    setTextColor('skDialogue2','0040ff')
    setObjectCamera('skDialogue2','hud')
    setProperty('skDialogue2.y', 540)
    setProperty('skDialogue2.alpha', 0.0001)

    makeLuaText('skDialogue3', 'LMFAO', 400, 700)
    addLuaText('skDialogue3', true)
    setTextSize('skDialogue3', 30.0)
    setTextAlignment('skDialogue3', 'left')
    setTextColor('skDialogue3','0040ff')
    setObjectCamera('skDialogue3','hud')
    setProperty('skDialogue3.y', 540)
    setProperty('skDialogue3.alpha', 0.0001)

    --portraits

    makeLuaSprite('exePort', 'sk exe portrait', 100, 140);
	setLuaSpriteScrollFactor('exePort', 0.0, 0.0);
	addLuaSprite('exePort', false);
    setObjectCamera('exePort','hud')

    makeLuaSprite('skPort', 'sk sonic portrait', 800, 170);
	setLuaSpriteScrollFactor('skPort', 0.0, 0.0);
	addLuaSprite('skPort', false);
    setObjectCamera('skPort','hud')

    --portrait bar

    makeLuaSprite('barbottox','',-200,530)
	makeGraphic('barbottox',2000,800,'000000')
	addLuaSprite('barbottox',false)
    setScrollFactor('barbottox',0,0)
    setObjectCamera('barbottox','hud')

    doTweenY('barTopTween', 'bartop', -100, 0.0001, 'linear')
    doTweenY('barBotTween', 'barbot', 750, 0.0001, 'linear')

    doTweenX('skPortTween', 'skPort', 1300, 0.0001, 'linear')
    doTweenX('exePortTween', 'exePort', -390, 0.0001, 'linear')
    doTweenY('barBottoxTween', 'barbottox', 800, 0.0001, 'quintOut')
    doTweenAlpha('uiAlphaShitz', 'camHUD', 0.0, 0.0001, 'linear')

end

function onBeatHit()

    if curBeat == 5 then
        doTweenAlpha('uiAlphaShitz', 'camHUD', 1.0, 2.0, 'linear')

    end

    if curBeat == 8 then
        doTweenY('barTopTween', 'bartop', -30, 2.0, 'quintOut')
        doTweenY('barBotTween', 'barbot', 650, 2.0, 'quintOut')

    end

-- dialogue shit starts at beats 174 and 175

    if curBeat == 174 then
        doTweenY('barBottoxTween', 'barbottox', 510, 1.5, 'quintOut')
        doTweenAlpha('gameCamAlphaTween', 'camGame', 0.5, 1.0, 'quadInOut')
        --bottom UI shiz gone
        doTweenAlpha('healthAlphaTween', 'healthBar', 0.0, 1.0, 'linear');
        doTweenAlpha('healthBGAlphaTween', 'healthBarBG', 0.0, 1.0, 'linear');
        doTweenAlpha('iconP1AlphaTween', 'iconP1', 0.0, 1.0, 'linear');
        doTweenAlpha('iconP2AlphaTween', 'iconP2', 0.0, 1.0, 'linear');
        doTweenAlpha('scoreTxtAlphaTween', 'scoreTxt', 0.0, 1.0, 'linear');
    end

    if curBeat == 175 then
        doTweenX('skPortTween', 'skPort', 800, 1.0, 'quintOut')
        doTweenX('exePortTween', 'exePort', 100, 1.0, 'quintOut')
        setProperty('exeDialogue1.alpha', 1.0)
    end

    if curBeat == 181 then
        setProperty('exeDialogue2.alpha', 1.0)
        setProperty('exeDialogue1.alpha', 0.0001)
    end

    if curBeat == 185 then
        setProperty('exeDialogue3.alpha', 1.0)
        setProperty('exeDialogue2.alpha', 0.0001)
    end

    if curBeat == 188 then
        setProperty('skDialogue1.alpha', 1.0)
    end

    if curBeat == 189 then
        setProperty('exeDialogue3.alpha', 0.0001)
    end

    if curBeat == 195 then
        setProperty('skDialogue2.alpha', 1.0)
        setProperty('skDialogue1.alpha', 0.0001)
    end

    if curBeat == 198 then
        setProperty('exeDialogue4.alpha', 1.0)
    end

-- dialogue shit ends at beats 199 and 202

    if curBeat == 199 then
        setProperty('skDialogue3.alpha', 1.0)
        setProperty('skDialogue2.alpha', 0.0001)
        doTweenX('skPortTween', 'skPort', 1300, 0.6, 'quintIn')
        doTweenX('exePortTween', 'exePort', -390, 2.0, 'quintIn')
    end

    if curBeat == 202 then
        setProperty('skDialogue3.alpha', 0.0001)
        setProperty('exeDialogue4.alpha', 0.0001)
        doTweenAlpha('gameCamAlphaTween', 'camGame', 1.0, 1.0, 'quadInOut')
        doTweenY('barBottoxTween', 'barbottox', 800, 1.0, 'quintIn')
    -- bottom ui shiz is back
        doTweenAlpha('healthAlphaTween', 'healthBar', 1.0, 1.0, 'linear');
        doTweenAlpha('healthBGAlphaTween', 'healthBarBG', 1.0, 1.0, 'linear');
        doTweenAlpha('iconP1AlphaTween', 'iconP1', 1.0, 1.0, 'linear');
        doTweenAlpha('iconP2AlphaTween', 'iconP2', 1.0, 1.0, 'linear');
        doTweenAlpha('scoreTxtAlphaTween', 'scoreTxt', 1.0, 1.0, 'linear');
    end

    if curBeat == 303 then
        setProperty('dad.alpha', 0.0001)

    end

end

function onEvent( name, value1,value2)
	if name == 'Camera Zoom Speed' then
		camSpeed = value1
		camInt = value2
	end

end

function onStepHit()
    
	if curStep % camSpeed == 0 then
		triggerEvent('Add Camera Zoom',0.015*camInt,0.04*camInt)
	end
end

function onCreatePost()
    --setProperty('camHUD.alpha', 0.0001)
    setScrollFactor('boyfriend', 1.2, 1.2)

end

function opponentNoteHit(i,d,t,s)
    
	--if getProperty('health') > 0.1 then
		--setProperty('health',getProperty('health')-0.018)
	--end

end

function onUpdate()
    --GF is OUTTA THERE!!
	setProperty('gf.visible',false);


    if followchars == true then
        if mustHitSection == false then

            --DAD
            setProperty('defaultCamZoom',0.9)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            --BOYFRIEND
            setProperty('defaultCamZoom',0.8)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
            end

        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end


