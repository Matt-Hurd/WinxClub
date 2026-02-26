	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT sub_803F3E8
	IMPORT sub_803F72C
	IMPORT sub_803FAD4
	IMPORT sub_803FB24
	IMPORT sub_803FB58

	thumb_func_start sub_8017884

sub_8017884
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, [sp, #0x14]
	movs r0, #0
	movs r5, #0
	str r5, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [r3, #8]
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r1, #0x10
	str r1, [sp, #8]
	ldr r1, [r1]
	adds r4, r0, r1
	ldr r1, [sp, #8]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bls %22
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
10
	ldrh r0, [r4]
	ldr r7, _08017AA8
	movs r6, #0
	subs r0, #8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x10]
	movs r1, #0x1c
	bl sub_803F72C
	adds r5, r0, #0
	ldrh r0, [r0, #0x10]
	movs r2, #0x3f
	movs r1, #7
	lsls r1, r1, #8
	ands r0, r2
	adds r1, r0, r1
	strh r1, [r5, #0x10]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bne %11
	movs r0, #0
	b %13
11
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne %12
	movs r0, #1
	b %13
12
	movs r0, #0
13
	cmp r0, #0
	beq %15
	adds r7, r4, #0
	adds r7, #8
14
	movs r2, #1
	b %18
15
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #0x10]
	bl sub_803F72C
	adds r7, r0, #0
	ldrh r0, [r5, #0x10]
	ldr r1, [sp]
	movs r2, #0x3f
	lsls r1, r1, #6
	adds r1, r0, r1
	mvns r2, r2
	ands r1, r2
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r1, r4, #0
	adds r1, #8
	adds r0, r7, #0
	ldr r2, [sp]
	bl sub_803F3E8
	b %14
16
	adds r1, r2, #0
	lsls r1, r6
	ands r1, r0
	beq %17
	lsls r0, r6, #2
	adds r0, r0, r7
	ldr r1, [r0, #4]
	ldr r3, [sp, #0x14]
	ldr r3, [r3, #8]
	adds r1, r1, r3
	str r1, [r0, #4]
17
	adds r6, #1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	cmp r6, #8
	bhs %19
18
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne %16
19
	ldrb r2, [r4, #6]
	adds r1, r7, #0
	adds r0, r5, #0
	ldr r3, [sp, #0x10]
	bl sub_803FB24
	ldrh r0, [r4, #4]
	ldr r2, _08017AAC
	cmp r0, r2
	beq %20
	ldrh r1, [r4, #2]
	cmp r1, r2
	bne %21
20
	ldr r0, [sp, #0x38]
	str r0, [r5, #8]
	b %24
21
	ldr r2, _08017AA4
	cmp r0, r2
	beq %23
	strh r0, [r5, #0xc]
	b %24
22
	b %28
23
	strh r1, [r5, #0xe]
24
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq %25
	adds r0, r5, #0
	bl sub_803FAD4
	b %26
25
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl sub_803FB58
26
	str r5, [sp, #4]
	ldrh r0, [r4]
	adds r4, r0, r4
	lsls r0, r4, #0x1e
	beq %27
	lsrs r4, r4, #2
	lsls r4, r4, #2
	adds r4, #4
27
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, r1
	bls %28
	b %10
28
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08017AA4 DCDU 0x0000FFFE
_08017AA8 DCDU gUnknown_03003E88
_08017AAC DCDU 0x0000FFFF

	END
