extends Node

var is_working = false

func _ready():
	var music = load("res://AudioCoffee - Warm Autumn Day.mp3")
	var audio_stream_player = AudioStreamPlayer.new()
	self.add_child(audio_stream_player)
	audio_stream_player.stream = music
	audio_stream_player.play()
	is_working = true
