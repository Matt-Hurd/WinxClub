	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E80
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_08051072
	IMPORT gUnknown_08051076
	IMPORT gUnknown_0805107A
	IMPORT gUnknown_0805107E
	IMPORT gUnknown_08051082
	IMPORT gUnknown_08051086
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8001432
	IMPORT GetEWRAMStart
	IMPORT DefaultScriptGroups__04
	IMPORT DefaultScriptGroups__08
	IMPORT DefaultScriptGroups__0C
	IMPORT DefaultScriptGroups__10
	IMPORT sub_801F906
	IMPORT sub_8023A70
	IMPORT sub_8023AA2
	IMPORT sub_8023AE0
	IMPORT CollectFirefly
	IMPORT sub_8028C2E
	IMPORT sub_802E3C6
	IMPORT sub_80333DC
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT __call_via_r7
	IMPORT sub_803DA80
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FAB8
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_80406C4


	thumb_func_start sub_801FE90
sub_801FE90
	push {r3, lr}
	ldr r0, [r1]
	ldrb r1, [r0, #4]
	cmp r1, #5
	bhs %6
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x03
2
	DCB 0x0D
3
	DCB 0x15
4
	DCB 0x1D
5
	DCB 0x25, 0x00
loc_801feaa
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
6
	add sp, #4
	pop {r3}
	bx r3
loc_801febe
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b %6
loc_801fece
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	b %6
loc_801fede
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl CollectFirefly
	b %6
loc_801feee
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AE0
	b %6

	non_word_aligned_thumb_func_start sub_801FEFE
sub_801FEFE
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
	beq %7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
7
	movs r1, #0
8
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xe]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo %8
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x10]
	movs r1, #2
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x18]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801FF68
sub_801FF68
	push {r4, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x1c
	beq %10
	cmp r3, #0x21
	beq %24
	cmp r3, #0x25
	beq %25
	cmp r3, #0x2d
	bne %26
	bl sub_801FEFE
9
	pop {r4}
	pop {r3}
	bx r3
10
	ldrb r3, [r2, #5]
	movs r4, #0x9c
	lsls r3, r3, #0x10
	str r3, [r0, #0x78]
	movs r3, #0
	str r3, [r4, r0]
	ldrb r4, [r2, #4]
	cmp r4, #0xc
	bhs %23
	add r3, pc, #0x8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
11
	DCB 0x06
12
	DCB 0x06
13
	DCB 0x06
14
	DCB 0x06
15
	DCB 0x13
16
	DCB 0x1C
17
	DCB 0x28
18
	DCB 0x34
19
	DCB 0x40
20
	DCB 0x49
21
	DCB 0x58
22
	DCB 0x64
loc_801ffb0
	ldrb r2, [r2, #4]
	movs r4, #0xf
	lsls r4, r4, #0x18
	ldr r3, [r0, #0x7c]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #4
	bics r3, r4
	orrs r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0xff
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801ffca
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801ffdc
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_801fff4
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #3
	movs r3, #0x98
	strb r2, [r3, r0]
	b %23
loc_802000c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
23
	b %27
loc_8020024
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
loc_8020036
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #0
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
24
	b %29
25
	b %28
26
	b %30
loc_8020054
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #1
	movs r3, #0x98
	strb r2, [r3, r0]
	b %27
loc_802006c
	movs r3, #0xf
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r0, #0x7c]
	movs r2, #2
	movs r3, #0x98
	strb r2, [r3, r0]
27
	adds r0, #0xff
	adds r0, #1
	str r1, [r0, #0x28]
	b %9
28
	bl sub_801FE90
	b %9
29
	movs r1, #0x1f
	movs r2, #0xff
	adds r2, #0x45
	strh r1, [r2, r0]
	bl sub_801F906
	b %9
30
	bl DefaultScriptGroups__04
	b %9

	thumb_func_start sub_80200A4
sub_80200A4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x1c
	beq %33
	cmp r2, #0x21
	beq %31
	cmp r2, #0x25
	beq %31
	cmp r2, #0x2d
	bne %36
31
	movs r0, #1
32
	add sp, #4
	pop {r3}
	bx r3
33
	ldr r2, [r0, #0x78]
	cmp r2, #0
	beq %34
	adds r0, #0xff
	adds r0, #1
	ldr r0, [r0, #0x28]
	cmp r0, r1
	beq %35
34
	movs r0, #1
	b %32
35
	movs r0, #0
	b %32
36
	bl DefaultScriptGroups__08
	b %32

	thumb_func_start sub_80200E0
sub_80200E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08020270
	movs r3, #0
	ldr r1, [r0]
	adds r0, r3, #0
	ldr r2, [r1, #0x14]
	sub sp, #0x4c
	lsls r5, r2, #0x1c
	bmi %37
	ldrh r0, [r1, #4]
37
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0
	lsls r2, r2, #0x1c
	bmi %38
	ldrh r0, [r1, #6]
38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	str r1, [sp, #0xc]
	ldrb r2, [r0, #8]
	movs r1, #5
	lsls r1, r1, #8
	str r2, [sp, #8]
	ldr r2, _08020274
	ldr r0, [r2]
	adds r2, r4, #0
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r1, r4, #0
	adds r1, #0x80
	str r1, [sp, #0x48]
	adds r2, #0xa0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	ldr r1, [r1, #0x1c]
	str r2, [sp, #0x44]
	cmp r0, #0
	bne %39
	cmp r1, #0xf
	beq %39
	cmp r1, #0x10
	beq %39
	cmp r1, #0xd
	beq %39
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq %40
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne %40
39
	movs r6, #0
	str r6, [sp, #0x10]
40
	adds r0, r4, #0
	adds r0, #0x90
	adds r2, r0, #0
	adds r7, r4, #0
	adds r7, #0xe0
	adds r2, #0x70
	adds r5, r0, #0
	adds r5, #0xb0
	cmp r1, #5
	str r2, [sp, #0x3c]
	str r7, [sp, #0x40]
	beq %41
	cmp r1, #0xc
	bne %44
41
	ldr r2, [sp, #0x3c]
	ldr r1, [r2, #0x3c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #6
	bne %43
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x18
	bpl %42
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #1
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	str r1, [r2, #0x3c]
	ldr r1, [r4, #0x74]
	movs r2, #0xf
	str r1, [r4, #0x70]
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
	lsrs r1, r3, #2
	str r1, [r4, #0x78]
	b %43
42
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x19
	bpl %43
	ldr r1, [r4, #0x30]
	movs r3, #4
	ldr r2, [r1]
	bics r2, r3
	movs r3, #0
	orrs r2, r3
	str r2, [r1]
	ldr r2, [sp, #0x3c]
	movs r3, #3
	ldr r1, [r2, #0x3c]
	lsls r3, r3, #0x18
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #4
	str r1, [r2, #0x3c]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	adds r1, r1, r3
	str r1, [r4, #0x7c]
43
	movs r1, #0xff
	strb r1, [r0, #8]
	b %127
44
	ldr r3, _08020278
	lsls r2, r6, #0x18
	ldr r3, [r3]
	lsrs r2, r2, #0x1c
	adds r3, #0xc0
	movs r7, #1
	cmp r2, #0
	mov ip, r3
	beq %53
	ldrh r2, [r5, #6]
	cmp r2, #0
	bne %53
	ldr r3, _0802027C
	lsls r2, r6, #0x16
	ldrb r3, [r3]
	str r3, [sp, #0x38]
	bpl %52
	lsls r2, r6, #0x1a
	bpl %45
	movs r2, #2
	strb r2, [r0, #8]
	b %48
45
	lsls r2, r6, #0x1b
	bpl %46
	movs r2, #0
	strb r2, [r0, #8]
	b %48
46
	lsls r2, r6, #0x19
	bpl %47
	movs r2, #3
	strb r2, [r0, #8]
	b %48
47
	lsls r2, r6, #0x18
	bpl %48
	strb r7, [r0, #8]
48
	lsls r0, r6, #0x1f
	bpl %51
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %51
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne %51
	cmp r1, #0xb
	beq %51
	cmp r1, #0xa
	beq %51
	ldr r3, [sp, #0x38]
	cmp r3, #0
	beq %49
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %50
	ALIGN
_0802026C DCDU gPlayerEntity
_08020270 DCDU gUnknown_03003E80
_08020274 DCDU gUnknown_03003458
_08020278 DCDU gUnknown_030034F8
_0802027C DCDU gUnknown_03003D20
49
	movs r0, #0x4b
	strh r0, [r4, #0x16]
	movs r0, #0x4c
	strh r0, [r4, #0x12]
	movs r0, #0x4d
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
50
	movs r0, #1
	lsls r0, r0, #0x14
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x48]
	movs r2, #3
	str r2, [r0, #0x1c]
	b %62
51
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [r4, #0x78]
	cmp r1, #0xb
	beq %62
	cmp r1, #0xa
	beq %62
	ldr r0, [sp, #0x48]
	movs r2, #2
	str r2, [r0, #0x1c]
	b %62
52
	movs r2, #0xff
	strb r2, [r0, #8]
	lsls r2, r6, #0x19
	bpl %60
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #8]
	str r3, [sp, #0x34]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x30]
	lsls r2, r6, #0x1a
	bpl %56
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xc]
	ldr r3, [sp, #0x34]
	b %54
53
	b %88
54
	cmp r3, r2
	blo %55
	movs r3, #0xf
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b %57
55
	movs r3, #0xf
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b %57
56
	movs r2, #0
	strh r2, [r5, #0xc]
57
	lsls r2, r6, #0x1b
	bpl %59
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xe]
	ldr r3, [sp, #0x34]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls %58
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b %61
58
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b %61
59
	movs r2, #0
	strh r2, [r5, #0xe]
	b %61
60
	movs r2, #0
	strh r2, [r5, #8]
61
	lsls r2, r6, #0x18
	bpl %69
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xa]
	str r3, [sp, #0x2c]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x28]
	lsls r2, r6, #0x1a
	bpl %65
	b %63
62
	b %97
63
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xc]
	ldr r3, [sp, #0x2c]
	cmp r3, r2
	blo %64
	movs r3, #0xf
	ldr r2, [sp, #0x28]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b %66
64
	movs r3, #0xf
	ldr r2, [sp, #0x28]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b %66
65
	movs r2, #0
	strh r2, [r5, #0xc]
66
	lsls r2, r6, #0x1b
	bpl %68
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xe]
	ldr r3, [sp, #0x2c]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls %67
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b %70
67
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b %70
68
	movs r2, #0
	strh r2, [r5, #0xe]
	b %70
69
	movs r2, #0
	strh r2, [r5, #0xa]
70
	lsls r2, r6, #0x1a
	bpl %76
	ldrh r2, [r5, #0xc]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xc]
	str r3, [sp, #0x24]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x20]
	lsls r2, r6, #0x19
	bpl %72
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #8]
	ldr r3, [sp, #0x24]
	cmp r3, r2
	blo %71
	movs r3, #0xf
	ldr r2, [sp, #0x20]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b %73
71
	movs r3, #0xf
	ldr r2, [sp, #0x20]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b %73
72
	movs r2, #0
	strh r2, [r5, #8]
73
	lsls r2, r6, #0x18
	bpl %75
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xa]
	ldr r3, [sp, #0x24]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls %74
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b %77
74
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #2
	strb r2, [r0, #8]
	b %77
75
	movs r2, #0
	strh r2, [r5, #0xa]
	b %77
76
	movs r2, #0
	strh r2, [r5, #0xc]
77
	lsls r2, r6, #0x1b
	bpl %83
	ldrh r2, [r5, #0xe]
	adds r2, #1
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	strh r3, [r5, #0xe]
	str r3, [sp, #0x1c]
	movs r3, #0xf
	ldr r2, [r4, #0x7c]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	str r2, [sp, #0x18]
	lsls r2, r6, #0x19
	bpl %79
	ldrh r2, [r5, #8]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #8]
	ldr r3, [sp, #0x1c]
	cmp r3, r2
	blo %78
	movs r3, #0xf
	ldr r2, [sp, #0x18]
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	movs r2, #3
	strb r2, [r0, #8]
	b %80
78
	movs r3, #0xf
	ldr r2, [sp, #0x18]
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b %80
79
	movs r2, #0
	strh r2, [r5, #8]
80
	lsls r2, r6, #0x18
	bpl %82
	ldrh r2, [r5, #0xa]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r5, #0xa]
	ldr r3, [sp, #0x1c]
	cmp r3, r2
	ldr r2, [r4, #0x7c]
	bls %81
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	str r2, [r4, #0x7c]
	strb r7, [r0, #8]
	b %84
81
	movs r3, #0xf
	lsls r3, r3, #0x18
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r2, r2, r3
	str r2, [r4, #0x7c]
	movs r2, #0
	strb r2, [r0, #8]
	b %84
82
	movs r2, #0
	strh r2, [r5, #0xa]
	b %84
83
	movs r2, #0
	strh r2, [r5, #0xe]
84
	lsls r0, r6, #0x1f
	bpl %87
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %87
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne %87
	cmp r1, #0xb
	beq %87
	cmp r1, #0xa
	beq %87
	ldr r3, [sp, #0x38]
	cmp r3, #0
	beq %85
	movs r0, #0x32
	strh r0, [r4, #0x16]
	movs r0, #0x33
	strh r0, [r4, #0x12]
	movs r0, #0x34
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b %86
85
	movs r0, #0x4b
	strh r0, [r4, #0x16]
	movs r0, #0x4c
	strh r0, [r4, #0x12]
	movs r0, #0x4d
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
86
	movs r0, #1
	lsls r0, r0, #0x14
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x48]
	str r7, [r0, #0x1c]
	b %97
87
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [r4, #0x78]
	cmp r1, #0xb
	beq %97
	cmp r1, #0xa
	beq %97
	ldr r0, [sp, #0x48]
	movs r2, #0
	str r2, [r0, #0x1c]
	b %97
88
	cmp r1, #0xa
	beq %97
	cmp r1, #0xb
	beq %97
	cmp r1, #0xf
	beq %97
	lsls r0, r6, #0x16
	bpl %90
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1f
	bmi %89
	lsls r0, r6, #0x1f
	bpl %90
89
	mov r3, ip
	ldr r0, [r3, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne %90
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %90
	adds r0, r4, #0
	bl sub_801F906
90
	lsls r0, r6, #0x1f
	bpl %99
	ldr r3, _08020990
	ldr r0, [r3]
	adds r0, #0xc0
	ldr r0, [r0, #0x14]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bne %99
	lsls r0, r6, #0x16
	bmi %99
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %91
	ldr r0, _08020994
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne %92
91
	strh r7, [r5, #6]
92
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq %101
	ldrh r0, [r5, #6]
	cmp r0, #1
	bls %101
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x19
	bpl %93
	movs r2, #3
	str r2, [sp, #0x14]
	b %96
93
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	bpl %94
	movs r2, #1
	str r2, [sp, #0x14]
	b %96
94
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1a
	bpl %95
	movs r2, #2
	str r2, [sp, #0x14]
	b %96
95
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1b
	bpl %96
	movs r2, #0
	str r2, [sp, #0x14]
96
	ldr r0, [r4, #0x7c]
	ldr r2, [sp, #0x14]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	cmp r1, r2
	beq %101
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r2, [sp, #0x14]
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x7c]
	ldr r7, [sp, #0x40]
	ldr r1, [r7, #4]
	cmp r1, #0
	beq %101
	ldr r7, [sp, #0x40]
	lsls r0, r0, #4
	ldr r1, [r7, #0x34]
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r7, #0x34]
	ldr r1, [r7, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	b %98
97
	b %113
98
	str r1, [r7, #0x20]
	str r2, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	movs r2, #0xff
	ldr r1, [r7, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	lsls r0, r0, #0xb
	orrs r0, r1
	lsls r1, r0, #0x18
	str r0, [r7, #0x34]
	ldr r0, _08020998
	lsrs r1, r1, #0x18
	ldr r2, _0802099C
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r7, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r7, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r1, sp
	bl sub_803FF24
	b %100
99
	b %114
100
	ldr r0, [r7, #0x34]
	ldr r2, _080209A4
	lsls r1, r0, #0x18
	ldr r0, _080209A0
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r7, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r7, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r7, #0x34]
	ldr r1, _080209A8
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	ldrb r1, [r1, r2]
	b %102
101
	b %108
102
	cmp r1, #0
	beq %103
	lsls r1, r0, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b %104
103
	lsls r1, r0, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
104
	ldr r3, _080209AC
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq %105
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	adds r0, #1
	b %106
105
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	subs r0, #1
106
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	ldrb r2, [r0, #5]
	cmp r2, r1
	beq %107
	bl sub_80401C0
107
	ldr r0, [r7, #0x3c]
	ldrb r1, [r0, #5]
	ldr r2, [sp, #4]
	cmp r1, r2
	beq %108
	ldr r1, [sp, #4]
	bl sub_80401C0
108
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne %113
	ldrh r0, [r5, #6]
	cmp r0, #0xb4
	bls %109
	ldr r0, [sp, #0x40]
	movs r3, #0
	ldr r0, [r0]
	mvns r3, r3
	ldr r1, [r0, #4]
	movs r2, #1
	adds r7, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #0x40]
	bl __call_via_r7
	b %110
109
	cmp r0, #0x3c
	bls %110
	ldr r0, [sp, #0x40]
	movs r3, #0
	ldr r0, [r0]
	mvns r3, r3
	ldr r1, [r0, #4]
	movs r2, #0
	adds r7, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #0x40]
	bl __call_via_r7
110
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq %113
	ldr r0, _080209B0
	ldrb r0, [r0]
	cmp r0, #0
	beq %111
	movs r0, #0x41
	strh r0, [r4, #0xe]
	movs r0, #0x42
	strh r0, [r4, #0xa]
	movs r0, #0x43
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	b %112
111
	movs r0, #0x51
	strh r0, [r4, #0xe]
	movs r0, #0x52
	strh r0, [r4, #0xa]
	movs r0, #0x53
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
112
	ldrh r0, [r5, #6]
	ldr r7, [sp, #0x40]
	ldr r2, _080209B4
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	ands r1, r2
	orrs r0, r1
	str r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	movs r0, #6
	str r0, [r1, #0x1c]
113
	b %119
114
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq %119
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq %115
	adds r0, r4, #0
	bl sub_801F906
115
	ldr r7, [sp, #0x40]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq %118
	ldr r0, _080209B0
	ldrb r0, [r0]
	cmp r0, #0
	beq %116
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %117
116
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
117
	ldr r7, [sp, #0x40]
	ldr r0, [r7]
	ldr r1, [r0, #0x10]
	adds r1, r1, r0
	adds r0, r7, #0
	bl __call_via_r1
	movs r1, #1
	ldr r0, [r7, #0x34]
	lsls r1, r1, #0x13
	bics r0, r1
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x40]
	ldr r2, _080209B4
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r2
	str r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	movs r0, #4
	str r0, [r1, #0x1c]
118
	movs r2, #0
	strh r2, [r5, #6]
119
	lsls r0, r6, #0x17
	bpl %120
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne %120
	ldr r2, [sp, #8]
	cmp r2, #0
	beq %120
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	bne %121
	ldrh r0, [r5]
	movs r1, #0x4b
	lsls r1, r1, #3
	cmp r0, r1
	bls %121
	ldr r2, [sp, #0x44]
	movs r3, #0
	ldr r0, [r2]
	mvns r3, r3
	ldr r1, [r0, #4]
	ldr r2, [sp, #8]
	adds r6, r1, r0
	adds r2, r2, r3
	adds r1, r4, #0
	ldr r0, [sp, #0x44]
	bl __call_via_r6
	b %121
120
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq %121
	ldr r2, [sp, #0x44]
	ldr r0, [r2, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq %121
	ldr r0, [sp, #0x44]
	bl sub_802E3C6
121
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x1e
	bpl %127
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	beq %127
	cmp r0, #0xb
	beq %127
	ldr r1, _080209B0
	ldrb r1, [r1]
	cmp r1, #0
	beq %122
	ldr r0, _08020994
	movs r1, #0xae
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	cmp r1, #0xf
	bls %127
	ldr r2, _080209B8
	movs r3, #5
	ldr r2, [r2]
	lsls r3, r3, #8
	adds r3, r2, r3
	ldr r3, [r3, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x19
	lsls r3, r3, #2
	adds r2, r3, r2
	ldr r2, [r2, #0x20]
	ldr r3, [r2, #0x30]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	beq %127
	movs r3, #0x94
	ldr r3, [r3, r2]
	lsls r3, r3, #0x14
	bmi %127
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #5
	beq %127
	adds r0, r2, #0
	lsrs r1, r1, #4
	subs r1, #1
	bl sub_80333DC
	b %127
122
	ldr r1, [sp, #0x48]
	movs r3, #0x60
	ldr r1, [r1, #4]
	ldr r2, [r4, #0x7c]
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	lsls r2, r2, #4
	lsrs r2, r2, #0x1c
	subs r7, #0xf2
	movs r6, #0x5f
	cmp r7, r2
	bne %123
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	str r1, [r0]
	strh r6, [r4, #0xe]
	strh r3, [r4, #0xa]
	movs r0, #0x61
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r2, #0x3c]
	movs r0, #1
	lsls r0, r0, #0x16
	str r0, [r4, #0x78]
	b %130
123
	cmp r2, #1
	bne %125
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #0xfb
	beq %124
	cmp r7, #0xfd
	bne %125
124
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #5
	str r0, [r2, #0x3c]
	b %130
125
	strh r6, [r4, #0xe]
	strh r3, [r4, #0xa]
	movs r3, #0x61
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	cmp r1, #0xfc
	beq %126
	cmp r1, #0xfa
	bne %128
126
	cmp r2, #3
	bne %128
	movs r2, #0
	str r2, [r4, #0x78]
	b %129
127
	b %131
	ALIGN
_08020990 DCDU gUnknown_030034F8
_08020994 DCDU gPlayerEntity
_08020998 DCDU gUnknown_0805107A
_0802099C DCDU gUnknown_0805107E
_080209A0 DCDU gUnknown_08051082
_080209A4 DCDU gUnknown_08051086
_080209A8 DCDU gUnknown_08051072
_080209AC DCDU gUnknown_08051076
_080209B0 DCDU gUnknown_03003D20
_080209B4 DCDU 0xFFFE0001
_080209B8 DCDU gUnknown_03003458
128
	cmp r0, #0
	bne %129
	movs r0, #1
	lsls r0, r0, #0x16
	str r0, [r4, #0x78]
129
	ldr r2, [sp, #0x3c]
	ldr r0, [r2, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r2, #0x3c]
130
	ldr r1, [sp, #0x48]
	movs r0, #5
	str r0, [r1, #0x1c]
131
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r4, #0
	bl DefaultScriptGroups__0C
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %135
	ldrh r0, [r5, #2]
	movs r6, #0xff
	adds r6, #0x2d
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	cmp r0, r6
	strh r0, [r5, #2]
	bls %132
	movs r4, #1
132
	ldr r1, _08020DAC
	ldrb r1, [r1]
	cmp r1, #0
	beq %133
	bl sub_80406C4
	cmp r0, #0
	bne %133
	ldr r0, [sp, #0x44]
	adds r0, #0x30
	ldrb r0, [r0, #0xe]
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, _08020DB0
	asrs r1, r1, #0x18
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
133
	ldr r0, _08020DB0
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq %134
	ldr r0, [sp, #0x44]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #0x44]
	bl __call_via_r1
	cmp r4, #0
	beq %135
134
	ldr r0, [sp, #0x44]
	bl sub_802E3C6
	movs r2, #0
	strh r2, [r5, #2]
	strh r6, [r5]
135
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %136
	ldr r0, [sp, #0x40]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #0x40]
	bl __call_via_r1
136
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_8020A74
sub_8020A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0xa0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %137
	adds r0, r4, #0
	bl sub_802E3C6
	ldr r0, [r4]
	ldr r1, [r0, #0x10]
	adds r1, r1, r0
	adds r0, r4, #0
	bl __call_via_r1
137
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	mvns r3, r3
	adds r6, r1, r0
	adds r1, r5, #0
	movs r2, #4
	adds r0, r4, #0
	bl __call_via_r6
	movs r0, #0
	adds r5, #0xff
	adds r5, #0x41
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8020AB6
sub_8020AB6
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC
	ldrb r0, [r0]
	cmp r0, #0
	beq %138
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %139
138
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
139
	movs r0, #4
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	lsls r2, r2, #0x15
	bics r1, r2
	str r1, [r0, #0x3c]
	movs r0, #5
	lsls r0, r0, #0xe
	str r0, [r4, #0x70]
	movs r1, #0
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq %140
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %140
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08020DB4
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, [r4, #0x30]
	bl sub_803FC14
140
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8020B50
sub_8020B50
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldr r2, [r1, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [r0, #0x5c]
	str r2, [r0, #0x58]
	b sub_8020AB6

	thumb_func_start sub_8020B60
sub_8020B60
	ldr r0, [r0, #0x2c]
	movs r1, #1
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	subs r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start sub_8020B6E
sub_8020B6E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08020DAC
	ldr r6, _08020DB8
	ldrb r0, [r0]
	cmp r0, #0
	beq %141
	ldr r0, [r6]
	ldr r0, [r0, #8]
	bl sub_80406C4
	cmp r0, #0
	bne %141
	ldr r0, _08020DB0
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
141
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #0xe
	bhs %142
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
142
	b %162
	ALIGN
143
	DCB 0x42, 0x03
144
	DCB 0x0F, 0x00
145
	DCB 0x53, 0x00
146
	DCB 0x0F, 0x00
147
	DCB 0x42, 0x03
148
	DCB 0x90, 0x01
149
	DCB 0x8D, 0x00
150
	DCB 0x42, 0x03
151
	DCB 0x42, 0x03
152
	DCB 0x42, 0x03
153
	DCB 0xBA, 0x00
154
	DCB 0x09, 0x01
155
	DCB 0x42, 0x03
156
	DCB 0x3E, 0x01
loc_8020bc8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %157
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %157
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
157
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %158
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
158
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %159
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %162
	adds r0, r4, #0
	bl sub_801F906
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %162
159
	movs r0, #4
	str r0, [r5, #0x1c]
	b %162
loc_8020c50
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %160
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %160
	bl sub_8000914
160
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %161
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
161
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %163
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %162
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
162
	b %169
163
	movs r0, #4
	str r0, [r5, #0x1c]
	b %169
loc_8020cc4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %164
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
164
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %165
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
165
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %169
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	b %169
loc_8020d1e
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	cmp r1, #2
	beq %166
	lsrs r0, r0, #0x1c
	bne %170
166
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x71
	beq %167
	movs r2, #0
	movs r1, #0x71
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %167
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
167
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %168
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
168
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %169
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %169
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
169
	b %177
170
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x41
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	movs r0, #0x98
	strb r1, [r0, r4]
	str r1, [r4, #0x78]
	b %177
	ALIGN
_08020DAC DCDU gUnknown_03003D20
_08020DB0 DCDU gPlayerEntity
_08020DB4 DCDU gUnknown_03003EB8
_08020DB8 DCDU gUnknown_03003E98

loc_8020dbc
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x47
	beq %171
	movs r2, #0
	movs r1, #0x47
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %171
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
171
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r5, r0
	beq %172
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
172
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %177
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %177
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %177
loc_8020e26
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %173
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %173
	bl sub_8000914
173
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r4, #0
	bl sub_803FAB8
	cmp r6, r0
	beq %174
	adds r0, r4, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
174
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %177
	ldr r0, _0802123C
	ldrb r0, [r0]
	cmp r0, #0
	beq %175
	movs r0, #0x38
	strh r0, [r4, #0xe]
	movs r0, #0x39
	strh r0, [r4, #0xa]
	movs r0, #0x3a
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x3e
	strh r0, [r4, #0x1e]
	movs r0, #0x3f
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %176
175
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
176
	movs r0, #4
	str r0, [r5, #0x1c]
177
	b %191
loc_8020eca
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bhs %178
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
178
	b %191
179
	DCB 0x09, 0x00
180
	DCB 0x4E, 0x00
181
	DCB 0xB2, 0x00
182
	DCB 0xA5, 0x01
183
	DCB 0xE2, 0x00
184
	DCB 0x3D, 0x01
185
	DCB 0x78, 0x01
186
	DCB 0xA5, 0x01
187
	DCB 0xA5, 0x01
loc_8020ef6
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0xa
	bmi %189
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %188
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
188
	ldr r0, _08021240
	ldr r1, [r6]
	ldr r0, [r0]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	adds r1, #0x55
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	movs r1, #0xff
	ldr r0, [r5, #0x3c]
	adds r1, #0xf1
	bics r0, r1
	ldr r1, [r4, #0x70]
	adds r0, #0x50
	str r1, [r4, #0x74]
	movs r1, #0
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #0x3c]
189
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #1
	bne %191
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #0x74]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r1, [r4, #0x70]
	movs r1, #1
	adds r0, #1
	lsls r1, r1, #0x15
	bics r0, r1
	str r0, [r5, #0x3c]
	b %191
loc_8020f80
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	cmp r0, #0xa
	bne %190
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #2
	str r1, [r0, #0x3c]
	movs r0, #0
	str r0, [r4, #0x70]
	b %191
190
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	adds r6, r4, #0
	adds r6, #0xff
	adds r6, #1
	ldr r1, [r6, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	bls %191
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne %191
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne %191
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfc
	bne %192
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	bics r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0x15
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %191
	movs r1, #0
	bl sub_80401E4
191
	b %193
192
	cmp r0, #0xfa
	bne %193
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsrs r0, r0, #4
	lsls r0, r0, #4
	adds r0, #6
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r6, #0x3c]
	ldr r0, [r4, #0x5c]
	movs r1, #0xd
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %193
	movs r1, #0
	bl sub_80401E4
	b %193
loc_8021048
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %193
	ldr r0, [r4, #0x30]
	movs r6, #4
	ldr r1, [r0]
	bics r1, r6
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	str r1, [r0, #0x3c]
	str r6, [r5, #0x1c]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	movs r0, #0
	str r0, [r4, #0x78]
193
	b %199
loc_80210a8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5b
	beq %196
	movs r2, #0
	movs r1, #0x5b
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %194
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
194
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021244
	cmp r0, r1
	beq %195
	ldr r0, [r4, #0x30]
	bl sub_800065C
195
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %196
	movs r1, #1
	bl sub_80401E4
196
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %199
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	lsls r2, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x5c]
	subs r0, r0, r2
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r2, [r0, #0x3c]
	lsrs r2, r2, #4
	lsls r2, r2, #4
	str r2, [r0, #0x3c]
	str r1, [r5, #0x1c]
	b %199
loc_802115e
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	beq %198
	movs r2, #0
	movs r1, #0x5a
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %197
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
197
	ldr r0, _08021240
	ldr r1, [r0]
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	movs r0, #0
	str r0, [r4, #0x70]
198
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %199
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #6
	lsls r2, r2, #9
	orrs r1, r2
	str r1, [r0, #0x3c]
199
	b %202
loc_80211d4
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x56
	beq %201
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x5a
	bne %201
	movs r2, #0
	movs r1, #0x56
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	movs r0, #0xff
	adds r0, #0x3d
	ldr r0, [r0, r4]
	lsls r0, r0, #0x16
	bpl %200
	movs r1, #1
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #0x14
	adds r0, r0, r1
	str r0, [r4, #0x5c]
200
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %201
	movs r1, #0
	bl sub_80401E4
201
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %202
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
202
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0802123C DCDU gUnknown_03003D20
_08021240 DCDU gUnknown_0300345C
_08021244 DCDU 0x000011EF
	END
