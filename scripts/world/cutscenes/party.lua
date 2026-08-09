return {
    ---@param cutscene WorldCutscene
    ceroba = function(cutscene, map, partyleader)
		if Game:hasUnlockedPartyMember("jamm") then
			cutscene:text("* I wonder what happened between Jamm and Enzio...?", "closed_eyes", "ceroba")
			cutscene:text("* I would ask,[wait:5] but I assume it's a personal matter.", "neutral", "ceroba")
		else
			cutscene:text("* This forest is...[wait:5] Peculiar.", "closed_eyes", "ceroba")
			cutscene:text("* Honestly,[wait:5] if not our outfits...", "neutral", "ceroba")
			cutscene:text("* I would've assumed we're back to the Light World.", "alt", "ceroba")
		end
    end,
	jamm = function(cutscene, map, partyleader)
        cutscene:text("* It's a good thing I came right in time to save you.", "smile", "jamm")
		cutscene:text("* Who knows what could've happened if I didn't...", "nervous_left", "jamm")
    end,
	dess = function(cutscene, map, partyleader)
		if Game:hasUnlockedPartyMember("jamm") then
        	cutscene:text("* this Enzio dude is a jerkass", "neutral", "dess")
		else
			cutscene:text("* this place sucks ass", "neutral", "dess")
		end
    end,
}