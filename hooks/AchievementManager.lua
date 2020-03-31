--Hooks made by MiamiCenter, with small help from on_trigger. It is awarding difficulty Achievements, and also fixing Local Players (Everyone in the lobby exept host)
--soo they can unlock achievements too.
--bonk mako did this trash
Hooks:PostHook(ElementBLCustomAchievement, "init", "init_imsotiredofthis", function (self)
CustomAchievementPackage:init("zm_kino_ach")
end)

Hooks:PostHook(ElementBLCustomAchievement, "on_executed", "imsotiredofthis", function (self)
	local achcompleted = CustomAchievementPackage:AllAchievementsCompletedExceptOne()
	local achcompletedtotal = CustomAchievementPackage:GetCompletedAchievements()
		if achcompleted == true then
			local element = managers.mission:get_mission_element(100357)
			element:on_executed()
		elseif achcompletedtotal == 8 then
			local element = managers.mission:get_mission_element(100357)
			element:on_executed()
	end
end)