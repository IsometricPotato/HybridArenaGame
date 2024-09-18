@tool
extends EditorPlugin


func _enter_tree():
	# Initialization of the plugin goes here.
	add_custom_type("Particle", "CPUParticles2D", preload("particle.gd"), preload("explosion.png"))
	add_custom_type("Ability", "CharacterBody2D", preload("ability.gd"), preload("sun.png"))


func _exit_tree():
	remove_custom_type("Particle")
