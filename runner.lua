-- Keybinding to run the current script based on file type (lua or bash)

keys['ctrl+r'] = function()
  local filepath = buffer.filename
  if not filepath then
    ui.dialogs.message{
      title = 'Error',
      text = 'File must be saved before running.'
    }
    return
  end
	-- Extract file extension, default to 'sh' if none exists
  local ext = filepath:match("%.([^%.]+)$") or "sh"
  if ext == "sh" then
	 --Run the Bash script in xfce4-terminal
	textadept.editing.comment_string.ext= '#'
    local cmd = 'xfce4-terminal --hold --command "bash \'' .. filepath .. '\'" &'
    os.execute(cmd)
  elseif ext == "lua" then
     --Run Lua script from its directory
	textadept.editing.comment_string.lua= '--'
    local dir = filepath:match("(.*/)") or "./" -- Extract directory from filepath
    local cmd_lua = 'love \'' .. dir .. '\' &'
	os.execute(cmd_lua)
  else
    -- Unsupported file type
    ui.dialogs.message{
      title = 'Error',
      text = 'Unsupported file type: ' .. ext
    }
  end
end

keys['f6'] = function()
 local filepath = buffer.filename
  if not filepath then
    ui.dialogs.message{
      title = 'Error',
      text = 'File must be saved before running.'
    }
    return
  end
	-- Extract file extension, default to 'sh' if none exists
local ext = filepath:match("%.([^%.]+)$") or "sh"
  if ext == "lua" then
     --Run Lua script from its directory
	textadept.editing.comment_string.lua= '--'
    local dir = filepath:match("(.*/)") or "./" -- Extract directory from filepath
    local cmd_lua = '~/bin/lovr \'' .. dir .. '\' &'
	os.execute(cmd_lua)
  else
    -- Unsupported file type
    ui.dialogs.message{
      title = 'Error',
      text = 'Unsupported file type: ' .. ext
    }
  end
end
