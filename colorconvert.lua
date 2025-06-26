-- Convert hex color values to textadept format
--
function hex_to_textadept_color(hex)
  hex = hex:gsub("#", "")  -- Remove the '#' symbol

-- Expand shorthand #RGB to full #RRGGBB
  if #hex == 3 then
    hex = hex:sub(1,1):rep(2) .. hex:sub(2,2):rep(2) .. hex:sub(3,3):rep(2)
  end

--   Convert from RGB to BGR integer
  local r = tonumber(hex:sub(1,2), 16)
  local g = tonumber(hex:sub(3,4), 16)
  local b = tonumber(hex:sub(5,6), 16)

  return b * 65536 + g * 256 + r  -- Convert to BGR format
end
