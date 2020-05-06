function MusicManager:current_track_string()
    local level_data = Global.level_data.level_id and tweak_data.levels[Global.level_data.level_id]

    if level_data then
        if level_data.music_ext_start then
            return utf8.to_upper(managers.localization:text("menu_jukebox_screen_" .. Global.music_manager.current_music_ext))
        elseif level_data.music == "no_music" then
            return utf8.to_upper(managers.localization:text("menu_jukebox_track_" .. Global.level_data.level_id))
        end
    end

    return utf8.to_upper(managers.localization:text("menu_jukebox_" .. Global.music_manager.current_track))
end
