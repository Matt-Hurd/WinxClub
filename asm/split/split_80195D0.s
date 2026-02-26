	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT gUnknown_03003448
	IMPORT sub_8000DE6

	thumb_func_start sub_80195D0

sub_80195D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl FadeToBlack
	ldr r6, _080199B8
	movs r5, #0
1
	lsls r0, r5, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq %2
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %1
	movs r5, #0
3
	lsls r0, r5, #2
	adds r0, r0, r4
	movs r1, #0xf8
	ldr r1, [r1, r0]
	cmp r1, #0
	beq %4
	adds r1, r0, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %3
	movs r5, #0
5
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xd5
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq %6
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xd5
	ldr r0, [r6]
	bl sub_8000DE6
6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %5
	movs r5, #0
7
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xdd
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq %8
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xdd
	ldr r0, [r6]
	bl sub_8000DE6
8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %7
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	ALIGN
_080199B8 DCDU gUnknown_03003448

	END
