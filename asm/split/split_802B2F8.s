	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6

	thumb_func_start sub_802B2F8

sub_802B2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
5
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq %6
	ldr r0, _0802B644
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x24]
6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo %5
	movs r4, #0
7
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq %8
	ldr r0, _0802B644
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
8
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %7
	ldr r1, [r5, #4]
	adds r0, r5, #4
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0802B644 DCDU gUnknown_03003EB8

	END
