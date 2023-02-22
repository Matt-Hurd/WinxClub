	.macro song label, music_player, unknown
	DCDU \label
	.2byte \music_player
	.2byte \unknown
	.endm

	.macro music_player info_struct, track_struct, unknown_1, unknown_2
	DCDU \info_struct
	DCDU \track_struct
	DCB \unknown_1
	.space 1
	.2byte \unknown_2
	.endm
