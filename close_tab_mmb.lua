-- Close tab with mouse middle button

events.connect(events.TAB_CLICKED, function(index, button)
if button == 4 then
	buffer:close(index)
end
end)
