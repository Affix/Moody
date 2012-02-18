on isRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end isRunning

-- Check if Spotify and Skype are running
if isRunning("Skype") then
    -- Try to get old mood message from Skype
    tell application "Skype"
        set temp_mood to send command "GET PROFILE MOOD_TEXT" script name "Moody"
        set AppleScript's text item delimiters to "TEXT "
        set old_mood to text item 2 of temp_mood
        return old_mood
    end tell
end if