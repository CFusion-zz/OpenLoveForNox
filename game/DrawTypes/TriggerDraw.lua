local TriggerDraw = {}

TriggerDraw.name = "TriggerDraw"

TriggerDraw.AnimatePerSecond = 1 / 15

local rdraw = renderer.drawObject

function TriggerDraw:initObject(obj)
	local index = obj.tt.SpriteMenuIcon;
	UpdateObjectSpriteId(obj, index)

	self.shader = shaders.sampleShadow
end

function TriggerDraw:draw(obj)	
	if(gameconf.debug) then
		rdraw(obj)
	end
end

return TriggerDraw