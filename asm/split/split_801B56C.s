	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08050C54
	IMPORT gUnknown_08050E84
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_8017620
	IMPORT sub_8017862
	IMPORT sub_8017884
	IMPORT sub_8028A7C
	IMPORT sub_802EF0A
	IMPORT sub_803FC68
	IMPORT sub_803FD5C
	IMPORT sub_803FEF8
	IMPORT sub_803FF24

	thumb_func_start sub_801B56C

sub_801B56C
	push {r4, r5, r6, r7, lr}
	movs r7, #0x16
	ldr r6, _0801B87C
	adds r4, r0, #0
	movs r5, #1
	sub sp, #0x4c
13
	ldr r0, [r6]
	adds r2, r7, #0
	adds r0, #0x90
	ldrb r0, [r0]
	subs r2, #0x16
	adds r1, r5, #0
	cmp r0, r2
	beq %14
	movs r1, #0
14
	adds r0, r7, #0
	bl sub_803FEF8
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #0x32
	blo %13
	ldr r0, _0801B880
	ldrb r1, [r0]
	ldr r0, _0801B884
	cmp r1, #0
	beq %15
	movs r2, #1
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
	b %16
15
	ldr r1, [r6]
	ldr r2, _0801B888
	adds r1, #0x90
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	ldr r0, [r0]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	movs r1, #1
	bl sub_8028A7C
16
	ldr r0, _0801B88C
	movs r2, #3
	ldr r0, [r0]
	lsls r2, r2, #9
	adds r1, r0, #4
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	ldr r3, _0801B890
	adds r7, r1, #0
	adds r7, #0x10
	movs r2, #1
	add r1, pc, #0x2B4
	bl sub_803FC68
	movs r2, #0
	ldr r6, _0801B87C
	str r2, [sp]
	adds r5, r0, #0
	ldr r0, [r6]
	ldr r2, _0801B8AC
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r2, r0]
	ldr r0, _0801B88C
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C
	lsls r6, r5, #2
	ldr r0, [r0]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %18
17
	ldr r0, _0801B88C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %17
18
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C
	adds r2, r5, #0
	movs r3, #1
	movs r1, #0xcf
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %20
19
	ldr r0, _0801B88C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %19
20
	ldr r0, _0801B87C
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801B8AC
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq %22
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %22
21
	ldr r0, _0801B88C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %21
22
	ldr r0, _0801B88C
	ldr r1, [r0]
	lsls r0, r5, #1
	str r1, [sp, #0x48]
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	bl sub_8017862
	ldr r1, [sp, #0x48]
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r6, r1
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r0, _0801B88C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B8B0
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _0801B870
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	ldr r0, _0801B888
	add r5, sp, #0x30
	adds r0, #0x38
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	ldr r0, _0801B87C
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0x1c
	bhs %51
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
23
	DCB 0x0D
24
	DCB 0x0D
25
	DCB 0x0D
26
	DCB 0x0F
27
	DCB 0x0F
28
	DCB 0x0F
29
	DCB 0x0F
30
	DCB 0x11
31
	DCB 0x11
32
	DCB 0x11
33
	DCB 0x11
34
	DCB 0x11
35
	DCB 0x13
36
	DCB 0x13
37
	DCB 0x13
38
	DCB 0x13
39
	DCB 0x13
40
	DCB 0x13
41
	DCB 0x15
42
	DCB 0x15
43
	DCB 0x15
44
	DCB 0x15
45
	DCB 0x17
46
	DCB 0x17
47
	DCB 0x17
48
	DCB 0x17
49
	DCB 0x17
50
	DCB 0x17
loc_801b75c
	movs r5, #0
	b %51
loc_801b760
	movs r5, #5
	b %51
loc_801b764
	movs r5, #1
	b %51
loc_801b768
	movs r5, #6
	b %51
loc_801b76c
	movs r5, #3
	b %51
loc_801b770
	movs r5, #2
51
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801B8B4
	lsls r1, r5, #2
	add r2, sp, #0x30
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, _0801B87C
	add r3, sp, #0
	strb r6, [r3, #0x14]
	ldr r0, [r0]
	ldr r1, _0801B888
	adds r0, #0x90
	ldrb r0, [r0]
	adds r1, #0xca
	lsls r0, r0, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	b %53
52
	add r3, sp, #0
	ldrb r1, [r3, #0x14]
	adds r0, #1
	adds r1, #1
	strb r1, [r3, #0x14]
	cmp r0, #4
	bhs %54
53
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	bne %52
54
	ldr r5, _0801B870
	add r1, sp, #4
	ldr r0, [r5]
	bl sub_800D9E0
	movs r3, #6
	ldrsh r2, [r7, r3]
	movs r3, #4
	str r2, [sp]
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r2, [r7, r3]
	movs r3, #0
	ldrsh r1, [r7, r3]
	adds r3, r0, #0
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_803FD5C
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x20]
	ldr r0, [r1, #0x30]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp, #0x44]
	ldr r1, [r1, #4]
	str r1, [sp, #0x48]
	add r1, sp, #0x44
	bl sub_803FF24
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xff
	adds r2, #1
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r3, #0
	str r3, [r4, #8]
	str r6, [r4, #4]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	strh r3, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x10
	movs r7, #6
	strb r7, [r3, #0xe]
	ldr r7, _0801B87C
	ldr r7, [r7]
	adds r7, #0x90
	ldrb r7, [r7]
	cmp r7, #0xa
	beq %57
	bgt %56
	cmp r7, #3
	beq %58
	cmp r7, #4
	beq %59
	cmp r7, #5
	beq %60
	cmp r7, #6
	bne %61
	ldr r0, _0801B8B8
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, r6, #0
	b %55
	ALIGN

	ALIGN
_0801B870 DCDU gUnknown_03003450
_0801B87C DCDU gPlayerEntity
_0801B880 DCDU gUnknown_03003D20
_0801B884 DCDU gUnknown_0300345C
_0801B888 DCDU gUnknown_08050E84
_0801B88C DCDU gUnknown_03003454
_0801B890 DCDU 0x00002EE0
_0801B8AC DCDU gUnknown_08050C54
_0801B8B0 DCDU gUnknown_03003468
_0801B8B4 DCDU gUnknown_03003EA8
_0801B8B8 DCDU REG_BG0CNT

	END
