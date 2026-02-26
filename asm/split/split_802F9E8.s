	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_80007A0
	IMPORT sub_8000D5A
	IMPORT sub_803FF24

	thumb_func_start sub_802F9E8

sub_802F9E8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	sub sp, #4
	add r1, sp, #0x28
	ldr r6, [r5, #0xc]
	movs r7, #1
	lsls r7, r7, #0xe
	bics r6, r7
	ldm r1!, {r0, r1}
	str r6, [r5, #0xc]
	ldr r6, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [r5, #0x34]
	lsrs r2, r3, #0x1f
	adds r2, r2, r3
	asrs r3, r2, #1
	adds r2, r4, #0
	lsls r6, r6, #0x10
	str r6, [r5, #0x30]
	adds r2, #0xa0
	strh r3, [r2, #0xa]
	lsrs r3, r0, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	strh r0, [r2, #8]
	str r1, [r5, #0x24]
	movs r1, #0x7d
	movs r0, #0
	strb r0, [r1, r4]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %10
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq %10
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %10
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
10
	ldr r0, _0802FBD4
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %11
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
11
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %12
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
12
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0802FBD4 DCDU gUnknown_03003EA0

	END
