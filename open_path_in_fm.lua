-- Opens the current document containing folder in file manager

local function open_folder(from_root)
  local current_path = buffer.filename:match('(.+)/') or '.'
  local project_root = io.get_project_root()

  if not from_root and project_root then
    current_path = current_path:sub(#project_root+2)
  end

	local cmd = 'thunar ' .. current_path .. '&' -- Change thunar with any other file manager if needed.
	os.execute(cmd)
end

local edit_menu = textadept.menu.menubar['Tools']
edit_menu[#edit_menu + 1] = { 'Open Document Path', open_folder }
