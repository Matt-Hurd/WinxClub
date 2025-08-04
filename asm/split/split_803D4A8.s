	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_030033EC
	IMPORT gUnknown_030033F0
	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003EC4
	IMPORT gInterruptStack
	IMPORT sub_80046EE
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047B6
	IMPORT sub_80047BA
	IMPORT sub_80047BE
	IMPORT sub_80047DA
	IMPORT GetEWRAMStart
	IMPORT sub_80051D6
	IMPORT sub_8005220
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03000000
	IMPORT sub_800A9BC
	IMPORT sub_8008B14
	IMPORT sub_800AD8C
	IMPORT sub_800A270
	IMPORT sub_80081D4
	IMPORT sub_8008EB4
	IMPORT SomehowInitEWRAMLinkedList
	IMPORT __16__rt_memclr

	thumb_func_start sub_803D4A8
sub_803D4A8
	push {r4, lr}
	cmp r0, #8
	bhs %16
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x04
2
	DCB 0x08
3
	DCB 0x17
4
	DCB 0x26
5
	DCB 0x35
6
	DCB 0x44
7
	DCB 0x53
8
	DCB 0x63
loc_803d4c0
	movs r0, #0
9
	pop {r4}
	pop {r3}
	bx r3
loc_803d4c8
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x30
	bl sub_803DA80
	adds r4, r0, #0
	beq %10
	adds r0, r4, #0
	bl sub_800A9BC
10
	adds r0, r4, #0
	b %9
loc_803d4e6
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq %11
	adds r0, r4, #0
	bl sub_8008B14
11
	adds r0, r4, #0
	b %9
loc_803d504
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	bl sub_803DA80
	adds r4, r0, #0
	beq %12
	adds r0, r4, #0
	bl sub_800AD8C
12
	adds r0, r4, #0
	b %9
loc_803d522
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq %13
	adds r0, r4, #0
	bl sub_800A270
13
	adds r0, r4, #0
	b %9
loc_803d540
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r4, r0, #0
	beq %14
	adds r0, r4, #0
	bl sub_80081D4
14
	adds r0, r4, #0
	b %9
loc_803d55e
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0803D5A0
	bl sub_803DA80
	adds r4, r0, #0
	beq %15
	adds r0, r4, #0
	bl sub_8008EB4
15
	adds r0, r4, #0
	b %9
16
	b %18
loc_803d57e
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x5c
	bl sub_803DA80
	adds r4, r0, #0
	beq %17
	adds r0, r4, #0
	bl gUnknown_03000000
17
	adds r0, r4, #0
	b %9
18
	movs r0, #0
	b %9
	ALIGN
_0803D5A0 DCDU 0x00005524

	thumb_func_start sub_803D5A4
sub_803D5A4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _0803D664
	adds r5, r2, #0
	movs r7, #0
	sub sp, #0x1c
	strh r7, [r1, #0xa]
	ldr r1, _0803D668
	str r7, [r1]
	str r7, [r1, #4]
	bl sub_803D4A8
	adds r4, r0, #0
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0x10]
	NEGS r0, r0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r6, [sp, #4]
	str r5, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	cmp r5, #0
	beq %20
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	ldr r1, [sp, #4]
	bl __call_via_r2
	adds r5, r0, #0
	movs r6, #0
	cmp r0, #0
	beq %19
	adds r3, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [r4]
	adds r6, r0, #0
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
19
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	ldr r1, [sp, #0x14]
	bl __call_via_r3
	cmp r5, #0
	beq %20
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
20
	adds r0, r4, #0
	beq %21
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
21
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803D664 DCDU REG_TM0CNT
_0803D668 DCDU gUnknown_030033F4

	thumb_func_start sub_803D66C
sub_803D66C
	ldrh r2, [r0]
	ldr r1, _0803D67C
	strh r2, [r1, #0x10]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x12]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x14]
	bx lr
	ALIGN
_0803D67C DCDU REG_WIN0H

	thumb_func_start sub_803D680
sub_803D680
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #4
	add r2, sp, #0x28
	ldm r2!, {r0, r2}
	adds r6, r3, #0
	ldr r3, [r4]
	movs r5, #0x1f
	lsls r5, r5, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r3, r5
	orrs r0, r3
	movs r3, #0x3f
	lsls r3, r3, #0xd
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0xd
	bics r0, r3
	orrs r0, r2
	lsrs r0, r0, #3
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80046EE
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %28
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
22
	DCB 0x02
23
	DCB 0x12
24
	DCB 0x24
25
	DCB 0x34
26
	DCB 0x46
27
	DCB 0x59
loc_803d6d2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d6f2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d716
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %28
loc_803d736
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
28
	b %29
loc_803d75a
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r7, r0, r6
	adds r1, r7, #0
	adds r2, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r7, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b %29
loc_803d780
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r2, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
29
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %36
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
30
	DCB 0x02
31
	DCB 0x14
32
	DCB 0x02
33
	DCB 0x14
34
	DCB 0x14
35
	DCB 0x02
loc_803d7ba
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	adds r2, r0, r2
	cmp r2, #0x10
	bls %36
	movs r2, #0x10
	subs r0, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	b %36
loc_803d7de
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	subs r2, r0, r2
	bpl %36
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r4]
36
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #4
	beq %37
	cmp r0, #5
	bne %38
37
	adds r0, r5, #0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	bl sub_8004784
	b %39
38
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_8004784
39
	movs r1, #0x3f
	ldr r0, [r4]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	bics r0, r1
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803D834
sub_803D834
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r1, r0, #5
	bmi %41
	movs r0, #1
40
	pop {r3, r4, r5}
	pop {r3}
	bx r3
41
	lsls r1, r0, #6
	bpl %42
	movs r0, #0
	b %40
42
	movs r2, #0x3f
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0x13
	lsls r2, r2, #0x13
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #7
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1a
	lsrs r1, r1, #0x1a
	cmp r1, r3
	str r0, [r4]
	bne %51
	bics r0, r2
	str r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs %51
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
43
	DCB 0x03
44
	DCB 0x1D
45
	DCB 0x03
46
	DCB 0x1D
47
	DCB 0x37
48
	DCB 0x59
loc_803d88a
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne %49
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
49
	adds r0, r5, #0
	bl sub_80047BA
	adds r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
	b %51
loc_803d8be
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne %50
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
50
	adds r0, r5, #0
	bl sub_80047BA
	subs r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
51
	b %54
loc_803d8f2
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne %52
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
52
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	adds r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	subs r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
	b %54
loc_803d936
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne %53
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b %40
53
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	subs r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	adds r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
54
	movs r0, #1
	b %40

	thumb_func_start sub_803D97C
sub_803D97C
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_803D984
sub_803D984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9A4
	sub sp, #8
	ldr r0, [r0, #8]
	str r2, [sp]
	movs r2, #3
	adds r3, r1, #0
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9A4 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9A8
sub_803D9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9C0
	adds r3, r2, #0
	adds r2, r1, #0
	adds r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_8005220
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9C0 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9C4
sub_803D9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0803D9F4
	sub sp, #8
	ldr r0, [r0, #8]
	str r3, [sp]
	adds r3, r2, #0
	muls r4, r1
	adds r5, r4, #0
	movs r2, #3
	adds r1, r5, #0
	bl sub_80051D6
	adds r4, r0, #0
	beq %55
	adds r1, r5, #0
	adds r0, r4, #0
	bl __16__rt_memclr
55
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0803D9F4 DCDU gUnknown_030033E8

	thumb_func_start __nw__FUi
__nw__FUi
	adds r1, r0, #0
	ldr r0, _0803DA14
	push {r3, lr}
	ldr r0, [r0, #8]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	movs r2, #1
	bl sub_80051D6
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803DA14 DCDU gUnknown_030033E8

	thumb_func_start sub_803DA18
sub_803DA18
	push {lr}
	adds r1, r0, #0
	beq %59
	ldr r0, _0803DA48
	ldr r0, [r0]
	cmp r0, #0
	bne %58
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq %57
56
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne %56
57
	ldr r0, [r0, #4]
58
	movs r3, #0
	movs r2, #0
	bl sub_8005220
59
	pop {r3}
	bx r3
	ALIGN
_0803DA48 DCDU gUnknown_030033E8

	thumb_func_start __da__FPv
__da__FPv
	push {lr}
	adds r1, r0, #0
	beq %63
	ldr r0, _0803DA7C
	ldr r0, [r0]
	cmp r0, #0
	bne %62
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq %61
60
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne %60
61
	ldr r0, [r0, #4]
62
	movs r3, #0
	movs r2, #0
	bl sub_8005220
63
	pop {r3}
	bx r3
	ALIGN
_0803DA7C DCDU gUnknown_030033E8

	thumb_func_start sub_803DA80
sub_803DA80
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #1
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803DA9C
sub_803DA9C
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #2
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start nullsub_5
nullsub_5
	bx lr
	ALIGN

	thumb_func_start sub_803DABC
sub_803DABC
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_803DAC0
sub_803DAC0
	adds r0, r1, #0
	bx lr

	arm_func_start __rt_stackheap_init
__rt_stackheap_init
	LDR sp, _0803DB28
	LDR sl, _0803DB2C
	mov r0, #0x2000000
	mov r1, #0x2000000
	add r1, r1, #0x40000
	STMFD SP!, {r0, r1, lr}
	sub r1, r1, r0
	bl SomehowInitEWRAMLinkedList
	LDMFD SP!, {r0, r1, lr}
	LDR r1, _0803DB30
	STR r0, [r1]
	LDR r1, _0803DB34
	STR r0, [r1]
	mov pc, lr

	arm_func_start sub_803DAFC
sub_803DAFC
	LDR r0, _0803DB38
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x64
	b _sys_exit

	arm_func_start sub_803DB10
sub_803DB10
	mov r0, #0
	mov pc, lr

	arm_func_start sub_803DB18
sub_803DB18
	STMFD SP!, {r0, r1}
	LDMIA sp, {sl, sp}
	mov pc, lr


	arm_func_start _sys_exit
_sys_exit
	b _sys_exit
	ALIGN
_0803DB28 DCDU gInterruptStack
_0803DB2C DCDU gUnknown_03003EC4
_0803DB30 DCDU gUnknown_030033EC
_0803DB34 DCDU gUnknown_030033F0
_0803DB38 DCDU REG_IME
	END
