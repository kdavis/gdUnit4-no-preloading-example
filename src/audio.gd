extends Node

var music_stream = null
var is_ambient_playing = false
var bus_ambient_name = "Ambient"

func _ready():
	music_stream = load("res://AudioCoffee - Warm Autumn Day.mp3")
	var audio_stream_player = AudioStreamPlayer.new()
	audio_stream_player.bus = bus_ambient_name
	self.add_child(audio_stream_player)
	play_ambient_music()

	if not is_ambient_playing and music_stream:
		audio_stream_player.stream = music_stream
		audio_stream_player.play()

		is_ambient_playing = true