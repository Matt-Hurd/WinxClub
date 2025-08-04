	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT nullsub_1
	IMPORT strToLower
	IMPORT sub_800529A
	IMPORT __16__rt_memclr_w
	IMPORT strcpy
	IMPORT strlen
	IMPORT strstr


	thumb_func_start sub_802ED1C
sub_802ED1C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	bl strlen
	cmp r0, #0
	beq %16
	movs r7, #0x47
	movs r6, #0x48
1
	ldrb r1, [r5]
	cmp r1, #0x20
	bne %2
	movs r1, #0xff
	strb r1, [r4]
	adds r4, #1
	b %39
2
	cmp r1, #0xa
	bne %3
	movs r1, #0xfe
	strb r1, [r4]
	adds r4, #1
	b %39
3
	movs r3, #0
	ldrsb r2, [r5, r3]
	adds r3, r2, #0
	subs r3, #0x30
	cmp r3, #9
	bhi %4
	adds r1, r2, #0
	adds r1, #0xd1
	strb r1, [r4]
	adds r4, #1
	b %39
4
	adds r3, r2, #0
	subs r3, #0x41
	cmp r3, #0x19
	bhi %5
	adds r1, r2, #0
	adds r1, #0xe4
	strb r1, [r4]
	adds r4, #1
	b %39
5
	adds r3, r2, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi %6
	adds r1, r2, #0
	adds r1, #0xaa
	strb r1, [r4]
	adds r4, #1
	b %39
6
	cmp r1, #0x2e
	bne %7
	movs r1, #0x3f
	strb r1, [r4]
	adds r4, #1
	b %39
7
	cmp r1, #0x2c
	bne %8
	movs r1, #0x40
	strb r1, [r4]
	adds r4, #1
	b %39
8
	cmp r1, #0x3a
	bne %9
	movs r1, #0x41
	strb r1, [r4]
	adds r4, #1
	b %39
9
	cmp r1, #0x3b
	bne %10
	movs r1, #0x42
	strb r1, [r4]
	adds r4, #1
	b %39
10
	cmp r1, #0x21
	bne %11
	movs r1, #0x43
	strb r1, [r4]
	adds r4, #1
	b %39
11
	cmp r1, #0x3f
	bne %12
	movs r1, #0x44
	strb r1, [r4]
	adds r4, #1
	b %39
12
	cmp r1, #0x26
	bne %13
	movs r1, #0x45
	strb r1, [r4]
	adds r4, #1
	b %39
13
	cmp r1, #0x28
	bne %14
	movs r1, #0x46
	strb r1, [r4]
	adds r4, #1
	b %39
14
	cmp r1, #0x29
	bne %15
	strb r7, [r4]
	adds r4, #1
	b %39
15
	cmp r1, #0x27
	bne %17
	strb r6, [r4]
	adds r4, #1
	b %39
16
	b %40
17
	cmp r1, #0x60
	bne %18
	strb r6, [r4]
	adds r4, #1
	b %39
18
	cmp r1, #0x2d
	bne %19
	movs r1, #0x49
	strb r1, [r4]
	adds r4, #1
	b %39
19
	cmp r1, #0x2f
	bne %20
	movs r1, #0x4a
	strb r1, [r4]
	adds r4, #1
	b %39
20
	cmp r1, #0x2b
	bne %21
	movs r1, #0x4b
	strb r1, [r4]
	adds r4, #1
	b %39
21
	cmp r1, #0xa9
	bne %22
	movs r1, #0x4c
	strb r1, [r4]
	adds r4, #1
	b %39
22
	cmp r1, #0x99
	bne %23
	movs r1, #0x4d
	strb r1, [r4]
	adds r4, #1
	b %39
23
	cmp r1, #0x5f
	bne %24
	movs r1, #0x4e
	strb r1, [r4]
	adds r4, #1
	b %39
24
	cmp r1, #0x24
	bne %25
	movs r1, #0x4f
	strb r1, [r4]
	adds r4, #1
	b %39
25
	cmp r1, #0x22
	beq %26
	cmp r1, #0x93
	beq %26
	cmp r1, #0x94
	bne %27
26
	movs r1, #0x50
	strb r1, [r4]
	adds r4, #1
	b %39
27
	cmp r1, #0x3c
	bne %28
	movs r1, #0x51
	strb r1, [r4]
	adds r4, #1
	b %39
28
	cmp r1, #0x3e
	bne %29
	movs r1, #0x52
	strb r1, [r4]
	adds r4, #1
	b %39
29
	cmp r1, #0x2a
	bne %30
	movs r1, #0x53
	strb r1, [r4]
	adds r4, #1
	b %39
30
	cmp r1, #0x3d
	bne %31
	movs r1, #0x54
	strb r1, [r4]
	adds r4, #1
	b %39
31
	cmp r1, #0xae
	bne %32
	movs r1, #0x55
	strb r1, [r4]
	adds r4, #1
	b %39
32
	cmp r1, #0x23
	bne %33
	movs r1, #0x56
	strb r1, [r4]
	adds r4, #1
	b %39
33
	cmp r1, #0x40
	bne %34
	movs r1, #0x57
	strb r1, [r4]
	adds r4, #1
	b %39
34
	cmp r1, #0x25
	bne %35
	movs r1, #0x58
	strb r1, [r4]
	adds r4, #1
	b %39
35
	cmp r1, #0x5c
	bne %36
	movs r1, #0x59
	strb r1, [r4]
	adds r4, #1
	b %39
36
	cmp r1, #0x7e
	bne %37
	movs r1, #0x5a
	strb r1, [r4]
	adds r4, #1
	b %39
37
	cmp r1, #0x5b
	bne %38
	strb r1, [r4]
	adds r4, #1
	b %39
38
	cmp r1, #0x5d
	bne %39
	movs r1, #0x5c
	strb r1, [r4]
	adds r4, #1
39
	subs r0, #1
	adds r5, #1
	cmp r0, #0
	beq %40
	b %1
40
	movs r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802EF0A
sub_802EF0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	ldr r6, _0802F114
	adds r5, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	sub sp, #0x44
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r7, r0, #0x18
	lsrs r7, r7, #0x18
	ldr r0, [r6]
	bl nullsub_1
	adds r5, #8
	movs r1, #0x40
	add r0, sp, #4
	bl __16__rt_memclr_w
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq %41
	add r6, sp, #4
	adds r0, r6, #0
	ldr r1, [sp, #0x50]
	bl strcpy
	adds r0, r6, #0
	bl strToLower
	adds r0, r6, #0
	bl sub_802ED1C
41
	movs r0, #0
	mvns r0, r0
	adds r7, r7, r0
	movs r6, #0
	cmp r7, r0
	str r0, [sp]
	beq %56
42
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x48]
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bne %55
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq %53
	ldr r1, [sp, #0x48]
	movs r0, #0
	cmp r1, #9
	bhs %52
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
43
	DCB 0x0F
44
	DCB 0x04
45
	DCB 0x0F
46
	DCB 0x0F
47
	DCB 0x07
48
	DCB 0x0A
49
	DCB 0x0F
50
	DCB 0x0F
51
	DCB 0x0D, 0x00
loc_802ef9a
	adds r0, r4, #0
	adds r0, #0x10
	b %52
loc_802efa0
	adds r0, r4, #0
	adds r0, #8
	b %52
loc_802efa6
	adds r0, r4, #0
	adds r0, #8
	b %52
loc_802efac
	adds r0, r4, #0
	adds r0, #8
52
	cmp r0, #0
	beq %55
	add r1, sp, #4
	bl strstr
	cmp r0, #0
	beq %55
	bl strlen
	ldr r1, [sp]
	cmp r0, r1
	bhs %55
	str r0, [sp]
	adds r6, r5, #4
	b %55
53
	ldr r0, [sp, #0x4c]
	subs r0, #1
	str r0, [sp, #0x4c]
	adds r3, r0, #1
	bne %55
	ldr r0, _0802F114
	ldr r0, [r0]
	bl nullsub_1
	adds r0, r5, #4
54
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
55
	ldr r0, [r4]
	lsls r0, r0, #4
	lsrs r0, r0, #2
	adds r5, r0, r5
	ldr r0, _0802F114
	adds r5, #4
	ldr r0, [r0]
	bl nullsub_1
	subs r7, #1
	bhs %42
	cmp r6, #0
	beq %56
	adds r0, r6, #0
	b %54
56
	movs r0, #0
	b %54

	thumb_func_start sub_802F00C
sub_802F00C
	push {r3, lr}
	adds r1, r0, #0
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	subs r1, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	lsrs r2, r2, #0x1c
	cmp r2, #6
	bhs %63
	add r3, pc, #0x4
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
57
	DCB 0x0A
58
	DCB 0x02
59
	DCB 0x0A
60
	DCB 0x0A
61
	DCB 0x05
62
	DCB 0x08
loc_802f036
	adds r1, r0, #0
	adds r1, #0x10
	b %63
loc_802f03c
	adds r1, r0, #0
	adds r1, #8
	b %63
loc_802f042
	adds r1, r0, #0
	adds r1, #8
63
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3

	non_word_aligned_thumb_func_start sub_802F04E
sub_802F04E
	subs r1, r0, #4
	ldr r0, _0802F114
	push {r4, lr}
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	movs r4, #0
	lsrs r2, r2, #0x1c
	cmp r2, #9
	bhs %73
	add r3, pc, #0x8
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
64
	DCB 0x18
65
	DCB 0x05
66
	DCB 0x09
67
	DCB 0x18
68
	DCB 0x0D
69
	DCB 0x11
70
	DCB 0x18
71
	DCB 0x18
72
	DCB 0x15, 0x00
loc_802f07e
	adds r1, r0, #0
	adds r1, #0x10
	movs r4, #0xc
	b %73
loc_802f086
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #8
	b %73
loc_802f08e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b %73
loc_802f096
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b %73
loc_802f09e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
73
	adds r0, r1, #0
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, r0, r4
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802F0B8
sub_802F0B8
	push {r3, lr}
	subs r1, r0, #4
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0]
	add sp, #4
	pop {r3}
	lsls r0, r0, #4
	lsrs r0, r0, #2
	bx r3

	thumb_func_start sub_802F0D4
sub_802F0D4
	adds r1, r0, #0
	movs r0, #0
	push {r4}
	b %75
74
	adds r1, #1
75
	ldrb r2, [r1]
	cmp r2, #0
	beq %76
	movs r3, #0
	ldrsb r2, [r1, r3]
	subs r2, #1
	cmp r2, #9
	bls %74
76
	subs r1, #1
	movs r2, #1
	b %78
77
	muls r3, r2
	adds r0, r3, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	subs r1, #1
78
	ldrb r3, [r1]
	cmp r3, #0
	beq %79
	movs r3, #0
	ldrsb r4, [r1, r3]
	subs r3, r4, #1
	cmp r3, #9
	bls %77
79
	pop {r4}
	bx lr
	ALIGN
_0802F114 DCDU gUnknown_03003E84
	END
