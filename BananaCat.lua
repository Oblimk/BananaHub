local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId
elseif game.PlaceId == 7449423635 or game.PlaceId == 2753915549 or game.PlaceId == 4442272183 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Oblimk/BananaHub/refs/heads/main/BF-BananaHub.lua"))()
end
elseif game.PlaceId == 16732694052 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Oblimk/BananaHub/refs/heads/main/Fisch.lua"))()
end
