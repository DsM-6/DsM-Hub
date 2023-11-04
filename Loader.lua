local Games = {
  {"Legends of Speed", 3101667897, nil},
  {"Muscle Legends", 3623096087, nil},
  {"Ninja Legenss", 3956818381, nil}
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
