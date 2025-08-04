	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_08050664
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013B9C
	IMPORT sub_80155D6
	IMPORT sub_801742C
	IMPORT sub_8017884
	IMPORT sub_8028C2E
	IMPORT __call_via_r3
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_803F814
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_80158E0
sub_80158E0
	adds r1, r0, #0
	adds r1, #0xf0
	ldrb r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne %1
	movs r0, #0
1
	bx lr

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

	non_word_aligned_thumb_func_start sub_8015A16
sub_8015A16
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08015CE0
	movs r1, #0
	ldr r0, [r0]
	sub sp, #0xc
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %14
	ldrh r1, [r0, #6]
14
	adds r6, r5, #0
	adds r6, #0x80
	movs r0, #0x2c
	ldrb r0, [r0, r6]
	adds r4, r6, #0
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	adds r4, #0xe0
	cmp r0, #0
	bne %23
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %15
	movs r1, #1
	bl sub_80401E4
15
	lsls r0, r7, #0x1f
	bpl %22
	movs r0, #0x38
	ldrb r0, [r0, r6]
	add r3, sp, #0
	strb r0, [r3, #8]
	ldrh r0, [r4, #0x1e]
	ldr r1, [r6, #0x14]
	adds r2, r0, #1
	strh r2, [r4, #0x1c]
	adds r0, #3
	strh r0, [r4, #0x1e]
	b %17
16
	adds r0, #1
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
17
	ldrh r0, [r4, #0x1c]
	add r3, sp, #0
	ldrb r2, [r3, #8]
	cmp r0, r2
	bhs %18
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r2, [r2, #4]
	cmp r2, #0
	beq %16
18
	ldrh r2, [r4, #0x1c]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo %20
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
19
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	ldrh r2, [r4, #0x1e]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo %21
	add r3, sp, #0
	ldrb r2, [r3, #8]
	subs r2, #1
	strh r2, [r4, #0x1e]
21
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4, #0x1e]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r0, [r1, r0]
	ldr r1, _08015CEC
	ldrh r2, [r2, #2]
	ldr r1, [r1]
	movs r3, #0xa
	ldrb r1, [r1, #2]
	subs r1, r3, r1
	lsls r1, r1, #0x18
	adds r3, r2, #0
	adds r2, r0, #0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_8013B9C
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %22
	movs r1, #0
	bl sub_80401E4
22
	b %24
23
	lsls r0, r7, #0x1f
	bpl %24
	adds r0, r6, #0
	bl sub_8013B76
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %24
	movs r1, #1
	bl sub_80401E4
24
	lsls r0, r7, #0x1e
	bpl %25
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
25
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	b %19

	non_word_aligned_thumb_func_start sub_8015B1E
sub_8015B1E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x19
	adds r1, r4, #0
	sub sp, #0x2c
	adds r1, #0xe0
	lsls r0, r0, #0x12
	str r0, [sp, #0xc]
	str r1, [sp, #0x28]
	ldrh r6, [r1, #0x1a]
	movs r5, #0x1d
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _08015CF0
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x194
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0xf0
	subs r0, r1, r0
	subs r0, #8
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	ldr r7, _08015CFC
	movs r5, #0
26
	ldr r7, _08015CFC
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %26
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	ldrb r0, [r5, #2]
	movs r7, #0
	cmp r0, #0
	bls %29
27
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r7, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls %28
	subs r1, #0xc
28
	lsls r2, r1, #0x10
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r7, #1
	ldrb r0, [r5, #2]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi %27
29
	ldrb r0, [r5, #2]
	adds r7, r4, #0
	adds r7, #0x80
	cmp r0, #0
	beq %30
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl __call_via_r3
30
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq %32
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0xff
	movs r3, #0
	adds r0, #0x81
	str r2, [sp]
	add r1, sp, #0x14
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrb r2, [r5, #2]
	adds r0, r0, r6
	subs r0, #0x14
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x86
	cmp r2, #2
	bls %31
	movs r0, #0x7a
31
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
32
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0x90
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0x64
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	adds r1, #5
	str r1, [sp, #0x24]
	cmp r0, #0
	beq %33
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	ldr r0, [sp, #0x18]
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl __call_via_r3
33
	ldr r0, [sp, #0x18]
	movs r6, #0
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
34
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %35
	ldr r2, _08015CFC
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	strh r2, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
35
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %34
	movs r6, #0
36
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	b %37
	ALIGN
_08015CE0 DCDU gUnknown_03003444
_08015CE4 DCDU gUnknown_0300345C
_08015CE8 DCDU gUnknown_03003454
_08015CEC DCDU gUnknown_03003D30
_08015CF0 DCDU gUnknown_080414B8
_08015CF4 DCDU 0x00010000
_08015CF8 DCDU 0x00000000
_08015CFC DCDU gUnknown_08050664
37
	cmp r0, #0
	beq %38
	ldr r2, [sp, #0x18]
	lsls r0, r6, #5
	adds r0, r0, r2
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
38
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo %36
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #0x1a]
	adds r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt %47
	movs r6, #0
39
	ldr r1, _080160F0
	lsls r0, r6, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo %39
	ldrb r0, [r5, #2]
	movs r6, #0
	cmp r0, #0
	bls %42
40
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r6, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls %41
	subs r1, #0xc
41
	lsls r2, r1, #0x10
	lsls r1, r6, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	asrs r2, r2, #0x10
	adds r1, #0x50
	mov r3, ip
	bl __call_via_r3
	adds r6, #1
	ldrb r0, [r5, #2]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi %40
42
	movs r6, #0
43
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq %44
	lsls r0, r6, #5
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
44
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo %43
	movs r6, #0
45
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %46
	ldr r2, _080160F0
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
46
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %45
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %49
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	b %48
47
	b %51
48
	movs r2, #0x94
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl __call_via_r3
49
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq %50
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x48
	adds r0, r7, #0
	bl __call_via_r3
50
	adds r1, r4, #0
	adds r1, #0xf0
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne %52
	movs r0, #3
	strb r0, [r1, #8]
51
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
52
	movs r0, #2
	strb r0, [r1, #8]
	movs r0, #0x38
	ldrb r0, [r0, r7]
	adds r1, r4, #0
	add r3, sp, #0
	strb r0, [r3, #0x1c]
	adds r1, #0xff
	adds r1, #0x61
	ldrh r2, [r1, #0x1e]
	ldrb r3, [r3, #0x1c]
	ldr r0, [r7, #0x14]
	cmp r2, r3
	blo %53
	add r3, sp, #0
	ldrb r2, [r3, #0x1c]
	subs r2, #1
	strh r2, [r1, #0x1e]
53
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r1, #0x1e]
	ldrh r1, [r1, #0x1c]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	adds r2, r2, r0
	ldrh r4, [r2, #2]
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	ldr r0, _080160F4
	movs r1, #0xa
	ldr r0, [r0]
	adds r3, r4, #0
	ldrb r0, [r0, #2]
	subs r0, r1, r0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_8013B9C
	movs r1, #0
	adds r0, r7, #0
	bl sub_80139AC
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x4d
	adds r0, r7, #0
	bl __call_via_r3
	b %51

	non_word_aligned_thumb_func_start sub_8015EC2
sub_8015EC2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #0x13
	sub sp, #0x1c
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xe0
	str r0, [sp, #0x18]
	ldrh r6, [r0, #0x1a]
	movs r5, #0xf
	lsls r5, r5, #0x14
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _080160F8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x1F8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r0]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x4d
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
	movs r5, #0
	movs r7, #0x6c
54
	ldr r1, _080160F0
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	strh r7, [r3, #6]
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %54
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r7, r4, r0
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls %57
55
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r7, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls %56
	subs r1, #0xc
56
	lsls r2, r1, #0x10
	lsls r1, r5, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %55
57
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq %58
	ldr r0, [sp, #0x14]
	movs r2, #0x70
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
58
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq %63
	ldrb r0, [r7, #2]
	lsls r1, r0, #0x1f
	bpl %59
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x86
	b %60
59
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x3a
60
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, #2
	bhi %61
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b %62
61
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
62
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
63
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0xC8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x30]
	movs r7, #4
	cmp r0, #0
	beq %64
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	subs r1, r7, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x94
	bl __call_via_r3
64
	movs r5, #0
	subs r7, r7, r6
65
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %66
	ldr r2, _080160F0
	lsls r1, r5, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, r7, r1
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
66
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %65
	movs r0, #8
	subs r0, r0, r6
	lsls r6, r0, #0x10
	movs r5, #0
	asrs r6, r6, #0x10
	add r7, sp, #4
67
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq %68
	lsls r0, r5, #5
	add r3, sp, #0
	strh r6, [r3, #4]
	adds r0, #0x3c
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	adds r1, r7, #0
	bl sub_8040034
68
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %67
	ldr r0, [sp, #0x18]
	ldrh r0, [r0, #0x1a]
	ldr r1, [sp, #0x18]
	adds r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt %69
	movs r0, #0
	movs r1, #0xf8
	strb r0, [r1, r4]
	ldr r0, _08016104
	movs r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_801742C
	adds r0, r4, #0
	bl sub_80155D6
69
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080160F0 DCDU gUnknown_08050664
_080160F4 DCDU gUnknown_03003D30
_080160F8 DCDU gUnknown_080414B8
_080160FC DCDU 0x00010000
_08016100 DCDU 0x00000000
_08016104 DCDU gUnknown_03003454
	END
