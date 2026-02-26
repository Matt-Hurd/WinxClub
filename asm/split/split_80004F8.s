	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memclr_w
	IMPORT gUnknown_03003EB8
	IMPORT sub_80019A6

	thumb_func_start sub_80004F8

sub_80004F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x60
	bl __16__rt_memclr_w
	movs r0, #0xff
	adds r0, #1
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x22]
	ldr r0, [r4]
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4]
	ldr r0, _08000658
	ldr r0, [r0]
	bl sub_80019A6
	movs r2, #1
	lsls r2, r2, #0x11
	ldr r1, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_08000658 DCDU gUnknown_03003EB8

	END
