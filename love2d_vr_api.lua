-- Show lua api web local
local function open_love_api() os.execute('firefox  --new-window $HOME/.config/textadept/modules/love.11.5.api.html') end
local function open_lovr_api() os.execute('firefox  --new-window https://lovr.org/docs/Getting_Started') end
keys['f1'] = function() open_love_api() end
keys['f2'] = function() open_lovr_api() end
