-- Copies the path of the current file relative to the project root.

local function copy_path(from_root)
  local current_path = buffer.filename
  local project_root = io.get_project_root()

  if not from_root and project_root then
    current_path = current_path:sub(#project_root+2)
  end

  ui.clipboard_text = current_path
end

local function copy_full_path() copy_path(true) end

local edit_menu = textadept.menu.menubar['Tools']
edit_menu[#edit_menu + 1] = { 'Copy Project Path', copy_path }
edit_menu[#edit_menu + 1] = { 'Copy Full Path', copy_full_path }
