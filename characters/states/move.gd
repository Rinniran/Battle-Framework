@tool
extends BaseState


func _enter(data = {}):
	super._enter(data)
	root.animplayer.play("Moving")


func _step():
	if Input.is_action_pressed(root.Controlset.action_jump):
		parent.change_state("Jump")
	if root.velocity.x == 0 and root.velocity.z == 0:
		parent.change_state("Idle")
	if root.velocity.y < 0:
		parent.change_state("Fall")


func _step_frozen():
	super._step_frozen()


func _exit(next_state):
	super._exit(next_state)
