local AQuestTest = CreateFrame("Frame")
AQuestTest:RegisterEvent("QUEST_ACCEPTED")

AQuestTest:SetScript("OnEvent",

	function(self, event, ...)
		local arg1 = ...
		local link=GetQuestLink(arg1);
		SendChatMessage(string.format(".qc %s",link),"CHANNEL",nil,1)
	end
)
