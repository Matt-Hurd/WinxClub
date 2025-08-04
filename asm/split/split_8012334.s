	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0

	thumb_func_start sub_8012334
sub_8012334
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq %1
	movs r1, #1
	str r1, [r4]
	str r1, [r0, #4]
1
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801234C
sub_801234C
	ldr r1, _08012460
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq %10
	ldrb r1, [r1, #0xf]
	ldr r6, _08012464
	adds r5, r1, #0
	adds r2, r2, r1
	cmp r1, r2
	bhs %3
2
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldrh r3, [r3, #4]
	lsls r3, r3, #0x1f
	bmi %3
	adds r1, #1
	cmp r1, r2
	blo %2
3
	cmp r1, r2
	bne %7
	movs r3, #0x4c
	muls r3, r5
	adds r3, r3, r6
	adds r1, r5, #1
	cmp r1, r2
	ldr r4, [r3, #0xc]
	bhs %6
4
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldr r3, [r3, #0xc]
	cmp r3, r4
	bhs %5
	adds r5, r1, #0
	adds r4, r3, #0
5
	adds r1, #1
	cmp r1, r2
	blo %4
6
	cmp r0, r4
	blo %9
	adds r1, r5, #0
7
	movs r0, #0x4c
	muls r0, r1
	adds r0, r0, r6
8
	pop {r4, r5, r6}
	bx lr
9
	movs r0, #0
	b %8
10
	movs r0, #0
	b %8

	thumb_func_start sub_80123B4
sub_80123B4
	cmp r0, #0
	beq %14
	ldr r2, _08012460
	movs r3, #0x4c
	ldrb r1, [r2, #0xf]
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012464
	adds r1, r1, r3
	cmp r2, #0
	beq %13
11
	ldr r3, [r1, #0x10]
	cmp r3, r0
	bne %12
	adds r0, r1, #0
	bx lr
12
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne %11
13
	movs r1, #1
	str r1, [r0]
14
	movs r0, #0
	bx lr

	thumb_func_start sub_80123E4
sub_80123E4
	push {r4, r5, r6, r7}
	ldr r1, _08012460
	movs r3, #0x4c
	subs r1, #0x10
	ldrh r0, [r1, #0x12]
	ldr r7, _08012460
	ldr r4, _08012464
	subs r7, #0x34
	muls r0, r3
	ldr r3, [r7, #0xc]
	adds r0, r0, r4
	str r3, [r0]
	subs r0, #0x4c
	movs r1, #0
	movs r2, #0
	cmp r0, r4
	blo %23
	ldr r4, [r7, #0x10]
	ldr r5, [r7, #0x14]
	ldr r6, [r7, #0x18]
15
	ldrh r3, [r0, #4]
	lsls r3, r3, #0x1e
	beq %19
	ldr r7, _08012460
	ldr r3, [r0, #0x4c]
	subs r7, #0x34
	ldr r7, [r7, #0xc]
	cmp r3, r7
	bne %16
	str r3, [r0]
	b %18
16
	cmp r1, #2
	bhs %17
	subs r3, #4
	str r3, [r0]
	adds r1, #1
	b %18
17
	movs r1, #0
	str r4, [r0]
18
	adds r2, #1
	b %22
19
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %20
	str r5, [r0]
	b %21
20
	str r6, [r0]
21
	movs r2, #0
	movs r1, #0
22
	ldr r3, _08012464
	subs r0, #0x4c
	cmp r0, r3
	bhs %15
23
	movs r0, #0x4c
	ldr r4, _08012464
	muls r0, r2
	ldr r1, _08012460
	adds r0, r0, r4
	subs r1, #0x10
	str r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	ALIGN
_08012460 DCDU gUnknown_03003530
_08012464 DCDU gUnknown_030037A0
	END
