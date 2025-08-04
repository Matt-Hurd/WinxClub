	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003D24
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000AC4
	IMPORT sub_8001432
	IMPORT sub_80019B4
	IMPORT sub_80019C4
	IMPORT sub_80019D4
	IMPORT sub_80019E8
	IMPORT sub_80019FC
	IMPORT sub_8018620
	IMPORT sub_80187A0
	IMPORT sub_8018884
	IMPORT sub_80268BA
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT rand
	IMPORT __16__rt_udiv
	IMPORT __vec_dtor__FPvUiPFPvi_vPFPv_v
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803FAB8
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_8040594

	thumb_func_start DefaultScriptGroups__Attack
DefaultScriptGroups__Attack
	movs r0, #0
	bx lr

	thumb_func_start DefaultScriptGroups__DamagePlayer
DefaultScriptGroups__DamagePlayer
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__PlayerIframe
DefaultScriptGroups__PlayerIframe
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__Dying
DefaultScriptGroups__Dying
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0x22
	bhs %1
	add r3, pc, #0x10
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
2
	DCB 0x25, 0x00
3
	DCB 0x26, 0x00
4
	DCB 0xB0, 0x00
5
	DCB 0x2C, 0x00
6
	DCB 0x37, 0x00
7
	DCB 0x65, 0x00
8
	DCB 0x68, 0x00
9
	DCB 0x5F, 0x00
10
	DCB 0x62, 0x00
11
	DCB 0x25, 0x00
12
	DCB 0x25, 0x00
13
	DCB 0x25, 0x00
14
	DCB 0x25, 0x00
15
	DCB 0x25, 0x00
16
	DCB 0x25, 0x00
17
	DCB 0x25, 0x00
18
	DCB 0x25, 0x00
19
	DCB 0x25, 0x00
20
	DCB 0x25, 0x00
21
	DCB 0x25, 0x00
22
	DCB 0x59, 0x00
23
	DCB 0x5C, 0x00
24
	DCB 0x7E, 0x00
25
	DCB 0xA0, 0x00
26
	DCB 0x25, 0x00
27
	DCB 0x25, 0x00
28
	DCB 0x6B, 0x00
29
	DCB 0x76, 0x00
30
	DCB 0x7A, 0x00
31
	DCB 0x43, 0x00
32
	DCB 0x4E, 0x00
33
	DCB 0x9A, 0x00
34
	DCB 0x8A, 0x00
35
	DCB 0xBA, 0x00
loc_801e33c
	b %1
loc_801e33e
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	bl sub_8040594
	str r1, [r4, #0x70]
	b %1
loc_801e34a
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	lsls r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r2
	str r0, [r1, #8]
	b %1
loc_801e360
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xff
	lsls r3, r3, #3
	ldr r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
	b %1
loc_801e378
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	ldr r3, _0801E75C
	lsls r0, r0, #0x13
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1, #8]
	b %1
loc_801e38e
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsrs r0, r0, #0x14
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e3a4
	ldr r0, [r1, #4]
	strh r0, [r4, #0x18]
	b %1
loc_801e3aa
	ldr r0, [r1, #4]
	strh r0, [r4, #0x1a]
36
	b %1
loc_801e3b0
	ldr r0, [r1, #4]
	strh r0, [r4, #0x26]
	b %1
loc_801e3b6
	ldr r0, [r1, #4]
	strh r0, [r4, #0x22]
	b %1
loc_801e3bc
	ldr r0, [r1, #4]
	strh r0, [r4, #0x24]
37
	b %1
loc_801e3c2
	ldr r0, [r1, #4]
	strh r0, [r4, #0x20]
	b %1
loc_801e3c8
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1]
	ldr r3, _0801E760
	lsls r0, r0, #0x14
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1]
	b %1
loc_801e3de
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	b %1
loc_801e3e6
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xc]
	b %1
loc_801e3ee
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xf
	lsls r3, r3, #0xf
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xd
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e406
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %38
	movs r0, #0
38
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xb
	ldr r2, [r1, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0x14]
	b %1
loc_801e426
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	movs r0, #0
	strb r0, [r4, #0xc]
	b %1
loc_801e432
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %39
	movs r0, #0
39
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xc
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x13
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e452
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r1, #4]
	adds r2, r3, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl __call_via_r2
	b %1
loc_801e466
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r1, #4]
	ldr r2, [r0, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0xf
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x14]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq %40
	cmp r1, #2
	beq %40
	movs r2, #1
	b %41
40
	movs r2, #0
41
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r5
	orrs r2, r3
	str r2, [r0, #0xc]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq %36
	cmp r1, #1
	bne %42
	movs r1, #0xbf
	bl sub_80401C0
	b %1
42
	cmp r1, #2
	bne %37
	movs r1, #0x7f
	bl sub_80401C0
	b %1

	thumb_func_start DefaultScriptGroups__40
DefaultScriptGroups__40
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__Dead
DefaultScriptGroups__Dead
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	str r1, [r0, #0x5c]
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__44
DefaultScriptGroups__44
	bx lr

	thumb_func_start sub_801E4D0
sub_801E4D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801E764
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	sub sp, #0x64
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne %44
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	cmp r0, #0
	str r1, [sp, #0x48]
	beq %44
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x5c]
	subs r1, #0x30
	str r1, [sp, #0x58]
43
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq %48
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x30]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq %44
	lsls r3, r2, #0x1e
	bpl %49
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	cmp r0, #2
	bls %45
	ldr r0, [sp, #0x50]
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x54]
	str r0, [r4, #0x64]
44
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
45
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x60]
	adds r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x64]
	adds r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0x58]
	str r0, [sp, #0x40]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x44]
	ldr r0, [r7]
	bl sub_80019C4
	adds r6, r0, #0
	movs r0, #0
	movs r5, #0
	cmp r6, #0
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	bls %47
46
	adds r2, r5, #0
	add r0, sp, #4
	ldr r1, [r7]
	bl sub_80019D4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x34]
	str r1, [sp, #0x30]
	ldr r1, [r7]
	add r0, sp, #4
	adds r2, r5, #0
	bl sub_80019E8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	ldr r1, [r7]
	add r0, sp, #8
	adds r2, r5, #0
	bl sub_80019FC
	ldr r0, [sp, #8]
	add r3, sp, #0x20
	movs r1, #4
	str r0, [sp, #0x24]
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x50]
	adds r5, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x50]
	movs r1, #5
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x54]
	lsls r5, r5, #0x18
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r5, r5, #0x18
	cmp r5, r6
	str r0, [sp, #0x54]
	blo %46
47
	add r0, sp, #0x50
	bl sub_8018620
	ldr r0, [sp, #0x50]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	add r7, pc, #0x190
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r0, [sp, #0x54]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	b %50
48
	b %66
49
	b %55
50
	cmp r6, #1
	bls %51
	NEGS r0, r0
	b %52
51
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x34]
	subs r0, r1, r0
	ldr r1, [sp, #0x2c]
	subs r5, r1, r2
52
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r1, r1, r0
	subs r2, r2, r5
	str r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	adds r0, r1, r0
	adds r1, r2, r5
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	add r1, sp, #0x1c
	add r2, sp, #0x14
	add r3, sp, #0xc
	bl sub_8018884
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [r4, #0x60]
	subs r1, r1, r2
	str r1, [r4, #0x64]
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq %54
53
	b %43
54
	b %44
55
	lsls r2, r2, #0x1f
	bpl %53
	ldr r5, [r4, #0x2c]
	movs r2, #0
56
	lsls r3, r2, #2
	adds r3, r3, r4
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %57
	ldr r3, [r3, #4]
	cmp r3, r5
	beq %58
57
	adds r2, #1
	cmp r2, #5
	blo %56
	movs r2, #0
	mvns r2, r2
58
	adds r3, r2, #1
	bne %54
	ldr r2, [r4, #0x30]
59
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq %60
	ldr r6, [r6, #4]
	cmp r6, r2
	beq %61
60
	adds r3, #1
	cmp r3, #5
	blo %59
	movs r3, #0
	mvns r3, r3
61
	adds r6, r3, #0
	adds r3, r6, #1
	bne %54
	cmp r2, r1
	bne %62
	cmp r5, r0
	bne %63
62
	cmp r2, r0
	bne %54
	cmp r5, r1
	beq %54
63
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne %65
	str r0, [r4, #0x34]
64
	b %44
65
	str r1, [r4, #0x34]
	b %44
66
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x12
	bpl %54
	ldr r0, _0801E764
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r3, #0
	ldrsb r1, [r0, r3]
	cmp r1, #0
	beq %67
	ldr r1, [sp, #0x5c]
	ldrb r1, [r1, #7]
	cmp r1, #2
	beq %68
	cmp r1, #0
	beq %68
67
	movs r3, #1
	ldrsb r0, [r0, r3]
	cmp r0, #0
	beq %54
	ldr r1, [sp, #0x5c]
	ldrb r0, [r1, #7]
	cmp r0, #4
	beq %68
	cmp r0, #6
	bne %54
68
	ldr r0, [r4, #0x2c]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	cmp r0, #0
	beq %54
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x2c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq %53
	lsls r3, r2, #0x1e
	bmi %53
	lsls r2, r2, #0x1f
	bpl %53
	ldr r2, [r4, #0x2c]
	movs r3, #0
69
	lsls r5, r3, #2
	adds r5, r5, r4
	ldr r5, [r5, #0x38]
	cmp r5, #0
	beq %70
	ldr r5, [r5, #4]
	cmp r5, r2
	beq %71
70
	adds r3, #1
	cmp r3, #5
	blo %69
	movs r3, #0
	mvns r3, r3
71
	adds r5, r3, #0
	adds r3, r5, #1
	bne %64
	ldr r5, [r4, #0x30]
72
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq sub_801E756
	ldr r6, [r6, #4]
	cmp r6, r5
	beq %74


	thumb_func_start sub_801E756
sub_801E756
	adds r3, #1
	cmp r3, #5
	b %73
	ALIGN
_0801E75C DCDU 0xFF8003FF
_0801E760 DCDU 0xFF8007FF
_0801E764 DCDU gUnknown_03003458
_0801E768 DCDU gUnknown_03003EB8
_0801E76C DCDU 0x00010000
_0801E770 DCDU 0x00000000
73
	blo %72
	movs r3, #0
	mvns r3, r3
74
	adds r6, r3, #0
	adds r3, r6, #1
	bne %64
	cmp r5, r1
	bne %75
	cmp r2, r0
	bne %76
75
	cmp r5, r0
	bne %64
	cmp r2, r1
	beq %64
76
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne %77
	str r0, [r4, #0x34]
	b %44
77
	str r1, [r4, #0x34]
	b %44

	non_word_aligned_thumb_func_start DefaultScriptGroups__0C
DefaultScriptGroups__0C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0
	adds r1, #0x60
	ldr r2, [r4, #0x70]
	str r1, [sp, #8]
	ldr r1, [r4, #0x6c]
	adds r5, r4, #0
	adds r6, r4, #0
	adds r6, #0x90
	adds r5, #0x80
	str r1, [sp, #4]
	ldr r7, [r4, #0x68]
	cmp r2, #0
	beq %89
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %89
	cmp r0, r2
	bge %78
	adds r2, r0, #0
78
	subs r0, r0, r2
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	add r0, pc, #0x3A0
	beq %93
	cmp r1, #1
	beq %85
	cmp r1, #2
	beq %94
	cmp r1, #3
	bne %87
	NEGS r3, r2
	str r3, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne %81
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %79
	cmp r1, #2
	bne %80
79
	movs r0, #0
	str r0, [r4, #0x64]
	str r3, [r4, #0x60]
	b %87
80
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xac
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %87
81
	cmp r1, #0
	bne %84
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %82
	cmp r1, #2
	bne %83
82
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b %87
83
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xda
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b %87
84
	cmp r1, #3
	beq %87
	cmp r1, #1
	bne %87
	str r2, [r4, #0x64]
	b %87
85
	str r2, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne %90
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %86
	cmp r1, #2
	bne %88
86
	NEGS r0, r2
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
87
	b %105
88
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x308
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b %105
89
	b %127
90
	cmp r1, #0
	bne %95
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %91
	cmp r1, #2
	bne %92
91
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b %105
92
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x2D8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %105
93
	b %103
94
	b %96
95
	cmp r1, #3
	bne %105
	NEGS r0, r2
	str r0, [r4, #0x64]
	b %105
96
	NEGS r3, r2
	str r3, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne %99
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %97
	cmp r1, #2
	bne %98
97
	movs r0, #0
	str r0, [r4, #0x60]
	str r3, [r4, #0x64]
	b %105
98
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x298
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b %105
99
	cmp r1, #1
	bne %102
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %100
	cmp r1, #2
	bne %101
100
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b %105
101
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x26C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b %105
102
	cmp r1, #2
	beq %105
	cmp r1, #0
	bne %105
	str r2, [r4, #0x60]
	b %105
103
	str r2, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne %107
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %104
	cmp r1, #2
	bne %106
104
	NEGS r0, r2
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x60]
105
	b %111
106
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x230
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b %111
107
	cmp r1, #1
	bne %110
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq %108
	cmp r1, #2
	bne %109
108
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b %111
109
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x200
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b %111
110
	cmp r1, #2
	bne %111
	NEGS r0, r2
	str r0, [r4, #0x60]
111
	ldr r0, [r5, #0x10]
	lsls r1, r0, #0x1a
	bpl %118
	lsls r1, r0, #0x18
	bpl %113
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %112
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
112
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
113
	lsls r1, r0, #0x17
	bpl %115
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %114
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b %118
114
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b %118
115
	lsls r1, r0, #0x16
	bpl %117
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %116
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
116
	cmp r0, #0
	bge %118
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b %118
117
	lsls r0, r0, #0x15
	bpl %118
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble %119
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
118
	b %120
119
	cmp r0, #0
	bge %120
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
120
	cmp r7, #0
	bne %121
	movs r0, #0
	b %123
121
	cmp r7, #0
	ble %122
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl %123
	movs r0, #0
	b %123
122
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble %123
	movs r0, #0
123
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne %124
	b %126
124
	cmp r1, #0
	ble %125
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl %126
	movs r1, #0
	b %126
125
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble %126
	movs r1, #0
126
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
	b %135
127
	cmp r7, #0
	bne %128
	ldr r1, [sp, #4]
	cmp r1, #0
	beq %135
128
	cmp r7, #0
	bne %129
	movs r0, #0
	b %131
129
	cmp r7, #0
	ble %130
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl %131
	movs r0, #0
	b %131
130
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble %131
	movs r0, #0
131
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne %132
	b %134
132
	cmp r1, #0
	ble %133
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl %134
	movs r1, #0
	b %134
133
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble %134
	movs r1, #0
134
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
135
	movs r7, #0
136
	lsls r0, r7, #2
	adds r0, r0, r4
	str r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %143
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne %143
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	blo %137
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #0xff
	strb r1, [r0, #1]
	b %138
137
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
138
	ldrb r0, [r6, #0xa]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r6, #0xa]
	bne %139
	movs r1, #1
	ldr r0, [r5, #0x14]
	lsls r1, r1, #0xb
	bics r0, r1
	str r0, [r5, #0x14]
139
	ldr r0, _0801EB98
	ldr r2, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %142
	ldr r3, _0801EB9C
	movs r1, #3
	mvns r1, r1
	str r2, [r3]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne %140
	movs r3, #0
	movs r1, #0x3c
	ldr r2, _0801EBA0
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
	b %141
	ALIGN
_0801EB84 DCDU 0x0000B504
_0801EB88 DCDU 0x00000000
_0801EB8C DCDU 0x00010000
_0801EB90 DCDU 0x00000000
_0801EB94 DCDU gUnknown_03003458
_0801EB98 DCDU gUnknown_0300346C
_0801EB9C DCDU gUnknown_030033E8
_0801EBA0 DCDU sub_802E4AA
140
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
141
	ldr r0, _0801EF74
	movs r3, #0
	str r3, [r0]
142
	ldr r0, [sp]
	movs r3, #0
	str r3, [r0, #0x38]
143
	adds r7, #1
	cmp r7, #5
	blo %136
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	non_word_aligned_thumb_func_start DefaultScriptGroups__10
DefaultScriptGroups__10
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	sub sp, #0xc
	cmp r0, #0x14
	bhs %144
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
144
	b %174
	ALIGN
145
	DCB 0x15, 0x00
146
	DCB 0x42, 0x02
147
	DCB 0x42, 0x02
148
	DCB 0x42, 0x02
149
	DCB 0x4F, 0x00
150
	DCB 0x42, 0x02
151
	DCB 0x42, 0x02
152
	DCB 0x42, 0x02
153
	DCB 0x42, 0x02
154
	DCB 0x29, 0x01
155
	DCB 0x42, 0x02
156
	DCB 0x42, 0x02
157
	DCB 0x42, 0x02
158
	DCB 0x42, 0x02
159
	DCB 0x42, 0x02
160
	DCB 0x7C, 0x01
161
	DCB 0x42, 0x02
162
	DCB 0xED, 0x01
163
	DCB 0xCD, 0x01
164
	DCB 0x06, 0x02
loc_801ec10
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %165
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %165
	bl sub_8000914
165
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %166
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
166
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq %167
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %174
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %174
167
	movs r0, #4
	str r0, [r4, #0x1c]
	b %174
loc_801ec84
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x55
	bne %168
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %174
	movs r2, #0
	movs r1, #0x6e
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	b %174
168
	ldrh r0, [r5, #4]
	cmp r0, #4
	bne %177
	ldr r0, _0801EF78
	ldrb r0, [r0]
	cmp r0, #0
	beq %177
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %170
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %169
	bl sub_8000914
169
	movs r0, #0
	str r0, [r5, #0x78]
170
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %171
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
171
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %174
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq %172
	bl rand
	lsls r0, r0, #0x1c
	bne %172
	movs r0, #0x3b
	strh r0, [r5, #0x1e]
	movs r0, #0x3c
	strh r0, [r5, #0x1a]
	movs r0, #0x3d
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	b %173
172
	movs r0, #0x3e
	strh r0, [r5, #0x1e]
	movs r0, #0x3f
	strh r0, [r5, #0x1a]
	movs r0, #0x40
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
173
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	b %175
174
	b %186
175
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %176
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
176
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %186
177
	b %178
178
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %180
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r1, [r5, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %179
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801EF7C
	ldr r0, [r0]
	bl sub_8001432
179
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	movs r0, #0
	str r0, [r5, #0x78]
180
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %181
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
181
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi %183
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq %183
	bl rand
	lsls r0, r0, #0x19
	bne %183
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %182
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
182
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
183
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl %186
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %186
	bl sub_803FC14
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	b %186
loc_801ee38
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %184
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %184
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
184
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %185
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %185
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
185
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %186
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq %187
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	ldr r0, [r4, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r4, #0x14]
186
	b %191
187
	movs r0, #4
	str r0, [r4, #0x1c]
	b %191
loc_801eede
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %188
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %188
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
188
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %189
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %189
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
189
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %191
	movs r0, #0x10
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	movs r1, #0
	orrs r0, r1
	str r0, [r4, #0xc]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r5, #0x30]
	bl sub_803F170
	b %191
	ALIGN
_0801EF74 DCDU gUnknown_030033E8
_0801EF78 DCDU gUnknown_03003D20
_0801EF7C DCDU gUnknown_03003EB8

loc_801ef80
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq %190
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %190
	bl sub_8000914
190
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %191
	movs r0, #0x11
	str r0, [r4, #0x1c]
	b %191
loc_801efc0
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq %191
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %191
	bl sub_8000914
191
	b %195
loc_801eff2
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %192
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %192
	bl sub_8000914
192
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %193
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
193
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq %194
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %195
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0xd
	bpl %195
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b %195
194
	movs r0, #0x11
	str r0, [r4, #0x1c]
195
	ldr r0, [r4, #0x10]
	lsls r0, r0, #3
	lsrs r0, r0, #0x17
	beq %196
	ldr r0, _0801F2EC
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	adds r1, r5, #0
	str r0, [sp, #8]
	add r0, sp, #4
	adds r1, #0x58
	bl sub_80187A0
	ldr r1, [r4, #0x10]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x17
	cmp r2, r0
	bls %196
	ldr r7, _0801F2F0
	lsls r1, r1, #4
	lsrs r6, r1, #0x18
	ldr r5, [r7]
	ldr r1, [r4, #0x14]
	subs r0, r2, r0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	muls r1, r0
	adds r0, r2, #0
	bl __16__rt_udiv
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r6, #5
	adds r0, r0, r5
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %196
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
196
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start DefaultScriptGroups__14
DefaultScriptGroups__14
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	ldr r2, [r4, #4]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xf5
	beq %198
	bgt %202
	movs r5, #1
	lsls r5, r5, #9
	lsrs r6, r5, #1
	movs r7, #0x80
	cmp r1, #0xf0
	beq %213
	bgt %201
	cmp r1, #0xed
	beq %198
	bgt %199
	cmp r1, #0
	bne %198
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %197
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs %197
	movs r1, #0x82
	bl sub_80401C0
197
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bpl %198
	movs r1, #0x20
	bics r0, r1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #5
	bics r0, r1
	str r0, [r4, #0x10]
198
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
199
	cmp r1, #0xee
	beq %216
	cmp r1, #0xef
	bne %198
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xee
	bne %218
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
200
	b %198
201
	cmp r1, #0xf1
	bne %198
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xf0
	bne %215
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
	b %198
202
	adds r2, r1, #0
	subs r2, #0xf6
	cmp r2, #0xa
	bhs %198
	add r3, pc, #0x8
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
203
	DCB 0x05
204
	DCB 0x05
205
	DCB 0x05
206
	DCB 0x05
207
	DCB 0x05
208
	DCB 0x05
209
	DCB 0x05
210
	DCB 0x05
211
	DCB 0x06
212
	DCB 0x11
loc_801f1a6
	b %198
loc_801f1a8
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %198
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs %198
	movs r1, #0x82
	bl sub_80401C0
	b %198
loc_801f1be
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl %198
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bls %198
	movs r1, #0x42
	bl sub_80401C0
	b %198
213
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi %214
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf0
	beq %214
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r7
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
214
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf1
	bne %198
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
215
	lsrs r0, r0, #0x18
	bne %198
	ldr r0, [r4, #0x10]
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b %198
216
	b %217
217
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi %219
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xee
	beq %219
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198
218
	b %220
219
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bne %198
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198
220
	lsrs r0, r0, #0x18
	bne %200
	ldr r0, [r4, #0x10]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b %198

	non_word_aligned_thumb_func_start DefaultScriptGroups__3C
DefaultScriptGroups__3C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x58
	adds r5, r1, #0
	ldr r0, [r0, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %221
	adds r1, r5, #0
	bl sub_803FF24
221
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start DefaultScriptGroups__38
DefaultScriptGroups__38
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__Intersect
DefaultScriptGroups__Intersect
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #1
	str r1, [r0, #0x7c]
	movs r1, #0
	str r1, [r0, #0x34]
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start DefaultScriptGroups__TakeDamage
DefaultScriptGroups__TakeDamage
	movs r1, #0
	str r1, [r0, #0x78]
	bx lr

	thumb_func_start sub_801F28C
sub_801F28C
	push {r4, r5}
	ldm r1!, {r3, r4}
	movs r1, #0x7c
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq %226
	ldr r1, [r0, #0x30]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r5, r1, #0x10
	cmp r2, #0
	beq %223
	ldr r1, _0801F2F4
	cmp r2, #1
	ldr r1, [r1]
	beq %224
	cmp r2, #2
	beq %225
	cmp r2, #3
	bne %226
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	subs r0, r0, r5
	cmp r1, r0
	blt %226
	movs r0, #1
222
	pop {r4, r5}
	bx lr
223
	ldr r0, [r0, #0x58]
	cmp r3, r0
	bgt %226
	movs r0, #1
	b %222
224
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	cmp r1, r0
	bgt %226
	movs r0, #1
	b %222
225
	ldr r0, [r0, #0x58]
	cmp r3, r0
	blt %226
	movs r0, #1
	b %222
226
	movs r0, #0
	b %222
	ALIGN
_0801F2EC DCDU gUnknown_03003454
_0801F2F0 DCDU gUnknown_0300345C
_0801F2F4 DCDU gUnknown_03003D24
	END
