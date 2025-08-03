	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_0803EEC4
	IMPORT gUnknown_0804A934
	IMPORT gUnknown_0804A948
	IMPORT gUnknown_0804AA38
	IMPORT gUnknown_0804AA48
	IMPORT gUnknown_0804AA58
	IMPORT __rt_memcpy
	IMPORT sub_803DB3C
	IMPORT sub_803DCE4
	IMPORT sub_803DEF8
	IMPORT maybeMallocEWRAM
	IMPORT sub_800802E
	IMPORT sub_800805E
	IMPORT sub_803DA18
	IMPORT sub_800808E
	IMPORT sub_80081B6
	IMPORT sub_803F4CC

	arm_func_start sub_80081D4
sub_80081D4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _080081F8
	mov r0, #0x54
	bl maybeMallocEWRAM
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_080081F8
	mov r0, r4
	bl sub_800802E
	LDR r0, _08008AD8
	STR r0, [r4]
	mov r0, #5
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x44]
	STR r0, [r4, #0x48]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start nullsub_28
nullsub_28
	bx lr

	arm_func_start sub_800822C
sub_800822C
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08008AD8
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_800805E
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803DA18
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008264
sub_8008264
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r0, [r5]
	add r1, r0, #4
	add r0, r4, #0x20
	bl sub_80081B6
	mov r0, #0
	STR r0, [r4, #0x4c]
	STR r0, [r4, #0x50]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008298
sub_8008298
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r7, r4, #0x20
	LDR sl, _08008AE0
	LDR sb, _08008ADC
	add r8, r0, r1
	b _08008418
_080082B8
	LDR r1, [r4, #0x24]
	cmp r1, #0xf
	bhs _080082EC
	add r2, r0, #2
	STR r2, [r4, #0x28]
	ldrh r0, [r0]
	rsb r2, r1, #0x10
	MOV r0, r0, LSL r2
	LDR r2, [r4, #0x20]
	orr r0, r0, r2
	STR r0, [r4, #0x20]
	add r0, r1, #0x10
	STR r0, [r4, #0x24]
_080082EC
	LDR r2, [r4, #0x20]
	LDR r1, [r4, #0x2c]
	MOV r0, r2, LSR #0x17
	add r0, r1, r0, lsl #1
	ldrh r1, [r0]
	LDR r3, [r4, #0x24]
	MOV r1, r1, LSR #9
	sub r3, r3, r1
	MOV r1, r2, LSL r1
	add r2, r4, #0x20
	STMIA r2, {r1, r3}
	ldrh r0, [r0]
	bic r1, r0, #0xfe00
	cmp r1, #0x100
	blo _080083E8
	subs r0, r1, #0x100
	moveq r0, #0
	STREQ r0, [r4, #0x4c]
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	add r0, sb, r0, lsl #3
	ldrh r5, [r0, #4]
	ldrh r1, [r0, #6]
	cmp r1, #0
	beq _0800835C
	mov r0, r7
	bl sub_803F4CC
	add r5, r0, r5
_0800835C
	mov r1, #5
	mov r0, r7
	bl sub_803F4CC
	add r0, sb, r0, lsl #3
	ldrh r6, [r0]
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _08008388
	mov r0, r7
	bl sub_803F4CC
	add r6, r0, r6
_08008388
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	sub r0, r0, r6
	and r2, r0, r1
	subs r0, r5, #1
	blo _08008418
_080083AC
	LDR r1, [r4, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r4, #0xc]
	subs r0, r0, #1
	add lr, r2, #1
	STR lr, [r4, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r4, #0x10]
	LDR r2, [r4, #0xc]
	and r2, r2, r1
	STR r2, [r4, #0xc]
	and r2, r1, r3
	bhs _080083AC
	b _08008418
_080083E8
	LDR r0, [r4, #0xc]
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
_08008418
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	LDR r0, [sl]
	cmp r0, #0
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxne lr
	LDR r0, [r4, #0x28]
	cmp r0, r8
	blo _080082B8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start sub_800844C
sub_800844C
	STMFD SP!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x280
	mov r1, #7
	STR r1, [r0, #4]
	mov r1, #9
	STR r1, [r0, #8]
	mov r1, #0
	add lr, sp, #0x270
	mov r4, #0
	mov r2, #0
	mov r3, #0
	STMIA lr, {r1, r2, r3, r4}
	LDR r1, _08008AE4
	add r4, sp, #0x260
	LDMIA r1, {r2, r3, r5, r6}
	STMIA r4, {r2, r3, r5, r6}
	LDR r1, _08008AE8
	add r6, sp, #0x250
	LDMIA r1, {r2, r3, r4, r5}
	STMIA r6, {r2, r3, r4, r5}
	LDR r1, _08008AEC
	add r5, sp, #0x240
	LDMIA r1, {r2, r3, r4, r7}
	STMIA r5, {r2, r3, r4, r7}
	LDR r1, [sp, #0x250]
	add r2, sp, #0x254
	STRB r1, [sp, #0x277]
	LDMIA r2, {r1, r2}
	add r7, sp, #0x260
	add r1, r1, r2
	STRB r1, [sp, #0x278]
	LDR r1, [sp, #0x25c]
	mov r2, sp
	STRB r1, [sp, #0x279]
	mov r1, #0
	mov r8, sp
_080084DC
	LDR ip, [r6, r1, lsl #2]
	mov r3, #0
	cmp ip, #0
	bls _08008528
_080084EC
	LDR ip, [r7, r1, lsl #2]
	ldrh r4, [r2]
	add ip, ip, r3
	bic ip, ip, #0xfe00
	and r4, r4, #0xfe00
	orr r4, r4, ip
	strh r4, [r2]
	LDR ip, [r5, r1, lsl #2]
	bic r4, r4, #0xfe00
	orr ip, r4, ip, lsl #9
	strh ip, [r2], #2
	LDR ip, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp ip, r3
	bhi _080084EC
_08008528
	add r1, r1, #1
	cmp r1, #4
	blo _080084DC
	mov r1, #4
	LDR r0, [r0]
	add r4, lr, #7
	add r5, lr, #9
	b _08008590
_08008548
	LDRB ip, [r4], #1
	cmp ip, #0
	beq _08008580
_08008554
	movs r2, r1
	beq _08008574
_0800855C
	ldrh lr, [r8]
	mov r3, r0
	add r0, r0, #2
	subs r2, r2, #1
	strh lr, [r3]
	bne _0800855C
_08008574
	subs ip, ip, #1
	add r8, r8, #2
	bne _08008554
_08008580
	MOVS r1, r1, ASR #1
	addeq sp, sp, #0x280
	LDMEQFD SP!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
_08008590
	cmp r4, r5
	bls _08008548
	add sp, sp, #0x280
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr

	arm_func_start sub_80085A4
sub_80085A4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x50]
	add r8, r4, #0x20
	mov sl, #0
	mov sb, #8
	cmp r0, #0
	bne _08008658
	mov r1, #0x10
	mov r0, r8
	bl sub_803F4CC
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x24]
	cmp r0, #8
	blo _08008634
	LDR r2, [r4, #0x20]
	sub r0, r0, #8
	STR r0, [r4, #0x24]
	MOV r0, r2, LSL #8
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0xc]
	MOV r1, r2, LSR #0x18
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x50]
	sub r0, r0, #1
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
_08008634
	LDR r0, [r4, #0x24]
	STR sl, [r4, #0x24]
	LDR r1, [r4, #0x20]
	MOV r0, r1, LSL r0
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
_08008658
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x50]
	cmp r0, r1
	bge _08008678
	bic r1, r0, #1
	ands r0, r0, #1
	movne r0, #2
	add r1, r1, r0
_08008678
	bic r2, r1, #1
	mov r5, r1
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	add r3, r0, r2
	add r1, r1, #1
	cmp r3, r1
	mov r7, r2
	bls _08008730
	sub r6, r1, r0
	LDR r2, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r2, r0
	mov r2, r6
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq _080086E4
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
_080086E4
	sub r6, r7, r6
	LDR r0, [r4, #8]
	LDR r1, [r4, #0x28]
	mov r2, r6
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq _08008728
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
_08008728
	STR r6, [r4, #0xc]
	b _0800875C
_08008730
	LDR r3, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r3, r0
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r7, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0xc]
	add r0, r0, r7
	STR r0, [r4, #0xc]
_0800875C
	tst r5, #1
	beq _08008794
	mov r1, #8
	mov r0, r8
	bl sub_803F4CC
	LDR r1, [r4, #0xc]
	add r2, r1, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r0, [r2, r1]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
_08008794
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0x50]
	subs r0, r0, r5
	STR r0, [r4, #0x50]
	STREQ sl, [r4, #0x4c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start sub_80087B8
sub_80087B8
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov sb, r2
	LDR r2, [r4, #0x18]
	LDR r0, [r0, #0x1c]
	cmp r1, #0
	sub r5, r2, r0
	moveq r1, r5
	cmp r5, r1
	movle r1, r5
	mov r5, r1
	LDR r1, [r4, #0xc]
	sub sp, sp, #0x144
	add r0, r1, r0
	LDR r1, [r4, #0x10]
	and r0, r0, r1
	LDR r1, [r4, #8]
	add r0, r0, r1
	STR r0, [sp, #0x140]
	b _08008AA0
_08008808
	LDR r0, [r4, #0x4c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
jmpt_08008814
	b _08008AA0
jmpt_08008818
	b _08008838
jmpt_0800881C
	b _08008924
jmpt_08008820
	b _080088C4
jmpt_08008824
	b _08008A64
jmpt_08008828
	b _080088E4
jmpt_0800882C
	b _08008884
jmpt_08008830
	b _08008AA0
jmpt_08008834
	b _08008AB8
_08008838
	mov r1, #2
	add r0, r4, #0x20
	bl sub_803F4CC
	cmp r0, #0
	moveq r0, #5
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #1
	moveq r0, #2
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #2
	moveq r0, #1
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #3
	moveq r0, #7
	STREQ r0, [r4, #0x4c]
	b _08008AA0
_08008884
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_80085A4
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b _08008AA0
_080088C4
	LDR r0, [r4, #0x44]
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	bl sub_800844C
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #4
	STR r0, [r4, #0x4c]
_080088E4
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_8008298
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b _08008AA0
_08008924
	LDR r0, [r4, #0x24]
	cmp r0, #0xe
	bhs _0800895C
	LDR r1, [r4, #0x28]
	add r2, r1, #2
	STR r2, [r4, #0x28]
	ldrh r1, [r1]
	rsb r2, r0, #0x10
	add r0, r0, #0x10
	MOV r1, r1, LSL r2
	LDR r2, [r4, #0x20]
	STR r0, [r4, #0x24]
	orr r1, r1, r2
	STR r1, [r4, #0x20]
_0800895C
	LDR r0, [r4, #0x20]
	LDR r2, [r4, #0x24]
	MOV r1, r0, LSR #0x1b
	add r7, r1, #0x100
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1b
	add sl, r1, #1
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1c
	add r8, r1, #4
	add r1, r4, #0x20
	MOV r0, r0, LSL #4
	sub r2, r2, #0xe
	STMIA r1, {r0, r2}
	mov r2, #0
	mov r1, #0
	mov r0, #0
	mov r6, sp
	mov r3, #0
	mov fp, #0
	STMIA r6, {r0, r1, r2, r3, fp}
	mov r6, #0
	cmp r8, #0
	add r7, r7, #1
	bls _080089E8
	add fp, r4, #0x20
_080089C4
	mov r1, #3
	mov r0, fp
	bl sub_803F4CC
	LDR r1, _08008AF0
	LDRB r1, [r1, r6]
	add r6, r6, #1
	cmp r6, r8
	STRB r0, [sp, r1]
	blo _080089C4
_080089E8
	LDR r0, [r4, #0x44]
	mov r6, sp
	STR r0, [r4, #0x38]
	add r0, r4, #0x38
	mov r8, r0
	mov r2, sp
	mov r1, #0x13
	bl sub_803DCE4
	add r2, r6, #1
	mov fp, r2
	add r1, r7, sl
	mov r0, r4
	bl sub_803DB3C
	LDR r0, [r4, #0x44]
	mov r2, fp
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	mov r1, r7
	bl sub_803DCE4
	LDR r1, [r4, #0x44]
	add r0, r1, r0, lsl #1
	STR r0, [r4, #0x38]
	add r0, r6, r7
	add r2, r0, #1
	mov r0, r8
	mov r1, sl
	bl sub_803DCE4
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #3
	STR r0, [r4, #0x4c]
_08008A64
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_803DEF8
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
_08008AA0
	cmp r5, #0
	ble _08008AB8
	LDR r0, _08008AE0
	LDR r0, [r0]
	cmp r0, #0
	beq _08008808
_08008AB8
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #0
	STRGT r0, [r4, #0x1c]
	LDR r0, [sp, #0x140]
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	ALIGN
_08008AD8 DCDU gUnknown_0803EEC4
_08008ADC DCDU gUnknown_0804A948
_08008AE0 DCDU gUnknown_030033F4
_08008AE4 DCDU gUnknown_0804AA38
_08008AE8 DCDU gUnknown_0804AA48
_08008AEC DCDU gUnknown_0804AA58
_08008AF0 DCDU gUnknown_0804A934
	END