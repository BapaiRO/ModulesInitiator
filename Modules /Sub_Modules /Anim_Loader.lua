local Loader = {}

Loader.LoadAnims = function(folder:Folder, animator: Animator)
	
	local AnimationTable:SharedTable = {}
	
	-- // Loading Animations
	
	for _, child in folder:GetChildren() do
		
		local AnimationTrack:AnimationTrack = animator:LoadAnimation(child)
		
		AnimationTrack.Priority = Enum.AnimationPriority.Action4
		
		AnimationTable[child.Name] = AnimationTrack
		
	end
	
	--
	
	return AnimationTable -- // Returning the table consisting of animations
	
end

return Loader
