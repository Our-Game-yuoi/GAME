extends TextureRect

func _ready():
	# Fă nodul să ocupe întreg ecranul
	set_anchors_preset(Control.PRESET_FULL_RECT)
	
	# Asigură-te că se întinde corect
	expand_mode = TextureRect.EXPAND_FIT_WIDTH  # poți schimba în EXPAND_FIT_HEIGHT sau EXPAND_IGNORE aspect
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
