Scriptname MCEInitScript extends Quest

Actor Property PlayerRef  Auto

Perk Property MCEMatchingSet  Auto
Perk Property MCEMatchingSetHeavy  Auto

LeveledItem Property MCECraftingMaterials  Auto
LeveledItem Property LItemClothesAll  Auto
LeveledItem Property LItemMiscVendorMiscItems75  Auto

GlobalVariable Property MCE_CraftingLoomEnabled  Auto
ObjectReference Property MCE_LoomEnableMarker  Auto

Event OnInit()
	RegisterForSingleUpdate(2)
EndEvent

Event OnUpdate()
	PlayerRef.AddPerk(MCEMatchingSet)
	PlayerRef.AddPerk(MCEMatchingSetHeavy)

	LItemClothesAll.AddForm(MCECraftingMaterials, 1, 1)
	LItemMiscVendorMiscItems75.AddForm(MCECraftingMaterials, 1, 1)

	MCE_CraftingLoomEnabled.SetValueInt(1)
	MCE_LoomEnableMarker.Enable()
EndEvent
