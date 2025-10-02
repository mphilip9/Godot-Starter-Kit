extends Control

@onready var text_input: LineEdit = %TextInput
@onready var console: RichTextLabel = %Console

var expression: Expression = Expression.new() #
#TODO: Consider how to capture output and error logs and display them here in the console

#TODO: Consider autocomplete and history completion (like in your standard terminal shell)
func _ready() -> void:
	if Settings.show_debug_ui:
		show()
	else:
		hide()
	text_input.text_submitted.connect(_on_text_submitted)
	visibility_changed.connect(_on_visibility_changed)


func _on_visibility_changed() -> void:
	if visible:
		text_input.grab_focus()
		text_input.clear()


func _on_text_submitted(command: String) -> void:
	_log("> " + command)

	# Parse and execute
	var error: Error = expression.parse(command)
	if error != OK:
		_log("[color=red]Parse Error: " + expression.get_error_text() + "[/color]")
		_refocus()
		return

	var result: Variant = expression.execute([], self)

	if expression.has_execute_failed():
		_log("[color=red]Execute Error: " + str(expression.get_error_text()) + "[/color]")
	else:
		if result != null:
			_log(str(result))
#		Optionally displaying that the command ran successfully
		else:
			_log('Command ' + command + ' successfully run.')
	_refocus()

# Ensures we can regain focus after losing it on submission
func _refocus() -> void:
	text_input.clear()
	text_input.release_focus()
	await get_tree().process_frame
	text_input.grab_focus()

func _log(message: String) -> void:
	console.append_text(message + "\n")

func fps() -> String:
	return "FPS: %d (%.2f ms)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]

func scene() -> String:
	if SceneManager.current_scene:
		return SceneManager.current_scene.scene_file_path
	else:
		return get_tree().current_scene.scene_file_path

func reload() -> void:
	get_tree().reload_current_scene()

func clear() -> void:
	console.clear()
