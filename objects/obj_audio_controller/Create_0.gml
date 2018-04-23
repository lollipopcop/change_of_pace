/// @description Insert description here
// You can write your code in this editor

music_emitter = audio_emitter_create();

var current_room = room_get_name(room);

if (current_room == "rm_scroll_intro") {
	audio_play_sound_on(music_emitter, snd_music_intro, false, 1);
}

if ( current_room == "rm_start" || current_room == "rm_challenger_man" || current_room = "rm_challenger_woman" || current_room = "rm_challenger_grannie"){
	audio_play_sound_on(music_emitter, snd_music_menu, false, 1);
}

if ( current_room == "rm_level1" || current_room == "rm_level2" || current_room = "rm_level3"){
	audio_play_sound_on(music_emitter, snd_music_level, false, 1);
}
