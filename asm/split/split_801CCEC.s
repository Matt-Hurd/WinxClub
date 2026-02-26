	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT sub_8000DE6
	IMPORT sub_801810E
	IMPORT sub_8028A7C

	thumb_func_start sub_801CCEC

sub_801CCEC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0801D0D4
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r6, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne %1
	bl sub_801810E
	b %2
1
	bl FadeToBlack
2
	adds r1, r6, #0
	ldr r4, _0801D0D8
	adds r1, #0xff
	adds r1, #0x11
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x39
	ldr r0, [r4]
	bl sub_8000DE6
	movs r5, #0
3
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r4, r1, #0
	ldr r7, _0801D0D8
	adds r1, #0xff
	adds r1, #0x21
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x15
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x2d
	ldr r0, [r7]
	bl sub_8000DE6
	movs r4, #0
	lsls r0, r5, #3
	adds r7, r0, r6
4
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801D0D8
	adds r1, #0xf8
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0801D0D4 DCDU gUnknown_0300345C
_0801D0D8 DCDU gUnknown_03003448

	END
