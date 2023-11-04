local Games = {
  {"Legends of Speed", 3101667897, "https://raw.githubusercontent.com/DsM-6/DsM-Hub/main/Games/Legends-of-Speed.lua"},
  {"Muscle Legends", 3623096087, "https://raw.githubusercontent.com/DsM-6/DsM-Hub/main/Games/Muscle-Legends.lua"},
  {"Ninja Legenss", 3956818381, "https://raw.githubusercontent.com/DsM-6/DsM-Hub/main/Games/Ninja-Legends"}
}

for i, Game in ipairs(Games) do
  if game.PlaceId == Game[2] then
  local Script = Game[3]
    local Success, ErrMsg = 
      pcall(function()
        loadstring(game:HttpGet(Script))()
      end)
    if not Success then
      warn("Failed to Load Script for " .. Game[1] .. " : " .. ErrMsg)
    end
    break
  elseif i == #Games then
    warn("Game is not Supported")
  end
end
