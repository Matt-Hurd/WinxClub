	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT sub_800529A

	thumb_func_start sub_8000C7C

sub_8000C7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08000D60
	adds r5, r1, #0
	adds r3, r4, #4
	movs r2, #0x3c
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r4, #0x18]
	adds r0, r0, r5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	adds r0, r0, r5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r5
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	adds r0, r0, r5
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	adds r0, r0, r5
	str r0, [r4, #0x34]
	str r5, [r4, #0x48]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08000D60 DCDU gUnknown_03003E84

	END
