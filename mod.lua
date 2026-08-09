function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:getUISkin()
	if Game.world and Game.world.map and Game.world.map.id
		and string.sub(Game.world.map.id, 1, string.len("marcyquest"))=="marcyquest"
	then
		return "pirate"
	end
	return Game:getUISkin()
end

function Mod:registerShaders()
    self.shaders = {}
    for _,path,shader in Registry.iterScripts("shaders/") do
        assert(shader ~= nil, '"shaders/'..path..'.lua" does not return value')
        self.shaders[path] = shader
    end
end

function Mod:onRegistered()
    self:registerShaders()
end

function Mod:getPartyNPCProperties(map, pm_id)
    if map.id == "fwood/entry" then
        if pm_id == "ceroba" then
            return { cutscene = "party.ceroba", turn = true }
        elseif pm_id == "jamm" then
            return { cutscene = "party.jamm", turn = true }
        elseif pm_id == "dess" then
            return { cutscene = "party.dess", turn = true }
        end
    end
end