    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_80050C0
	IMPORT sub_80081D4
	IMPORT sub_8008EB4
	IMPORT sub_800A270
	IMPORT sub_800A9BC
	IMPORT sub_800AD8C
	IMPORT _08008B14

	thumb_func_start sub_803E258
sub_803E258 ;@ 0x0803E258
	bx pc
	nop

	arm_func_start sub_803E25C
sub_803E25C ;@ 0x0803E25C
	b sub_800A9BC

	thumb_func_start sub_803E260
sub_803E260 ;@ 0x0803E260
	bx pc
	nop

	arm_func_start sub_803E264
sub_803E264 ;@ 0x0803E264
	b _08008B14

	thumb_func_start sub_803E268
sub_803E268 ;@ 0x0803E268
	bx pc
	nop

	arm_func_start sub_803E26C
sub_803E26C ;@ 0x0803E26C
	b sub_800AD8C

	thumb_func_start sub_803E270
sub_803E270 ;@ 0x0803E270
	bx pc
	nop

	arm_func_start sub_803E274
sub_803E274 ;@ 0x0803E274
	b sub_800A270

	thumb_func_start sub_803E278
sub_803E278 ;@ 0x0803E278
	bx pc
	nop

	arm_func_start sub_803E27C
sub_803E27C ;@ 0x0803E27C
	b sub_80081D4

	thumb_func_start sub_803E280
sub_803E280 ;@ 0x0803E280
	bx pc
	nop

	arm_func_start sub_803E284
sub_803E284 ;@ 0x0803E284
	b sub_8008EB4

	arm_func_start sub_803E288
sub_803E288 ;@ 0x0803E288
	LDR ip, _0803E290 ;@ =sub_80050C0
	bx ip
	ALIGN
_0803E290 DCDU sub_80050C0
	END