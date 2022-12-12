local iteminfo = require(game.ReplicatedStorage.Items)

_G.nobagtimer = false
_G.candupe = false
_G.u17 = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0 };
_G.u18 = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0, 0, 0, 0 };
_G.u19 = {[1] = "",	[2] = "",	[3] = "",	[4] = "",	[5] = "",	[6] = "",	[7] = "",	[8] = "",	[9] = "",	[10] = "",	[11] = "",	[12] = "",	[13] = "",	[14] = "",	[15] = "",	[16] = "",	[17] = "",	[18] = "",	[19] = "",	[20] = "",	[21] = "",	[22] = "",	[23] = "",	[24] = "",	[25] = "",	[26] = "",	[27] = "",	[28] = "",	[29] = "",	[30] = "",	[31] = "", [32] = "",	[33] = "",	[34] = "",	[35] = "",	[36] = ""};

local gmt = getrawmetatable(game)
local faketable = {}
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall

gmt.__namecall = newcclosure(function(Self, ...)
	local Args = {...}
	local method = getnamecallmethod()
	if tostring(method) == "FireServer" or tostring(method) == "InvokeServer" then
		if tostring(Self) == "SendInfo" then
			_G.u17 = Args[1]
			_G.u18 = Args[2]
			_G.u19 = Args[3]
			_G.candupe = true
		end
	end
	return oldNamecall(Self, ...)
end)

 game:GetService("RunService").RenderStepped:Connect(function()
        if _G.nobagtimer then
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Inventory.Death.BagFrame:GetChildren()) do
      for h,j in pairs(v:GetChildren()) do
           if j.Name == "Cooldown" then
               
                   j.Visible = false
 
         end
         end
        end
end
    end)
