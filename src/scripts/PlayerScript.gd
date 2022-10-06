extends KinematicBody2D;

var motion = Vector2.ZERO;

var speed = 250;

var updownactions = 280;

var can_double_jump: bool = false;

var valuegravity = 10;

var confirmation = Vector2.UP;

func jump():
	motion.y = - updownactions;
	
func gravity():
	motion.y += valuegravity;
	
func _process(delta):
	gravity();
	
	if is_on_floor():
		can_double_jump = true;
		
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			jump();
		elif can_double_jump:
			jump()
			can_double_jump = false;
			$AnimatedSprite.play("up");
		
		
	if Input.is_action_pressed("ui_right"):
			motion.x = speed;
			$AnimatedSprite.play("run");
			$AnimatedSprite.flip_h = false;
			
	elif Input.is_action_pressed("ui_left"):
		motion.x = - speed;
		$AnimatedSprite.play("run");
		$AnimatedSprite.flip_h = true;
		
	else:
		motion.x = 0;
		$AnimatedSprite.play("idle");
		
	if Input.is_action_pressed("ui_cancel"):
		Music.music_stop();
		get_tree().change_scene("res://src/interfaces/MenuPrincipal.tscn");
	
	move_and_slide(motion, confirmation);
