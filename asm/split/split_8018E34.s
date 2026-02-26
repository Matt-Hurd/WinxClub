	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT gUnknown_03003448
	IMPORT sub_8000DE6

	thumb_func_start sub_8018E34

sub_8018E34
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FadeToBlack
	ldr r6, _0801921C
	movs r4, #0
1
	lsls r0, r4, #2
	adds r5, r0, r7
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x9d
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %1
	adds r1, r7, #0
	adds r1, #0xff
	adds r1, #0xa5
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801921C DCDU gUnknown_03003448

	END
