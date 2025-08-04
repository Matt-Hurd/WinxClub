	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA

	thumb_func_start sub_804025C
sub_804025C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r0, #0x3c]
	ldr r0, _080402F4
	movs r5, #0x80
	lsls r6, r5, #2
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r2, #0
	blt %1
	movs r3, #0xf
	ldr r2, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r2, r3
	bge %1
	ldr r2, [r4, #0x40]
	cmp r2, #0
	blt %1
	movs r3, #5
	ldr r2, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r2, r3
	blt %3
1
	lsls r1, r1, #0x16
	bmi %2
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	lsls r1, r1, #0x16
	bpl %4
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
4
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	b %2
	ALIGN
_080402F4 DCDU gUnknown_03003EA0
	END
