tell application "Spotify"
    if player state is not stopped and class of current track is track then
        set track_name to name of current track
        set track_artist to artist of current track

        return track_artist & " - " & track_name
    end if
end tell

