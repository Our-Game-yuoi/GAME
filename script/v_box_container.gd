extends VBoxContainer

func _ready():
	# Ocupă tot ecranul
	anchor_left = 0
	anchor_top = 0
	anchor_right = 1
	anchor_bottom = 1
	offset_left = 0
	offset_top = 0
	offset_right = 0
	offset_bottom = 0

	# Centrează pe mijloc
	alignment = BoxContainer.ALIGNMENT_CENTER
	# Spațiu între butoane
	set("theme_override_constants/separation", 20)

	# Mărește dimensiunea butoanelor
	for button in get_children():
		if button is Button:
			button.custom_minimum_size = Vector2(400, 60)  # lățime x înălțime
