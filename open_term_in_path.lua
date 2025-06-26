-- Opens a terminal in current document's path.

local function open_folder(from_root)
  local current_path = buffer.filename:match('(.+)/') or '.'
  local project_root = io.get_project_root()

  if not from_root and project_root then
    current_path = current_path:sub(#project_root+2)
  end

	local cmd = 'xfce4-terminal --working-directory=' .. current_path .. '&'  -- Edit this to use your favourite terminal app.
	os.execute(cmd)
end

local edit_menu = textadept.menu.menubar['Tools']
edit_menu[#edit_menu + 1] = { 'Open Terminal in Documents Path', open_folder }
