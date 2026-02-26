	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __call_via_r2
	IMPORT sub_80133A0
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start sub_8013B9C

sub_8013B9C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	adds r6, r2, #0
	movs r5, #0
	cmp r0, #0
	sub sp, #4
	beq %2
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
2
	movs r0, #1
	adds r7, r4, #0
	adds r7, #0x20
	strb r0, [r7, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x10
	bl sub_803DA80
	cmp r0, #0
	beq %3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x10
3
	str r0, [r4, #0x4c]
	strh r6, [r4, #0x3a]
	ldr r0, [r4, #0x14]
	b %5
4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
5
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	cmp r2, r6
	bhi %4
	adds r1, r0, r1
	ldrh r1, [r1, #2]
	cmp r1, r6
	blo %4
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	muls r0, r5
	lsls r1, r0, #0x10
	ldr r0, [r4]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x24]
	adds r2, r2, r0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x4c]
	movs r3, #0
	strh r0, [r1, #8]
	ldr r0, [r4, #0x4c]
	strh r6, [r0, #6]
	ldr r0, [sp, #8]
	ldr r1, [r4, #0x4c]
	strb r0, [r1, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [r4, #0x4c]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x4c]
	str r3, [r0]
	ldr r0, [r4, #0x4c]
	strh r5, [r0, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
