# GdUnit generated TestSuite
class_name AudioTest
extends GdUnitTestSuite
@warning_ignore('unused_parameter')
@warning_ignore('return_value_discarded')

var audio: Audio

func before_test():
	audio = Audio

func test_ready() -> void:
	assert_bool(audio.is_working).is_true()

func test_ready2() -> void:
	assert_bool(audio.is_working).is_true()
