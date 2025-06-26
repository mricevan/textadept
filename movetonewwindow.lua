-- Function to move the current document to a new instance and close the old one.
function move_to_new_window()
    local current_file = buffer.filename
    if current_file and current_file ~= "" then
        -- Check for unsaved changes
        if buffer.modified then
            -- Ask user if they want to save the changes
            local choice = ui.dialogs.msgbox {
                title = "Unsaved Changes",
                informative_text = "You have unsaved changes. Would you like to save them?",
                buttons = {"Yes", "No", "Cancel"}
            }

            if choice == 1 then
                -- Save the current buffer
                buffer:save()
            elseif choice == 3 then
                -- User chose to cancel, thus returning without doing anything
                return
            end
        end

        -- Close the current buffer in the existing instance
        buffer:close()

        -- Open the current document in a new instance with -f flag
        local command = string.format('~/bin/textadept -f "%s" &', current_file)
        os.execute(command)
    else
        ui.statusbar_text = "No file opened!"
    end
end

-- Assign the function to a custom keyboard shortcut (e.g., Ctrl + N)
-- keys['ctrl+alt+n'] = move_to_new_window
