	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003478
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT GetEWRAMStart
	IMPORT sub_801D788
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT sub_803DA80
	IMPORT sub_803F6B4
	IMPORT sub_803FC14
	IMPORT sub_8040594

	thumb_func_start sub_801D9B0
sub_801D9B0
	push {r4, r5, r6}
	adds r0, r1, #0
	movs r2, #0
	movs r4, #1
	ldr r5, _0801DCE0
	b %11
1
	movs r1, #0
2
	lsls r3, r1, #1
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt %5
	ldrh r2, [r0, r3]
	adds r3, r4, #0
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	lsls r3, r6
	cmp r2, #0
	beq %3
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq %4
3
	movs r2, #1
	b %9
4
	movs r2, #0
	b %9
5
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	adds r3, r4, #0
	lsls r3, r6
	cmp r2, #0
	beq %6
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq %7
6
	movs r2, #1
	b %8
7
	movs r2, #0
8
	subs r2, r4, r2
9
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bhs %10
	cmp r2, #0
	bne %2
10
	cmp r2, #0
	bne %11
	ldr r0, [r0, #0x18]
11
	cmp r0, #0
	beq %12
	cmp r2, #0
	beq %1
12
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_801DA2A
sub_801DA2A
	push {r4, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	bl sub_801D9B0
	cmp r0, #0
	beq %13
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
13
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DA46
sub_801DA46
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r5, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %14
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
14
	movs r1, #0
15
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #4]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xc]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo %15
	ldrh r1, [r4, #0x14]
	strh r1, [r0, #0x10]
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x12]
	ldrh r1, [r4, #0x18]
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801DAA0
sub_801DAA0
	push {r4, r5}
	ldr r3, [r1]
	ldrh r1, [r3, #4]
	cmp r1, #0
	beq %16
	cmp r1, #1
	bne %19
	movs r1, #0
	b %20
16
	movs r1, #0
17
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r5, [r4, #6]
	adds r2, r2, r0
	strh r5, [r2, #8]
	ldrh r5, [r2, #0x18]
	cmp r5, #0
	bne %18
	ldrh r4, [r4, #6]
	strh r4, [r2, #0x18]
18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	blo %17
19
	pop {r4, r5}
	bx lr
20
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r4, [r4, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r4, [r2, #0x18]
	blo %20
	b %19

	thumb_func_start sub_801DAEC
sub_801DAEC
	push {r3, r4, r5, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r0, #0x2c]
	cmp r1, #0
	beq %21
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %23
21
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1a]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1c]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1e]
	bl sub_803F6B4
	ldrh r1, [r5, #4]
	cmp r0, r1
	beq %22
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
22
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %23
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
23
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DB3E
sub_801DB3E
	push {r4, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r2, [r1, #4]
	adds r4, #0x80
	ldr r0, [r4, #0x10]
	ldr r3, _0801DCE4
	lsls r2, r2, #0x17
	lsrs r2, r2, #3
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r2, [r1, #6]
	asrs r3, r3, #9
	ands r0, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r0, [r1, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801DB80
sub_801DB80
	ldr r1, _0801DCE8
	movs r2, #0x27
	ldr r1, [r1]
	lsls r2, r2, #6
	ldr r0, [r0, #0x2c]
	adds r1, r1, r2
	str r0, [r1, #0xc]
	bx lr

	thumb_func_start sub_801DB90
sub_801DB90
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #4]
	ldr r3, [r4, #0x58]
	movs r6, #0
	mvns r6, r6
	asrs r1, r3, #0x10
	cmp r0, r1
	beq %24
	lsls r1, r0, #0x10
	b %25
24
	movs r1, #0
25
	ldrh r0, [r5, #6]
	ldr r2, [r4, #0x5c]
	asrs r7, r2, #0x10
	cmp r0, r7
	beq %26
	lsls r0, r0, #0x10
	b %27
26
	movs r0, #0
27
	ldrh r5, [r5, #8]
	movs r7, #0
	cmp r5, #2
	bne %34
	cmp r1, #0
	beq %34
	cmp r0, #0
	beq %34
	adds r5, r7, #0
	cmp r3, r1
	blt %28
	movs r5, #2
28
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	movs r6, #1
	cmp r2, r0
	blt %29
	movs r6, #3
29
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble %31
	cmp r2, r0
	bge %30
	subs r2, r0, r2
	b %33
30
	subs r2, r2, r0
	b %33
31
	cmp r3, r1
	bge %32
	subs r2, r1, r3
	b %33
32
	subs r2, r3, r1
33
	add r0, pc, #0xEC
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b %50
34
	cmp r5, #3
	bne %41
	cmp r1, #0
	beq %41
	cmp r0, #0
	beq %41
	movs r6, #1
	cmp r2, r0
	blt %35
	movs r6, #3
35
	lsls r5, r6, #0x18
	asrs r5, r5, #0x18
	adds r6, r7, #0
	cmp r3, r1
	blt %36
	movs r6, #2
36
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble %38
	cmp r2, r0
	bge %37
	subs r2, r0, r2
	b %40
37
	subs r2, r2, r0
	b %40
38
	cmp r3, r1
	bge %39
	subs r2, r1, r3
	b %40
39
	subs r2, r3, r1
40
	add r0, pc, #0x9C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x9C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b %50
41
	cmp r1, #0
	beq %44
	cmp r5, #1
	bne %44
	cmp r0, #0
	beq %44
	movs r1, #1
	cmp r2, r0
	blt %42
	movs r1, #3
42
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge %43
	subs r0, r0, r2
	b %50
43
	subs r0, r2, r0
	b %50
44
	cmp r1, #0
	beq %47
	adds r0, r7, #0
	cmp r3, r1
	blt %45
	movs r0, #2
45
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	cmp r3, r1
	bge %46
	subs r0, r1, r3
	b %50
46
	subs r0, r3, r1
	b %50
47
	cmp r0, #0
	beq %52
	movs r1, #1
	cmp r2, r0
	blt %48
	movs r1, #3
48
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge %49
	subs r0, r0, r2
	b %50
49
	subs r0, r2, r0
50
	cmp r0, #0
	ble %52
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	lsls r2, r5, #0x1c
	lsrs r2, r2, #4
	orrs r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x98
	strb r6, [r1, r4]
	str r0, [r4, #0x78]
	adds r4, #0x80
	str r7, [r4, #0x1c]
51
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
52
	str r7, [r4, #0x78]
	b %51
	ALIGN
_0801DCE0 DCDU gUnknown_03003478
_0801DCE4 DCDU 0xE00FFFFF
_0801DCE8 DCDU gUnknown_03003450
_0801DCEC DCDU 0x0000B504
_0801DCF0 DCDU 0x00000000
_0801DCF4 DCDU 0x00010000
_0801DCF8 DCDU 0x00000000
	END
