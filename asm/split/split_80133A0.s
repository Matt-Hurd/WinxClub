	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C3C

	thumb_func_start sub_80133A0

sub_80133A0
	ldr r1, _08013430
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	bx lr

	ALIGN
_08013430 DCDU gUnknown_03003C3C

	END
