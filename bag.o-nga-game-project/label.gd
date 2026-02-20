extends Label

@export var speed := 100

func _process(delta):
	position.x += speed * delta
	
	var screen_width = get_viewport_rect().size.x
	
	# if text fully leaves right side → reset to left
	if position.x > screen_width:
		position.x = -size.x
