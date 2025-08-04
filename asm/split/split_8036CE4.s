	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003468
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__330Static2
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_8017884
	IMPORT sub_80187A0
	IMPORT HostileCreature__Create
	IMPORT HostileCreature__ctor
	IMPORT sub_802913E
	IMPORT sub_802C884
	IMPORT __call_via_r1
	IMPORT __call_via_r5
	IMPORT __call_via_r6
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803FC14

	thumb_func_start Static2__Create
Static2__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xe0
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl HostileCreature__Create
	ldr r0, _080370E0
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3D8
	str r0, [r4, #0x4c]
	movs r0, #0xd
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _080370F8
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b %1

	thumb_func_start sub_8036D30
sub_8036D30
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080370E0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl HostileCreature__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8036D52
sub_8036D52
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x41
	bne %4
	movs r2, #3
	movs r1, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x6a
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x64
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x46
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x63
	movs r1, #0xa8
	strh r0, [r1, r4]
	movs r1, #0xff
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x8b
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	movs r2, #5
	lsls r2, r2, #0x12
	str r1, [r4, #0x70]
	str r2, [r5, #0x24]
	ldr r2, [r5, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080370FC
	adds r0, #0x32
	ands r0, r2
	movs r2, #9
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #0x1e
	adds r4, #0x70
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xc]
4
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8036E02
sub_8036E02
	bx lr

	thumb_func_start sub_8036E04
sub_8036E04
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r1, #0
	bl sub_803F2CC
	movs r0, #1
	movs r1, #0x9c
	str r0, [r1, r4]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %5
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
5
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8036E5E
sub_8036E5E
	movs r1, #0x21
	adds r0, #0x80
	str r1, [r0, #0x1c]
	bx lr

	non_word_aligned_thumb_func_start sub_8036E66
sub_8036E66
	adds r1, r0, #0
	ldr r0, _08037100
	push {r4, r5}
	ldr r0, [r0]
	ldr r5, [r1, #0x58]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r2, [r0, #4]
	ldr r4, [r0]
	ldr r3, [r1, #0x5c]
	subs r0, r4, r5
	subs r1, r2, r3
	cmp r4, r5
	bge %14
	cmp r2, r3
	bge %10
	cmp r0, #0
	bge %6
	NEGS r0, r0
6
	cmp r1, #0
	bge %7
	NEGS r1, r1
7
	cmp r0, r1
	ble %9
	movs r0, #2
8
	pop {r4, r5}
	bx lr
9
	movs r0, #3
	b %8
10
	cmp r0, #0
	bge %11
	NEGS r0, r0
11
	cmp r1, #0
	bge %12
	NEGS r1, r1
12
	cmp r0, r1
	ble %13
	movs r0, #2
	b %8
13
	movs r0, #1
	b %8
14
	cmp r2, r3
	bge %18
	cmp r0, #0
	bge %15
	NEGS r0, r0
15
	cmp r1, #0
	bge %16
	NEGS r1, r1
16
	cmp r0, r1
	ble %17
	movs r0, #0
	b %8
17
	movs r0, #3
	b %8
18
	cmp r0, #0
	bge %19
	NEGS r0, r0
19
	cmp r1, #0
	bge %20
	NEGS r1, r1
20
	cmp r0, r1
	ble %21
	movs r0, #0
	b %8
21
	movs r0, #1
	b %8

	thumb_func_start sub_8036EEC
sub_8036EEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	adds r7, r4, #0
	adds r6, r4, #0
	adds r6, #0x58
	adds r7, #0xc0
	cmp r0, #0xf
	sub sp, #0xc
	beq %26
	bgt %23
	cmp r0, #1
	beq %27
	cmp r0, #8
	beq %29
	cmp r0, #9
	bne %25
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %22
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %22
	bl sub_8000914
22
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	ldr r2, [r4, #0x7c]
	lsls r2, r2, #4
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x1c
	cmp r2, #2
	bne %32
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %32
	movs r3, #1
	b %46
23
	cmp r0, #0x10
	beq %33
	cmp r0, #0x20
	beq %30
	cmp r0, #0x21
	bne %25
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x68
	beq %24
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x68
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %24
	bl sub_8000914
24
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %25
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %28
	movs r0, #1
	str r0, [r5, #0x1c]
25
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
26
	b %56
27
	b %34
28
	movs r1, #8
	str r1, [r5, #0x1c]
	b %25
29
	b %40
30
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x69
	beq %31
	movs r0, #0x1e
	movs r1, #0x7d
	strb r0, [r1, r4]
	movs r1, #0xff
	movs r2, #0
	adds r1, #0x69
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %25
	bl sub_8000914
	b %25
31
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %25
	movs r0, #0x21
	str r0, [r5, #0x1c]
	b %25
32
	b %45
33
	b %65
34
	ldr r0, _08037100
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %38
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x67
	beq %35
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x67
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %35
	bl sub_8000914
35
	ldr r0, _08037104
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xff
	bics r0, r1
	bne %25
	ldr r0, [r5, #0x2c]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	adds r0, #1
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	bne %25
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %36
	ALIGN
_080370E0 DCDU __VTABLE__330Static2
_080370E4 DCDU 0x74617453
_080370E8 DCDU 0x53206369
_080370EC DCDU 0x70697263
_080370F0 DCDU 0x72472074
_080370F4 DCDU 0x0070756F
_080370F8 DCDU 0xF000FFFF
_080370FC DCDU 0xFFFF007F
_08037100 DCDU gUnknown_03003458
_08037104 DCDU gUnknown_03003E98
36
	adds r0, r4, #0
	bl sub_8036E66
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x2c]
	movs r1, #1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	lsrs r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0x14]
	movs r0, #9
	str r0, [r5, #0x1c]
37
	b %25
38
	b %39
39
	movs r0, #0x20
	str r0, [r5, #0x1c]
	b %25
40
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x6d
	beq %41
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x6d
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %41
	bl sub_8000914
41
	ldr r0, _080374F4
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	cmp r0, #0x23
	bls %43
	movs r0, #0x20
	str r0, [r5, #0x1c]
42
	b %25
43
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bls %37
	ldr r0, [r5, #0x2c]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	str r0, [r5, #0x2c]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8036E66
	movs r2, #0xf
	lsls r2, r2, #0x18
	ldr r1, [r4, #0x7c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	movs r0, #9
	str r0, [r5, #0x1c]
44
	b %25
45
	movs r3, #0
46
	cmp r1, r3
	beq %49
	cmp r2, #2
	bne %47
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %47
	movs r1, #1
	b %48
47
	movs r1, #0
48
	bl sub_803F2CC
49
	ldr r7, [r4, #0x2c]
	ldr r0, [r7]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	beq %51
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0x1d
	bne %50
	ldr r0, _080374F8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r7, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r7, #0x48]
	subs r0, r1, r0
	ldr r1, [r5, #0x2c]
	asrs r0, r0, #2
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1b
	cmp r0, r1
	blo %42
	ldr r7, _080374F4
	ldr r0, [r7]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bls %42
	ldr r0, [r7]
	movs r3, #2
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r5
	b %25
50
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne %44
	ldr r0, _080374F8
	adds r6, r7, #0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r6, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo %44
	lsls r1, r0, #0xf
	bpl %44
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %53
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x41
	bne %53
	ldr r0, _080374FC
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq %52
	adds r0, r6, #0
	bl sub_802C884
	b %52
51
	b %55
52
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	mvns r3, r3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _080374F4
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %53
	bics r1, r0
	str r1, [r4, #0x7c]
53
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
54
	b %25
55
	movs r0, #1
	str r0, [r5, #0x1c]
	b %25
56
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x63
	beq %57
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x63
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %57
	bl sub_8000914
57
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	ldr r2, [r4, #0x7c]
	lsls r2, r2, #4
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x1c
	cmp r2, #2
	bne %58
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %58
	movs r3, #1
	b %59
58
	movs r3, #0
59
	cmp r1, r3
	beq %62
	cmp r2, #2
	bne %60
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %60
	movs r1, #1
	b %61
60
	movs r1, #0
61
	bl sub_803F2CC
62
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %54
	movs r0, #0x10
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	movs r1, #0
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r4, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	ldr r0, _08037500
	ldr r1, [r4]
	beq %63
	lsls r1, r1, #0x1c
	bmi %64
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_80012F0
	b %64
63
	lsls r1, r1, #0x1c
	bpl %64
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_8001338
64
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
	b %25
65
	ldr r0, _080374F8
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08037504
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %54
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq %54
	ldr r0, _08037508
	movs r6, #4
	ldr r7, [r0]
	add r0, pc, #0xB8
	str r0, [sp, #4]
	b %67
66
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs %68
67
	lsls r0, r6, #2
	adds r0, r0, r7
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %66
68
	ldr r0, _08037528
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	lsls r1, r6, #2
	adds r1, r1, r7
	str r1, [sp, #8]
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	movs r1, #0xfd
	lsls r0, r6, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r7
	lsls r1, r1, #5
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	add r1, sp, #4
	ldm r1!, {r0, r1}
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r2
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0xff
	adds r0, #0x91
	adds r0, r7, r0
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08037508
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _0803752C
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b %25
	ALIGN
_080374F4 DCDU gUnknown_03003458
_080374F8 DCDU gUnknown_03003EA0
_080374FC DCDU gUnknown_0300346C
_08037500 DCDU gUnknown_03003EB8
_08037504 DCDU 0x00000F42
_08037508 DCDU gUnknown_03003454
_0803750C DCDU 0x6D656E45
_08037510 DCDU 0x65442079
_08037514 DCDU 0x20687461
_08037518 DCDU 0x69726353
_0803751C DCDU 0x47207470
_08037520 DCDU 0x70756F72
_08037524 DCDU 0x00000000
_08037528 DCDU gUnknown_03003468
_0803752C DCDU 0xFFFF000F
	END
