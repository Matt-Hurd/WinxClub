	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __call_via_r3
	IMPORT __call_via_r5
	IMPORT __da__FPv
	IMPORT strlen
	IMPORT strncpy
	IMPORT sub_80133A0
	IMPORT sub_801340A
	IMPORT sub_801357A
	IMPORT sub_803DA9C

	thumb_func_start sub_80137F8

sub_80137F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r2, #0
	movs r6, #0
	adds r5, r1, #0
	cmp r0, #0
	beq %1
	bl __da__FPv
	str r6, [r4, #0x34]
1
	cmp r7, #0
	beq %2
	adds r0, r5, #0
	bl strlen
	lsls r7, r0, #0x10
	lsrs r7, r7, #0x10
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	adds r0, r7, #1
	bl sub_803DA9C
	adds r2, r7, #0
	adds r1, r5, #0
	str r0, [r4, #0x34]
	bl strncpy
	ldr r0, [r4, #0x34]
	strb r6, [r0, r7]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x30]
	b %3
2
	str r5, [r4, #0x30]
3
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq %4
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	adds r1, r5, #0
	bl sub_801340A
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r2, [r0, #0x5c]
	adds r3, r2, r0
	ldr r2, [sp]
	adds r0, r4, #0
	bl __call_via_r3
	movs r0, #1
	str r0, [r4, #0x24]
4
	adds r0, r4, #0
	bl sub_801357A
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl %5
	ldrh r1, [r4, #0x20]
	movs r2, #0xf0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	ldr r2, [r4]
	asrs r1, r1, #1
	ldr r3, [r2, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, r2
	adds r0, r4, #0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	bl __call_via_r5
5
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl %6
	ldrh r1, [r4, #0x1e]
	movs r2, #0xa0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r2, r1, #0x10
	ldr r1, [r4]
	asrs r2, r2, #0x10
	ldr r3, [r1, #0x14]
	adds r5, r3, r1
	adds r0, r4, #0
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl __call_via_r5
6
	movs r0, #0
	mvns r0, r0
	strh r6, [r4, #0x22]
	strh r0, [r4, #0x3a]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
