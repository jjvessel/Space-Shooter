extends AudioStreamPlayer


var stream_pos = 0
var streams = [
	load("res://Assets/music.mp3")
]



func _ready():
	stream = streams[stream_pos]
	play()



func _on_finished():
	stream_pos = (stream_pos + 1) % len(streams)
	stream = streams[stream.pos]
	play()
