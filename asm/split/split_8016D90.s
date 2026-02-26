	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_030034F8
	IMPORT sub_801CBDE
	IMPORT sub_8020AB6
	IMPORT sub_802459E
	IMPORT sub_803FEF8

	thumb_func_start sub_8016D90

sub_8016D90
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r6, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq %1
	cmp r0, #2
	bne %2
1
	movs r1, #1
	b %3
2
	movs r1, #0
3
	movs r0, #2
	bl sub_803FEF8
	ldrh r0, [r4, #4]
	ldr r5, _08017104
	cmp r0, #1
	beq %4
	cmp r0, #2
	bne %5
4
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl sub_8020AB6
5
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq %6
	cmp r0, #2
	bne %7
6
	movs r1, #1
	b %8
7
	movs r1, #0
8
	ldr r0, [r5]
	bl sub_801CBDE
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	cmp r0, #1
	beq %9
	cmp r0, #2
	bne %10
9
	movs r0, #1
	b %11
10
	movs r0, #0
11
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r1, #0x1c]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r0, r0, #0xc
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldrh r0, [r4, #4]
	movs r5, #1
	adds r1, r5, #0
	cmp r0, #1
	beq %12
	movs r1, #0
12
	ldr r0, _08017108
	ldr r0, [r0]
	bl sub_802459E
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne %13
	movs r5, #0
13
	str r5, [r6, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	ALIGN
_08017104 DCDU gUnknown_03003458
_08017108 DCDU gUnknown_030034F8

	END
