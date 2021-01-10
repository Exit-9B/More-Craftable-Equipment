Scriptname MCEInitScript extends Quest

Actor Property PlayerRef  Auto

Perk Property MCEMatchingSet  Auto
Perk Property MCEMatchingSetHeavy  Auto

MiscObject Property MCEThread  Auto
LeveledItem Property LItemClothesAll  Auto
LeveledItem Property LItemMiscVendorMiscItems75  Auto

Event OnInit()
	RegisterForSingleUpdate(2) ; workaround double init bug
EndEvent

Event OnUpdate()
	PlayerRef.AddPerk(MCEMatchingSet)
	PlayerRef.AddPerk(MCEMatchingSetHeavy)

	LItemClothesAll.AddForm(MCEThread, 1, 10)
	LItemMiscVendorMiscItems75.AddForm(MCEThread, 1, 10)
EndEvent
