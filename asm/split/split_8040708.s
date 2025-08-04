	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003520
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT __call_via_r3
	IMPORT Div
	IMPORT sub_8040C38

	thumb_func_start sub_8040708
sub_8040708
	push {r4, lr}
	ldrh r2, [r1, #4]
	cmp r2, #0x20
	bhs %1
	add r3, pc, #0x8
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
1
	b %68
2
	DCB 0x25, 0x00
3
	DCB 0x20, 0x00
4
	DCB 0x20, 0x00
5
	DCB 0x20, 0x00
6
	DCB 0x28, 0x00
7
	DCB 0x35, 0x00
8
	DCB 0x35, 0x00
9
	DCB 0x1C, 0x01
10
	DCB 0x3E, 0x00
11
	DCB 0x47, 0x00
12
	DCB 0x35, 0x00
13
	DCB 0x5B, 0x00
14
	DCB 0x63, 0x00
15
	DCB 0x6A, 0x00
16
	DCB 0x75, 0x00
17
	DCB 0xC1, 0x00
18
	DCB 0xD2, 0x00
19
	DCB 0xE8, 0x00
20
	DCB 0x1C, 0x01
21
	DCB 0x1C, 0x01
22
	DCB 0xFD, 0x00
23
	DCB 0x0B, 0x01
24
	DCB 0x1C, 0x01
25
	DCB 0x1C, 0x01
26
	DCB 0x1C, 0x01
27
	DCB 0x1C, 0x01
28
	DCB 0x1C, 0x01
29
	DCB 0x0F, 0x01
30
	DCB 0x1C, 0x01
31
	DCB 0x1C, 0x01
32
	DCB 0x1C, 0x01
33
	DCB 0x1C, 0x01
loc_804075c
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq %34
	lsls r1, r1, #3
	strh r1, [r0, #0x16]
34
	pop {r4}
	pop {r3}
	bx r3
loc_804076c
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq %34
	lsrs r2, r1, #4
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r2, #0
	beq %35
	strb r2, [r0, #0x19]
35
	cmp r1, #0
	beq %34
	strb r1, [r0, #0x1a]
36
	b %34
loc_8040786
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq %34
	NEGS r2, r1
	cmp r1, #0x10
	blo %37
	lsrs r2, r1, #4
37
	strb r2, [r0, #0x18]
	b %34
loc_8040798
	ldrh r1, [r1, #6]
	movs r2, #0x10
	lsrs r1, r1, #1
	adds r1, #0xc0
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
38
	b %34
loc_80407aa
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq %34
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq %34
	ldr r2, [r0, #0x48]
	lsls r1, r1, #8
	adds r1, r2, r1
	str r1, [r0, #0x48]
	ldr r2, [r0, #0x3c]
	cmp r1, r2
	bls %34
	ldr r3, [r0, #0x30]
39
	ldr r1, [r0, #0x48]
	subs r1, r1, r3
	str r1, [r0, #0x48]
	cmp r1, r2
	bhi %39
	b %34
loc_80407d2
	ldrh r1, [r1, #6]
	ldr r0, _08040968
	adds r1, #0xff
	strb r1, [r0, #7]
	ldr r1, [r0, #0x28]
	ldr r1, [r1]
	strh r1, [r0, #0xc]
40
	b %34
loc_80407e2
	ldrh r1, [r1, #6]
	movs r2, #0x10
	strb r1, [r0, #0xf]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
	b %34
loc_80407f0
	ldrh r0, [r1, #6]
	lsrs r1, r0, #4
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	lsls r1, r1, #1
	adds r0, r1, r0
	bl sub_8040C38
	b %34
loc_8040806
	ldrh r1, [r1, #6]
	lsrs r4, r1, #4
	cmp r4, #0xf
	bhs %60
	add r3, pc, #0x8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
41
	DCB 0x3B
42
	DCB 0x3B
43
	DCB 0x3B
44
	DCB 0x3B
45
	DCB 0x3B
46
	DCB 0x08
47
	DCB 0x3B
48
	DCB 0x3B
49
	DCB 0x3B
50
	DCB 0x3B
51
	DCB 0x0C
52
	DCB 0x1C
53
	DCB 0x3B
54
	DCB 0x2B
55
	DCB 0x36, 0x00
loc_8040828
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strh r1, [r0, #0x12]
56
	b %34
loc_8040830
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	cmp r1, #0x40
	ble %57
	movs r1, #0x40
	strb r1, [r0, #0xf]
57
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
	b %34
loc_8040850
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	subs r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	bpl %58
	movs r1, #0
	strb r1, [r0, #0xf]
58
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
59
	b %34
loc_804086e
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #6]
	beq %36
	ldrh r2, [r0, #4]
	movs r3, #1
	orrs r2, r3
	strh r2, [r0, #4]
	adds r1, #0xff
	strb r1, [r0, #6]
	b %34
loc_8040884
	lsls r0, r1, #0x1c
	ldr r1, _08040968
	lsrs r0, r0, #0x1c
	strb r0, [r1, #5]
	b %34
60
	ldr r0, _08040968
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq %38
	adds r0, r2, #0
	bl __call_via_r3
	b %34
loc_804089e
	ldrh r0, [r1, #6]
	cmp r0, #0x10
	bhs %61
	ldr r1, _08040968
	strb r0, [r1, #4]
	b %34
61
	ldr r4, _08040968
	ldr r3, _0804096C
	strb r0, [r4, #0xb]
	muls r0, r3
	lsrs r1, r0, #0x17
	ldr r0, _08040970
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r4, #0xe]
	b %34
loc_80408c0
	ldrh r1, [r1, #6]
	ldr r3, _08040968
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r1, [r3, #0x16]
	ldr r1, _08040970
	ldr r0, _08040974
	adds r1, #0x10
	ldrb r1, [r1, #0xf]
	cmp r1, #0
	beq %40
	movs r3, #0x10
62
	ldrh r2, [r0, #4]
	lsls r4, r2, #0x1f
	bmi %63
	orrs r2, r3
	strh r2, [r0, #4]
63
	subs r1, #1
	adds r0, #0x4c
	cmp r1, #0
	bne %62
	b %34
loc_80408ec
	ldrh r1, [r1, #6]
	NEGS r0, r1
	cmp r1, #0x10
	blo %64
	lsrs r0, r1, #4
64
	ldr r2, _08040968
	movs r3, #0xff
	ldrh r1, [r2, #0x16]
	adds r3, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r2, #0x16]
	cmp r1, r3
	bls %56
	movs r1, #0
	cmp r0, #0
	blt %65
	adds r1, r3, #0
65
	strh r1, [r2, #0x16]
	b %34
loc_8040916
	ldr r1, [r0, #8]
	cmp r1, #0
	beq %66
	ldrb r1, [r1, #0x14]
	cmp r1, #0
	beq %66
	ldrh r1, [r0, #4]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0, #4]
	b %34
66
	movs r1, #1
	strh r1, [r0, #4]
	b %34
loc_8040932
	ldrh r1, [r1, #6]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x20]
	b %34
loc_804093a
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #7]
	beq %67
	adds r1, #0xff
	strb r1, [r0, #7]
67
	ldr r1, [r0, #8]
	adds r1, #0x7c
	str r1, [r0, #0x48]
	movs r1, #0
	str r1, [r0, #0x40]
	b %34
68
	ldr r0, _08040968
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq %59
	ldrh r1, [r1, #6]
	adds r0, r2, #0
	bl __call_via_r3
	b %34
	ALIGN
_08040968 DCDU gUnknown_03003BC8
_0804096C DCDU 0x00333333
_08040970 DCDU gUnknown_03003520
_08040974 DCDU gUnknown_030037A0
	END
