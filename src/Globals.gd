extends Node

const VERSION = "0.1"
const RELEASE_MODE = false

const INVINCIBLE = true && RELEASE_MODE == false
const USE_BOMBS = false
const THIRD_PERSON_MODE = true

const AUTOSTART = true and !RELEASE_MODE
const SHOW_FPS = true and !RELEASE_MODE

enum ItemTypes {GUN, AMMO}

var rnd : RandomNumberGenerator

func _ready():
	rnd = RandomNumberGenerator.new()
	rnd.randomize()
	pass
	
