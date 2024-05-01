extends CharacterBody2D

@export var speed: int = 50

func getInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	velocity = moveDirection * speed


func _physics_process(delta):
	getInput()
	move_and_slide()
