# GdUnit generated TestSuite
class_name AudioTest
extends GdUnitTestSuite
@warning_ignore('unused_parameter')
@warning_ignore('return_value_discarded')

func test_ready() -> void:
	assert_bool(Audio.is_working).is_true()
