@tool
extends CPUParticles2D

@export var Particle : CPUParticles2D

var particle_array = []

func _ready():
	self.emitting = true

func _enter_tree():
	pass
	
func emit():
	var particle = Particle.instantiate()
	particle_array.append(particle)
	get_tree().current_scene.add_child(particle)
	particle.global_position = self.global_position

func terminate():
	if particle_array.size() > 0:
		particle_array[0].queue_free()
