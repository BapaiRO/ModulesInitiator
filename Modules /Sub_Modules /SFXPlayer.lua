local module = {}

module.PlaySFX = function(root: BasePart, folder:Folder, sound:Sound)
	
	if folder ~= nil then
	
	for _, soundfx in folder:GetChildren() do
		
		soundfx = soundfx:Clone()
		
		soundfx.Parent = root
		
		soundfx:Play()
		
		game:GetService("Debris"):AddItem(soundfx, soundfx.TimeLength)
		
	end
	
	end
	
	if sound then
		
		sound = sound:Clone()
		
		sound.Parent = root
		
		sound:Play()
		
		game:GetService("Debris"):AddItem(sound, sound.TimeLength)
		
	end
	
end

return module
