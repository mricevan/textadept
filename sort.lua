local M = {}

function M.sort_lines()
  local buffer = buffer
  if not buffer then return end

  -- Get selected text or entire buffer
  local start_pos = buffer.selection_start
  local end_pos = buffer.selection_end
  if start_pos == end_pos then
    start_pos, end_pos = 0, buffer.length
  end

  -- Get lines and sort (case-insensitive)
  local text = buffer:text_range(start_pos, end_pos)
  local lines = {}
  for line in text:gmatch("[^\r\n]+") do
    table.insert(lines, line)
  end
  table.sort(lines, function(a, b)
    return a:lower() < b:lower() -- Case-insensitive comparison
  end)

  -- Replace with sorted lines
  buffer:begin_undo_action()
  buffer:replace_sel(table.concat(lines, "\n"))
  buffer:end_undo_action()
end

-- Register in Edit menu if available
--if textadept and textadept.menu then
  --local edit_menu = textadept.menu.menubar[4] -- Access "Edit" menu
  --table.insert(edit_menu, #edit_menu, { "Sort Lines", M.sort_lines })
--end
local edit_menu = textadept.menu.menubar['Tools']
edit_menu[#edit_menu + 1] = { 'Sort Lines', M.sort_lines }

return M

-- shortcut
-- keys['ctrl+alt+s'] = function() sort.sort_lines() end
