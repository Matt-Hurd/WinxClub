	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	non_word_aligned_thumb_func_start sub_800069A

sub_800069A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08000904
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldr r0, _08000900
	adds r5, #0x38
	ldr r2, [r5]
	ldr r3, [r4, #0x3c]
	movs r6, #1
	lsls r6, r6, #9
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r3, r2
	blt %2
	movs r7, #0xf
	lsls r7, r7, #0x14
	ldr r3, [r4, #0x34]
	adds r2, r2, r7
	cmp r3, r2
	bge %2
	ldr r3, [r4, #0x40]
	ldr r2, [r5, #4]
	cmp r3, r2
	blt %2
	movs r7, #5
	lsls r7, r7, #0x15
	ldr r3, [r4, #0x38]
	adds r2, r2, r7
	cmp r3, r2
	blt %4
2
	lsls r1, r1, #0x16
	bmi %3
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	lsls r1, r1, #0x16
	bpl %5
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
5
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r1, r0, #0x10
	ldr r0, [r5]
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x10
	adds r0, r2, r0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r4, #0x28]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r5, #4]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	subs r0, r0, r1
	ldrh r1, [r4, #0x26]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b %3

	ALIGN
_08000900 DCDU gUnknown_03003EA0
_08000904 DCDU gUnknown_03003EA4

	END
