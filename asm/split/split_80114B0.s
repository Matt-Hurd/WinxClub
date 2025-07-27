    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03002D28
	IMPORT gUnknown_03002D2C
	IMPORT gUnknown_03002D48
	IMPORT gUnknown_03002D74
	IMPORT gUnknown_03002DAC
	IMPORT gUnknown_03002DE4
	IMPORT gUnknown_030034FC
	IMPORT gUnknown_03003670
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT __call_via_r2
	IMPORT CpuSet
	IMPORT Div

	thumb_func_start sub_80114B0
sub_80114B0 ;@ 0x080114B0
	push {r3, r4}
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	ldr r2, _0801172C ;@ =gUnknown_03002D28
	mov r4, sp
	str r2, [r3, #8]
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011734 ;@ =0x040000D4
	str r4, [r2]
	ldr r4, _08011730 ;@ =gUnknown_030034FC
	adds r4, #0x24
	str r4, [r2, #4]
	ldr r4, _08011738 ;@ =0x85000008
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _0801173C ;@ =gUnknown_03003BC8
	str r4, [r2, #4]
	ldr r4, _08011740 ;@ =0x8500001A
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _08011730 ;@ =gUnknown_030034FC
	adds r4, #0x1c
	str r4, [r2, #4]
	ldr r4, _08011744 ;@ =0x85000002
	str r4, [r2, #8]
	ldr r2, [r2, #8]
	stm r3!, {r0, r1}
	pop {r3, r4}
	bx lr

	non_word_aligned_thumb_func_start sub_80114FA
sub_80114FA ;@ 0x080114FA
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _08011730 ;@ =gUnknown_030034FC
	adds r1, r0, #0
	adds r7, #0x24
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _0801155C
	movs r0, #0x1f
	ldrb r0, [r0, r7]
	movs r4, #1
	lsls r4, r4, #9
	cmp r0, #2
	bls _08011516
	lsls r4, r0, #8
_08011516
	cmp r1, #0
	bne _0801151C
	lsrs r1, r4, #5
_0801151C
	lsls r0, r4, #4
	bl Div
	subs r1, r4, r0
	lsrs r5, r1, #1
	adds r6, r5, r0
	subs r4, #1
	bmi _0801155C
	subs r0, r6, r5
	str r0, [sp]
_08011530
	cmp r4, r5
	bge _0801153C
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	strb r1, [r0, r4]
	b _08011558
_0801153C
	cmp r4, r6
	blt _08011548
	ldr r0, [r7, #0x14]
	movs r1, #0x7f
	strb r1, [r0, r4]
	b _08011558
_08011548
	subs r0, r4, r5
	lsls r0, r0, #8
	ldr r1, [sp]
	bl Div
	ldr r1, [r7, #0x14]
	adds r0, #0x80
	strb r0, [r1, r4]
_08011558
	subs r4, #1
	bpl _08011530
_0801155C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011562
sub_8011562 ;@ 0x08011562
	ldr r0, _08011748 ;@ =0x04000080
	movs r1, #0
	strh r1, [r0, #4]
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	adds r2, #0x24
	ldrh r0, [r2, #0x10]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r2, #0x10]
	ldr r0, _0801172C ;@ =gUnknown_03002D28
	subs r2, #0x24
	str r0, [r2, #8]
	ldr r0, _0801174C ;@ =0x04000100
	str r1, [r0]
	ldr r0, _08011750 ;@ =0x040000C0
	ldr r1, [r0, #4]
	cmp r1, #0
	bge _08011594
	ldr r1, _08011754 ;@ =0x84400004
	str r1, [r0, #4]
	mov r8, r8
	mov r8, r8
	movs r1, #0x11
	lsls r1, r1, #6
	strh r1, [r0, #6]
_08011594
	bx lr

	non_word_aligned_thumb_func_start sub_8011596
sub_8011596 ;@ 0x08011596
	push {r4, r5, r6, r7}
	ldr r5, _08011730 ;@ =gUnknown_030034FC
	adds r5, #0x34
	ldrb r2, [r5, #0xf]
	cmp r0, #0xe
	bls _080115A6
	movs r0, #0xe
	b _080115CA
_080115A6
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	ldrb r1, [r5, #0xe]
	adds r3, #0x24
	cmp r1, r0
	bls _080115CA
	ldrh r6, [r3, #0x12]
	adds r1, r2, r0
	cmp r6, r1
	bls _080115CA
	ldr r7, _08011758 ;@ =gUnknown_030037A0
	movs r4, #1
_080115BC
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r7
	adds r1, #1
	cmp r6, r1
	strh r4, [r3, #4]
	bhi _080115BC
_080115CA
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	movs r1, #0xe
	subs r1, r1, r2
	adds r3, #0x24
	cmp r1, r0
	bhs _080115D8
	adds r0, r1, #0
_080115D8
	strb r0, [r5, #0xe]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x12]
	bne _080115E8
	pop {r4, r5, r6, r7}
	b sub_8011562
_080115E8
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_80115EC
sub_80115EC ;@ 0x080115EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08011730 ;@ =gUnknown_030034FC
	adds r4, r0, #0
	adds r6, #0x24
	adds r5, r6, #0
	adds r5, #0x10
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	ldrb r2, [r0, #0xe]
	ldr r7, _08011758 ;@ =gUnknown_030037A0
	cmp r1, r4
	bls _08011646
	cmp r2, #0
	beq _0801162A
	movs r3, #0x4c
	muls r1, r3
	ldr r0, _08011734 ;@ =0x040000D4
	adds r1, r1, r7
	str r1, [r0]
	adds r1, r4, #0
	muls r1, r3
	adds r1, r1, r7
	str r1, [r0, #4]
	ldrb r1, [r5, #0xe]
	movs r2, #0x21
	muls r1, r3
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0801162A
	ldrb r0, [r5, #0xe]
	ldrh r2, [r6, #0x12]
	adds r0, r0, r4
	cmp r2, r0
	bls _0801167C
	movs r1, #1
_08011636
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r7
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi _08011636
	b _0801167C
_08011646
	cmp r1, r4
	bhs _0801167C
	cmp r4, #7
	bls _08011650
	movs r4, #7
_08011650
	movs r0, #0xe
	subs r0, r0, r4
	cmp r2, r0
	bhs _0801165A
	adds r0, r2, #0
_0801165A
	movs r3, #0x4c
	adds r1, r1, r0
	adds r2, r4, r0
	muls r1, r3
	adds r1, r1, r7
	muls r2, r3
	adds r2, r2, r7
	muls r3, r0
	beq _08011678
_0801166C
	subs r1, #4
	ldr r7, [r1]
	subs r2, #4
	str r7, [r2]
	subs r3, #4
	bne _0801166C
_08011678
	bl sub_8011596
_0801167C
	strb r4, [r5, #0xf]
	ldrb r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r6, #0x12]
	cmp r4, #0
	beq _080116CC
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	movs r2, #1
	subs r0, r0, r1
	lsls r0, r0, #1
	lsls r2, r2, #9
	cmp r4, #2
	bls _0801169A
	lsls r2, r4, #8
_0801169A
	adds r4, r2, #0
	cmp r0, r2
	beq _080116C0
	ldr r5, _08011730 ;@ =gUnknown_030034FC
	cmp r1, #0
	beq _080116AE
	movs r0, #0
	ldr r2, [r5, #4]
	bl __call_via_r2
_080116AE
	adds r1, r4, #0
	movs r0, #0
	ldr r2, [r5]
	bl __call_via_r2
	lsrs r1, r4, #1
	str r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #8]
_080116C0
	ldrh r0, [r6, #0x1c]
	bl sub_80114FA
_080116C6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080116CC
	ldr r1, _0801173C ;@ =gUnknown_03003BC8
	movs r0, #0
	strh r0, [r1]
	b _080116C6

	thumb_func_start sub_80116D4
sub_80116D4 ;@ 0x080116D4
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	push {r3, r4, r5, lr}
	adds r2, #0x34
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _080116F2
	ldr r4, _08011758 ;@ =gUnknown_030037A0
	movs r1, #1
_080116E4
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	strh r1, [r3, #4]
	cmp r0, #0
	bne _080116E4
_080116F2
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _080116FC
	bl sub_8011562
_080116FC
	movs r0, #0
	bl sub_80115EC
	ldr r5, _0801173C ;@ =gUnknown_03003BC8
	movs r4, #0
	strh r4, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq _08011714
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x12]
_08011714
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _08011726
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	movs r0, #2
	ldr r2, [r2, #4]
	bl __call_via_r2
	str r4, [r5, #0x24]
_08011726
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801172C DCDU gUnknown_03002D28
_08011730 DCDU gUnknown_030034FC
_08011734 DCDU 0x040000D4
_08011738 DCDU 0x85000008
_0801173C DCDU gUnknown_03003BC8
_08011740 DCDU 0x8500001A
_08011744 DCDU 0x85000002
_08011748 DCDU 0x04000080
_0801174C DCDU 0x04000100
_08011750 DCDU 0x040000C0
_08011754 DCDU 0x84400004
_08011758 DCDU gUnknown_030037A0

	thumb_func_start sub_801175C
sub_801175C ;@ 0x0801175C
	push {r3, r4, r5, lr}
	bl sub_8011562
	bl sub_80116D4
	ldr r5, _08011A10 ;@ =gUnknown_03003BC8
	ldr r4, _08011A14 ;@ =gUnknown_030034FC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0801177A
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r4, #4]
	bl __call_via_r2
_0801177A
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0801178A
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r4, #4]
	bl __call_via_r2
_0801178A
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0801179E
	adds r1, r0, #0
	movs r0, #0
	ldr r2, [r4, #4]
	bl __call_via_r2
_0801179E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80117A4
sub_80117A4 ;@ 0x080117A4
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_80117B0
sub_80117B0 ;@ 0x080117B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _08011A18 ;@ =0x000046ED
	adds r4, r0, #0
	cmp r0, r2
	bls _080117BC
	adds r4, r2, #0
_080117BC
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08011A1C ;@ =0x00001666
	adds r1, #0x24
	strh r0, [r1, #0x18]
	cmp r4, r3
	beq _08011820
	ldr r3, _08011A20 ;@ =0x00002910
	cmp r4, r3
	beq _0801182A
	ldr r3, _08011A24 ;@ =0x00003442
	cmp r4, r3
	beq _08011834
	cmp r4, r2
	bne _080117E8
	movs r2, #0xe7
	lsls r2, r2, #2
	strh r2, [r1, #0x1a]
	movs r2, #0xff
	adds r2, #0x31
	str r2, [r1, #0xc]
_080117E8
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r1, #0x24
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1f
	bpl _08011892
	ldr r6, _08011A10 ;@ =gUnknown_03003BC8
	ldr r5, _08011A14 ;@ =gUnknown_030034FC
	ldrh r1, [r6]
	adds r5, #0x34
	ldr r7, _08011A28 ;@ =gUnknown_030037A0
	lsls r1, r1, #0x1f
	cmp r1, #0
	bge _08011850
	ldrb r1, [r6, #0xb]
	ldr r3, _08011A2C ;@ =0x00333333
	adds r4, r7, #0
	muls r1, r3
	lsrs r1, r1, #0x17
	bl Div
	strh r0, [r6, #0xe]
	movs r0, #0
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _08011850
	movs r2, #8
	b _0801183E
_08011820
	ldr r2, _08011A30 ;@ =0x00000B6E
	strh r2, [r1, #0x1a]
	movs r2, #0x60
	str r2, [r1, #0xc]
	b _080117E8
_0801182A
	ldr r2, _08011A34 ;@ =0x0000063C
	strh r2, [r1, #0x1a]
	movs r2, #0xb0
	str r2, [r1, #0xc]
	b _080117E8
_08011834
	ldr r2, _08011A38 ;@ =0x000004E6
	strh r2, [r1, #0x1a]
	movs r2, #0xe0
	str r2, [r1, #0xc]
	b _080117E8
_0801183E
	ldrh r1, [r4, #4]
	lsls r3, r1, #0x1f
	bmi _08011848
	orrs r1, r2
	strh r1, [r4, #4]
_08011848
	subs r0, #1
	adds r4, #0x4c
	cmp r0, #0
	bne _0801183E
_08011850
	ldrb r1, [r5, #0xf]
	movs r3, #0x4c
	ldrb r2, [r5, #0xe]
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	muls r1, r3
	adds r1, r1, r7
	adds r0, #0x24
	cmp r2, #0
	beq _0801187A
	ldrh r4, [r0, #0x1a]
_08011864
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi _08011872
	ldr r3, [r1, #0x14]
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x44]
_08011872
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _08011864
_0801187A
	ldrh r1, [r0, #0x18]
	movs r0, #1
	lsls r0, r0, #0x18
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C ;@ =0x04000100
	str r0, [r1]
_08011892
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8011898
sub_8011898 ;@ 0x08011898
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08011A40 ;@ =0x04000200
	ldrh r2, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r1, #0x24
	ldrh r4, [r1, #0x10]
	lsls r0, r4, #0x1f
	bpl _080118EA
	ldr r0, _08011A44 ;@ =0x040000C0
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bge _080118BE
	ldr r3, _08011A48 ;@ =0x84400004
	str r3, [r0, #0x10]
	movs r3, #0x11
	lsls r3, r3, #6
	strh r3, [r0, #0x12]
_080118BE
	ldr r0, _08011A4C ;@ =0x00000B0C
	ldr r3, _08011A50 ;@ =0x04000080
	strh r0, [r3, #2]
	ldr r0, _08011A54 ;@ =gUnknown_03002D2C
	ldr r3, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r3, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	beq _080118EA
	ldr r5, _08011A28 ;@ =gUnknown_030037A0
_080118D2
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r6, r3, r5
	ldrh r3, [r6, #4]
	lsls r7, r3, #0x1f
	bmi _080118E6
	movs r7, #0x10
	orrs r3, r7
	strh r3, [r6, #4]
_080118E6
	cmp r0, #0
	bne _080118D2
_080118EA
	ldr r0, _08011A58 ;@ =gUnknown_03002DE4
	ldr r3, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r3, #0x10]
	ldr r0, _08011A5C ;@ =gUnknown_03002D74
	str r0, [r3, #0x14]
	ldr r0, _08011A60 ;@ =gUnknown_03002DAC
	str r0, [r3, #0x18]
	ldr r0, _08011A64 ;@ =gUnknown_03002D48
	str r0, [r3, #0xc]
	ldr r0, _08011A40 ;@ =0x04000200
	strh r2, [r0, #8]
	movs r0, #0
	orrs r0, r4
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x1c]
	bl sub_80114FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011912
sub_8011912 ;@ 0x08011912
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	bl sub_8011562
	movs r0, #0xd
	ldr r2, _08011A28 ;@ =gUnknown_030037A0
	movs r1, #1
_08011924
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	strh r1, [r3, #4]
	subs r0, #1
	bpl _08011924
	movs r0, #1
	ldr r1, _08011A50 ;@ =0x04000080
	lsls r0, r0, #9
	strh r0, [r1, #8]
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_8011898
	adds r0, r6, #0
	bl sub_80117B0
	movs r0, #4
	bl sub_80115EC
	movs r0, #0
	bl sub_80115EC
	movs r0, #0xff
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #1
	adds r1, #0x1c
	str r0, [r1, #4]
	ldr r1, _08011A10 ;@ =gUnknown_03003BC8
	strh r0, [r1, #0x16]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801196A
sub_801196A ;@ 0x0801196A
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	push {r3, lr}
	adds r1, #0x24
	strh r0, [r1, #0x1c]
	bl sub_80114FA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_801197C
sub_801197C ;@ 0x0801197C
	push {r3, r4, r5, lr}
	ldr r4, _08011A14 ;@ =gUnknown_030034FC
	adds r4, #0x24
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x1f
	bmi _08011A0A
	movs r0, #0
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68 ;@ =0x0500004C
	adds r1, #0x44
	bl CpuSet
	movs r0, #0
	ldr r5, _08011A6C ;@ =gUnknown_03003670
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68 ;@ =0x0500004C
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	movs r2, #1
	adds r0, #0x44
	str r0, [r4, #4]
	ldrh r0, [r4, #0x10]
	ldr r3, _08011A70 ;@ =0x04000083
	adds r1, r4, #0
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrb r0, [r3]
	movs r2, #8
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	subs r4, r3, #3
_080119C6
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r2, [r5, r2]
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r2, [r4, #0x20]
	blo _080119C6
	ldr r0, _08011A74 ;@ =0x040000BC
	adds r5, #0x20
	str r5, [r0]
	ldr r2, _08011A78 ;@ =0x040000A0
	str r2, [r0, #4]
	ldr r2, _08011A7C ;@ =0xB6400004
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r1, [r1, #0x18]
	lsls r0, r2, #0x16
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C ;@ =0x04000100
	str r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r0, _08011A4C ;@ =0x00000B0C
	strh r0, [r4, #2]
	ldr r0, _08011A54 ;@ =gUnknown_03002D2C
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r1, #8]
_08011A0A
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08011A10 DCDU gUnknown_03003BC8
_08011A14 DCDU gUnknown_030034FC
_08011A18 DCDU 0x000046ED
_08011A1C DCDU 0x00001666
_08011A20 DCDU 0x00002910
_08011A24 DCDU 0x00003442
_08011A28 DCDU gUnknown_030037A0
_08011A2C DCDU 0x00333333
_08011A30 DCDU 0x00000B6E
_08011A34 DCDU 0x0000063C
_08011A38 DCDU 0x000004E6
_08011A3C DCDU 0x04000100
_08011A40 DCDU 0x04000200
_08011A44 DCDU 0x040000C0
_08011A48 DCDU 0x84400004
_08011A4C DCDU 0x00000B0C
_08011A50 DCDU 0x04000080
_08011A54 DCDU gUnknown_03002D2C
_08011A58 DCDU gUnknown_03002DE4
_08011A5C DCDU gUnknown_03002D74
_08011A60 DCDU gUnknown_03002DAC
_08011A64 DCDU gUnknown_03002D48
_08011A68 DCDU 0x0500004C
_08011A6C DCDU gUnknown_03003670
_08011A70 DCDU 0x04000083
_08011A74 DCDU 0x040000BC
_08011A78 DCDU 0x040000A0
_08011A7C DCDU 0xB6400004
	END