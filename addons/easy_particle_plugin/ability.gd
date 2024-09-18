extends CharacterBody2D

var direction = 1
const SPEED = 5000

func emit():
	velocity.x = SPEED * direction

func _physics_process(_delta):
	if is_on_floor():
		queue_free()

	move_and_slide()


func _on_visibilityNotifier2D_screen_exited():
	remove_spell()


func on_spell_body_entered():
	remove_spell()


func remove_spell():
	queue_free()
