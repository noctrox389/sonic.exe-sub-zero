function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Red Ring Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_Red Ring', true); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end

		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Red Ring Note' then
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "Red Ring Note" then

	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "Red Ring Note" then
		if getProperty('health') > 0.1 then
			setProperty('health',getProperty('health')-0.4)
		end

		playSound('red_ring_sfx', 10.0);
	end
end