extends CanvasLayer

@export var previous_path: String
@export var next_path: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_button_pressed():
	$Control/MenuButton/Click.play()


func _on_close_panel_button_pressed():
	$Control/Popup/TextureRect/TextureRect2/ClosePanelButton/Click.play()


func _on_click_finished():
	$Control/Popup.hide()


func _on_click_finished_menu():
	$Control/Popup.show()


func _on_back_button_pressed():
	$Control/BackButton/Click.play()


func _on_click_finished_back():
	Global.goto_scene(previous_path)


func _on_next_button_pressed():
	$Control/NextButton/Click.play()


func _on_click_finished_next():
	Global.goto_scene(next_path)
