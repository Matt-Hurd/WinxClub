	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start strStartsWith
strStartsWith
	b %2
1
	adds r0, #1
	adds r1, #1
2
	ldrb r3, [r0]
	cmp r3, #0
	beq %3
	ldrb r2, [r1]
	cmp r2, #0
	beq %4
	cmp r3, r2
	beq %1
	b %4
3
	ldrb r0, [r1]
	cmp r0, #0
	bne %4
	movs r0, #1
	bx lr
4
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8000236
sub_8000236
	push {r4, r5}
	b %10
5
	movs r3, #0
	ldrsb r4, [r0, r3]
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %6
	subs r4, #0x20
6
	lsls r5, r4, #0x18
	movs r3, #0
	ldrsb r4, [r1, r3]
	asrs r5, r5, #0x18
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %7
	subs r4, #0x20
7
	lsls r3, r4, #0x18
	asrs r3, r3, #0x18
	cmp r5, r3
	beq %9
	subs r0, r3, r5
8
	pop {r4, r5}
	bx lr
9
	adds r0, #1
	adds r1, #1
	subs r2, #1
10
	ldrb r3, [r0]
	cmp r3, #0
	beq %11
	ldrb r3, [r1]
	cmp r3, #0
	beq %11
	cmp r2, #0
	bne %5
	b %12
11
	cmp r2, #0
	bne %13
12
	movs r0, #0
	b %8
13
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldrsb r0, [r0, r3]
	subs r0, r1, r0
	b %8

	non_word_aligned_thumb_func_start gameStrlen
gameStrlen
	ldrb r2, [r0]
	movs r1, #0
	cmp r2, #0
	beq %15
14
	adds r0, #1
	ldrb r2, [r0]
	adds r1, #1
	cmp r2, #0
	bne %14
15
	adds r0, r1, #0
	bx lr

	thumb_func_start strToLower
strToLower
	ldrb r1, [r0]
	cmp r1, #0
	beq %18
16
	movs r3, #0
	ldrsb r1, [r0, r3]
	adds r2, r1, #0
	subs r2, #0x41
	cmp r2, #0x19
	bhi %17
	adds r1, #0x20
	strb r1, [r0]
17
	adds r0, #1
	ldrb r1, [r0]
	cmp r1, #0
	bne %16
18
	bx lr

	thumb_func_start strchr
strchr
	ldrb r2, [r0]
	cmp r2, #0
	beq %20
19
	movs r3, #0
	ldrsb r2, [r0, r3]
	cmp r2, r1
	beq %21
	adds r0, #1
	ldrb r2, [r0]
	cmp r2, #0
	bne %19
20
	movs r0, #0
21
	bx lr

	non_word_aligned_thumb_func_start sub_80002E2
sub_80002E2
	ldr r1, _08000314
	sub sp, #4
	movs r3, #0
	strh r3, [r1, #8]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08000318
	mov r2, sp
	str r2, [r1]
	movs r2, #3
	lsls r2, r2, #0x19
	str r2, [r1, #4]
	ldr r2, _0800031C
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0xff
	adds r1, #1
	lsls r2, r1, #0x12
	strh r1, [r2]
	movs r1, #5
	lsls r1, r1, #0x18
	strh r0, [r1]
	ldr r0, _08000320
	strh r3, [r0, #0x10]
22
	b %22
	ALIGN
_08000314 DCDU REG_IE
_08000318 DCDU REG_DMA3
_0800031C DCDU 0x85006000
_08000320 DCDU REG_WIN0H
	END
