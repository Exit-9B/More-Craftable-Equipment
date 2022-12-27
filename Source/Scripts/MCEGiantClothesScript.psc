Scriptname MCEGiantClothesScript extends ObjectReference

Armor Property GiantClothes  Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akOldContainer as Actor
		Actor oldHost = akOldContainer as Actor
		if oldHost.IsEquipped(GiantClothes)
			oldHost.UnequipItem(GiantClothes)
			oldHost.QueueNiNodeUpdate()
		endif
	endif
EndEvent
