	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003346

	thumb_func_start sub_8033308
sub_8033308
	ldr r0, [r0, #0x34]
	ldr r1, _08033314
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldrb r0, [r1, r0]
	bx lr
	ALIGN
_08033314 DCDU gUnknown_03003346
	END