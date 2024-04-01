extends Node

var music_stream = null
var is_ambient_playing = false
var bus_ambient_name = "Ambient"

func _ready():
	_load_music()
	play_ambient_music()

func _load_music():
	music_stream = load("res://AudioCoffee - Warm Autumn Day.mp3")

func _setup_audio_stream_player(bus):
	var audio_stream_player = AudioStreamPlayer.new()
	audio_stream_player.bus = bus
	self.add_child(audio_stream_player)
	return audio_stream_player

func play_ambient_music():
	if not is_ambient_playing and music_stream:
		var player = _setup_audio_stream_player(bus_ambient_name)
		player.stream = music_stream
		player.play()

		is_ambient_playing = true