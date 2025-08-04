	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80011D8
	IMPORT sub_8001232
	IMPORT sub_800CD28
	IMPORT sub_800CD58

	thumb_func_start sub_80401C0
sub_80401C0
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %1
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
1
	bx lr
	ALIGN

	thumb_func_start sub_80401E4
sub_80401E4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08040258
	adds r2, r1, #0
	ldr r1, [r4]
	ldr r0, [r0]
	ldr r5, _08040254
	beq %4
	lsls r1, r1, #0x1f
	bmi %3
	adds r1, r4, #0
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %2
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %2
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800CD58
2
	ldr r0, [r4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %3
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
4
	lsls r1, r1, #0x1f
	bpl %3
	adds r1, r4, #0
	bl sub_8001232
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
	lsls r0, r0, #0x16
	bmi %3
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %3
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800CD28
	b %3
	ALIGN
_08040254 DCDU gUnknown_03003EA0
_08040258 DCDU gUnknown_03003EB8
	END
