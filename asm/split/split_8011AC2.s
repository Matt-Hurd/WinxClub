	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT gUnknown_03003520
	IMPORT gUnknown_03003BC8

	non_word_aligned_thumb_func_start sub_8011AC2

sub_8011AC2
	push {r4, r5, r6, lr}
	ldr r5, _08011D30
	ldr r6, _08011D18
	adds r4, r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	subs r6, #0x24
	cmp r0, #0
	beq %4
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r6, #4]
	bl __call_via_r2
4
	ldrb r0, [r4, #2]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #1
	bl __call_via_r2
	str r0, [r5, #0x20]
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsls r0, r0, #2
	adds r1, r0, r4
	adds r1, #4
	movs r0, #0
	cmp r2, #0
	bls %6
5
	ldr r2, [r5, #0x20]
	lsls r3, r0, #2
	str r1, [r2, r3]
	ldr r2, [r1]
	adds r0, #1
	adds r2, #0x7f
	lsrs r2, r2, #2
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4, #2]
	cmp r2, r0
	bhi %5
6
	ldr r1, _08011D30
	movs r0, #0
	adds r1, #0x68
	strb r0, [r1, #7]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	ALIGN
_08011D18 DCDU gUnknown_03003520
_08011D30 DCDU gUnknown_03003BC8

	END
