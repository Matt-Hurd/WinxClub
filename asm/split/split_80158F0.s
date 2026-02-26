	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT sub_8017884
	IMPORT sub_8028C2E
	IMPORT sub_803F814
	IMPORT sub_8040034

	thumb_func_start sub_80158F0

sub_80158F0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r4, r6, r0
	ldr r0, _08015CE0
	movs r3, #3
	ldr r0, [r0]
	ldrsb r1, [r4, r3]
	ldr r3, [r0, #0x14]
	movs r7, #0
	adds r2, r7, #0
	lsls r3, r3, #0x1c
	sub sp, #0xc
	bmi %2
	ldrh r2, [r0, #8]
2
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r5, #0x1b
	bpl %3
	adds r0, r1, #1
	strb r0, [r4, #3]
	b %6
3
	lsls r0, r5, #0x1a
	bpl %4
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b %6
4
	lsls r0, r5, #0x19
	bpl %5
	adds r0, r1, #0
	adds r0, #0xfe
	strb r0, [r4, #3]
	b %6
5
	lsls r0, r5, #0x18
	bpl %6
	adds r0, r1, #2
	strb r0, [r4, #3]
6
	movs r3, #3
	movs r2, #0x1b
	lsls r2, r2, #5
	ldrsb r0, [r4, r3]
	adds r2, r6, r2
	ldrb r2, [r2, #2]
	cmp r0, #0
	bge %7
	adds r0, r2, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b %8
7
	cmp r0, r2
	blt %8
	strb r7, [r4, #3]
8
	movs r3, #3
	ldrsb r0, [r4, r3]
	cmp r0, r1
	beq %11
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x81
	adds r3, r7, #0
	str r2, [sp]
	add r1, sp, #8
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #8]
	subs r0, #0x14
	lsls r1, r0, #0x10
	ldrb r0, [r4, #2]
	asrs r1, r1, #0x10
	cmp r0, #2
	ldrb r0, [r4, #3]
	bhi %9
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b %10
9
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
10
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r6, #0x3c]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08015CE4
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
11
	movs r6, #0
	mvns r6, r6
	lsls r1, r5, #0x1f
	cmp r1, #0
	ldr r0, _08015CE8
	bge %13
	movs r2, #0
	str r2, [sp]
	movs r3, #3
	ldrsb r2, [r4, r3]
	ldrh r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
12
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
13
	lsls r1, r5, #0x1e
	bpl %12
	ldrb r1, [r4, #4]
	cmp r1, #0xff
	beq %12
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
	b %12

	ALIGN
_08015CE0 DCDU gUnknown_03003444
_08015CE4 DCDU gUnknown_0300345C
_08015CE8 DCDU gUnknown_03003454

	END
