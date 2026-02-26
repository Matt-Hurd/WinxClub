	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033FC

	thumb_func_start sub_800B148

sub_800B148
	lsls r0, r1, #2
	ldr r1, _0800B150
	ldr r0, [r1, r0]
	bx lr
	ALIGN

	ALIGN
_0800B150 DCDU gUnknown_030033FC

	END
