repeat task.wait() until game:IsLoaded()
function betterisfile(path)
    local suc, res = pcall(function() return readfile(path) end)
    return suc and res ~= nil
end
shared["betterisfile"] = betterisfile
local placeid = game.PlaceId
if placeid == 6872274481 or placeid == 8560631822 or placeid == 8444591321 then
    if betterisfile("Tapeware/Modules/bedwars.lua") then
        loadstring(readfile("Tapeware/Modules/bedwars.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TapewarePrivateOwner/Tapeware/main/Modules/bedwars.lua"))()
    end
elseif placeid == 6872265039 then
    if betterisfile("Tapeware/Modules/6872265039.lua") then
        loadstring(readfile("Tapeware/Modules/6872265039.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TapewarePrivateOwner/Tapeware/main/Modules/6872265039.lua"))()
    end
else
    if betterisfile("Tapeware/Modules/Universal.lua") then
        loadstring(readfile("Tapeware/Modules/Universal.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TapewarePrivateOwner/Tapeware/main/Modules/Universal.lua"))()
    end
end

task.delay(1, function()
    game:GetService("StarterGui"):SetCore("ChatWindowPosition", UDim2.new(0,0,0.73,0))
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
        Text = "Tapeware Private loaded!",
        Color = Color3.fromRGB(255,65,65),
        Font = Enum.Font.SourceSansBold,
    })
end)