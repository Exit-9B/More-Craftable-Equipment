Scriptname MCEInitScript extends Quest

Actor Property PlayerRef  Auto

Perk Property MCEMatchingSet  Auto
Perk Property MCEMatchingSetHeavy  Auto

MiscObject Property MCEThread  Auto
MiscObject Property Leather01  Auto
LeveledItem Property LItemClothesAll  Auto
LeveledItem Property LItemMiscVendorMiscItems75  Auto

GlobalVariable Property MCE_CraftingLoomEnabled  Auto
ObjectReference Property MCE_LoomEnableMarker  Auto

int Property ThreadQuantity  Auto
int Property LeatherQuantity  Auto

Event OnInit()
	RegisterForSingleUpdate(2)
EndEvent

Event OnUpdate()
	PlayerRef.AddPerk(MCEMatchingSet)
	PlayerRef.AddPerk(MCEMatchingSetHeavy)

	LItemClothesAll.AddForm(MCEThread, 1, ThreadQuantity)
	LItemClothesAll.AddForm(Leather01, 1, LeatherQuantity)
	LItemMiscVendorMiscItems75.AddForm(MCEThread, 1, ThreadQuantity)

	MCE_CraftingLoomEnabled.SetValueInt(1)
	MCE_LoomEnableMarker.Enable()
EndEvent
