    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_08049608
	IMPORT gUnknown_08049684
	IMPORT gUnknown_08049700
	IMPORT gUnknown_08049778
	IMPORT gUnknown_080497F0
	IMPORT gUnknown_0804A7F0
	IMPORT sub_803BF10

	arm_func_start sub_80077E8
sub_80077E8 ;@ 0x080077E8
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe0
	LDR r7, [sp, #0x11c]
	add lr, sp, #0x124
	LDMIA lr, {sl, lr}
	mov r6, #0
	STR r6, [sp, #0x90]
	STR r6, [sp, #0x94]
	STR r6, [sp, #0x98]
	STR r6, [sp, #0x9c]
	STR r6, [sp, #0xa0]
	STR r6, [sp, #0xa4]
	STR r6, [sp, #0xa8]
	STR r6, [sp, #0xac]
	add r2, sp, #0x90
	add r4, r2, #4
	STR r6, [sp, #0xcc]
	STR r6, [sp, #0xc8]
	STR r6, [sp, #0xc4]
	STR r6, [sp, #0xc0]
	STR r6, [sp, #0xbc]
	STR r6, [sp, #0xb8]
	STR r6, [sp, #0xb4]
	STR r6, [sp, #0xb0]
	mov r3, r1
	mov ip, r0
_08007850
	LDR r5, [ip], #4
	subs r3, r3, #1
	add r5, r2, r5, lsl #2
	LDR r8, [r5]
	add r8, r8, #1
	STR r8, [r5]
	bne _08007850
	LDR r3, [sp, #0x90]
	cmp r3, r1
	movne r3, #1
	LDRNE r5, [r7]
	bne _0800789C
	LDR r1, [sp, #0x118]
	mov r0, #0
	STR r6, [r1]
	STR r6, [r7]
	add sp, sp, #0xf0
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0800789C
	LDR ip, [r2, r3, lsl #2]
	mov sb, r2
	cmp ip, #0
	bne _080078B8
	add r3, r3, #1
	cmp r3, #0xf
	bls _0800789C
_080078B8
	cmp r5, r3
	movlo r5, r3
	mov ip, r3
	mov r2, #0xf
_080078C8
	LDR r8, [sb, r2, lsl #2]
	cmp r8, #0
	bne _080078DC
	subs r2, r2, #1
	bne _080078C8
_080078DC
	cmp r5, r2
	movhi r5, r2
	STR r2, [sp, #0x88]
	STR r5, [r7]
	mov r7, #1
	MOV r7, r7, LSL r3
	cmp r3, r2
	bhs _08007928
_080078FC
	LDR r8, [sb, r3, lsl #2]
	sub r7, r7, r8
	cmp r7, #0
	addlt sp, sp, #0xf0
	LDMLTFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnlt r0, #2
	bxlt lr
	add r3, r3, #1
	cmp r3, r2
	MOV r7, r7, LSL #1
	blo _080078FC
_08007928
	LDR r8, [sb, r2, lsl #2]
	mov r3, sb
	sub r7, r7, r8
	STR r7, [sp]
	cmp r7, #0
	addlt sp, sp, #0xf0
	LDMLTFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnlt r0, #2
	bxlt lr
	LDR r7, [sp]
	add r7, r8, r7
	STR r7, [r3, r2, lsl #2]
	mov r7, #0
	add r8, sp, #4
	add sb, r8, #8
	STR r7, [sp, #8]
	subs r2, r2, #1
	beq _08007984
_08007970
	LDR fp, [r4], #4
	subs r2, r2, #1
	add r7, fp, r7
	STR r7, [sb], #4
	bne _08007970
_08007984
	mov r4, r0
_08007988
	LDR r0, [r4], #4
	cmp r0, #0
	beq _080079A4
	LDR r7, [r8, r0, lsl #2]
	add sb, r7, #1
	STR sb, [r8, r0, lsl #2]
	STR r2, [lr, r7, lsl #2]
_080079A4
	add r2, r2, #1
	cmp r2, r1
	blo _08007988
	LDR r1, [sp, #0x88]
	add r8, sp, #4
	LDR r1, [r8, r1, lsl #2]
	STR r6, [sp, #0x44]
	LDR r8, [sp, #0x88]
	mov r2, #0
	STR r2, [sp, #4]
	mov r6, #0
	mvn r4, #0
	rsb r0, r5, #0
	mov r7, #0
	cmp ip, r8
	bgt _08007C54
	and r8, r5, #0xff
	add r1, lr, r1, lsl #2
	add sb, sp, #0xd8
	STMIA sb, {r1, r8}
_080079F4
	add r1, sp, #0x90
	LDR r1, [r1, ip, lsl #2]
	subs r3, r1, #1
	blo _08007C44
	add r1, sp, #0x90
	add r8, r1, ip, lsl #2
	STR r8, [sp, #0xd4]
	mov r8, #1
	sub r1, ip, #1
	MOV r1, r8, LSL r1
	STR r1, [sp, #0xd0]
_08007A20
	add r1, r0, r5
	cmp r1, ip
	bge _08007B2C
	add fp, r3, #1
_08007A30
	LDR r1, [sp, #0x88]
	add r0, r0, r5
	sub sb, r1, r0
	sub r1, ip, r0
	mov r6, #1
	cmp sb, r5
	movhi sb, r5
	MOV r6, r6, LSL r1
	cmp r6, fp
	add r4, r4, #1
	bls _08007A94
	cmp r1, sb
	addlo r1, r1, #1
	cmplo r1, sb
	sub r6, r6, fp
	LDR r8, [sp, #0xd4]
	bhs _08007A94
_08007A74
	LDR r7, [r8, #4]!
	MOV r6, r6, LSL #1
	cmp r6, r7
	bls _08007A94
	add r1, r1, #1
	cmp r1, sb
	sub r6, r6, r7
	blo _08007A74
_08007A94
	mov r6, #1
	LDR r7, [sl]
	MOV r6, r6, LSL r1
	add r8, r7, r6
	cmp r8, #0x5a0
	addhi sp, sp, #0xf0
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnhi r0, #2
	bxhi lr
	LDR r8, [sp, #0x120]
	add sb, sp, #0x44
	add r7, r8, r7, lsl #3
	STR r7, [sb, r4, lsl #2]
	LDR r8, [sl]
	cmp r4, #0
	add r8, r8, r6
	STR r8, [sl]
	LDREQ r1, [sp, #0x118]
	STREQ r7, [r1]
	beq _08007B20
	add r8, sp, #4
	STR r2, [r8, r4, lsl #2]
	LDR r8, [sp, #0xdc]
	STRB r8, [sp, #0x81]
	STRB r1, [sp, #0x80]
	add r8, sb, r4, lsl #2
	LDR r8, [r8, #-4]
	sub r1, r0, r5
	MOV r1, r2, LSR r1
	sub sb, r7, r8
	rsb sb, r1, sb, asr #3
	add r1, r8, r1, lsl #3
	LDR r8, [sp, #0x80]
	STR sb, [sp, #0x84]
	STMIA r1, {r8, sb}
_08007B20
	add r1, r0, r5
	cmp r1, ip
	blt _08007A30
_08007B2C
	sub sb, ip, r0
	STRB sb, [sp, #0x81]
	LDR r1, [sp, #0xd8]
	cmp r1, lr
	movls r1, #0xc0
	STRLSB r1, [sp, #0x80]
	bls _08007BA4
	LDR r1, [lr]
	LDR r8, [sp, #0xe8]
	cmp r1, r8
	bhs _08007B74
	cmp r1, #0x100
	movhs r8, #0x60
	movlo r8, #0
	STRB r8, [sp, #0x80]
	STR r1, [sp, #0x84]
	add lr, lr, #4
	b _08007BA4
_08007B74
	LDR r8, [sp, #0xe8]
	LDR fp, [sp, #0x114]
	sub r8, r1, r8
	LDR r8, [fp, r8, lsl #2]
	add lr, lr, #4
	add r8, r8, #0x50
	STRB r8, [sp, #0x80]
	LDR r8, [sp, #0xe8]
	sub r1, r1, r8
	LDR r8, [sp, #0xec]
	LDR r1, [r8, r1, lsl #2]
	STR r1, [sp, #0x84]
_08007BA4
	mov r8, #1
	MOV r8, r8, LSL sb
	MOV r1, r2, LSR r0
	cmp r1, r6
	STR r8, [sp, #0x8c]
	bhs _08007BDC
_08007BBC
	add fp, sp, #0x80
	LDMIA fp, {sb, fp}
	add r8, r7, r1, lsl #3
	STMIA r8, {sb, fp}
	LDR r8, [sp, #0x8c]
	add r1, r1, r8
	cmp r1, r6
	blo _08007BBC
_08007BDC
	LDR r1, [sp, #0xd0]
	mov r8, #1
	tst r2, r1
	beq _08007BFC
_08007BEC
	eor r2, r2, r1
	MOV r1, r1, LSR #1
	tst r2, r1
	bne _08007BEC
_08007BFC
	eor r2, r2, r1
	MOV r1, r8, LSL r0
	add sb, sp, #4
	LDR fp, [sb, r4, lsl #2]
	sub r1, r1, #1
	and r1, r2, r1
	cmp r1, fp
	beq _08007C3C
_08007C1C
	sub r0, r0, r5
	MOV r1, r8, LSL r0
	sub r4, r4, #1
	LDR fp, [sb, r4, lsl #2]
	sub r1, r1, #1
	and r1, r2, r1
	cmp r1, fp
	bne _08007C1C
_08007C3C
	subs r3, r3, #1
	bhs _08007A20
_08007C44
	LDR r1, [sp, #0x88]
	add ip, ip, #1
	cmp ip, r1
	ble _080079F4
_08007C54
	LDR r7, [sp]
	cmp r7, #0
	LDRNE r1, [sp, #0x88]
	add sp, sp, #0xf0
	cmpne r1, #1
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #0
	mvnne r0, #4
	bx lr

	arm_func_start sub_8007C78
sub_8007C78 ;@ 0x08007C78
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x38]
	STR r0, [sp, #0x18]
	LDR r0, [r4, #0x24]
	mov sb, r3
	LDR r3, [r4, #0x1c]
	mov r8, r2
	mov r6, r1
	mov r1, #0x4c
	mov r2, #7
	mov lr, pc
	bx r3
	movs r5, r0
	addeq sp, sp, #0x1c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	mov r2, #0
	STMIA sp, {r2, r8}
	mov r0, r7
	add r7, sp, #8
	STMIA r7, {r6, sb}
	mov r2, #0x13
	mov r3, #0
	mov r1, #0x13
	bl sub_80077E8
	mov r7, r0
	cmn r0, #5
	beq _08007D18
	cmn r7, #3
	beq _08007D1C
	LDR r0, [r6]
	cmp r0, #0
	bne _08007D1C
_08007D18
	mvn r7, #2
_08007D1C
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #7
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r7
	add sp, sp, #0x1c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr

	arm_func_start sub_8007D44
sub_8007D44 ;@ 0x08007D44
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x60]
	STR r0, [sp, #0x18]
	LDR r6, [sp, #0x54]
	LDR r8, [sp, #0x50]
	LDR sb, [sp, #0x5c]
	LDR r0, [r4, #0x24]
	mov fp, r3
	LDR r3, [r4, #0x1c]
	mov sl, r2
	mov r2, #8
	add lr, pc, #0x4 ;@ =loc_8007D88
	mov r1, #0x480
	bx r3
loc_8007D88
	movs r5, r0
	addeq sp, sp, #0x2c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	LDR r2, _08007F00 ;@ =gUnknown_08049684
	mov r0, sl
	STMIA sp, {r2, r6, fp}
	mov r2, #1
	add r2, r2, #0x100
	STR sb, [sp, #0xc]
	LDR r3, _08007F04 ;@ =gUnknown_08049608
	mov r1, r7
	bl sub_80077E8
	movs r6, r0
	bne _08007DE4
	LDR r0, [fp]
	cmp r0, #0
	bne _08007E18
	b _08007DEC
_08007DE4
	cmn r6, #4
	beq _08007DF0
_08007DEC
	mvn r6, #2
_08007DF0
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08007E18
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	add r0, sp, #8
	STMIA r0, {r8, sb}
	LDR r2, _08007F08 ;@ =gUnknown_08049778
	LDR r3, [sp, #0x58]
	STMIA sp, {r2, r3}
	LDR r1, [sp, #0x20]
	LDR r3, _08007F0C ;@ =gUnknown_08049700
	mov r2, #0
	add r0, sl, r7, lsl #2
	bl sub_80077E8
	movs r6, r0
	bne _08007E70
	LDR r0, [r8]
	cmp r0, #0
	bne _08007EB0
	subs ip, r7, #0x100
	subhss ip, ip, #1
	bls _08007EB0
	b _08007E84
_08007E70
	cmn r6, #5
	mvneq r6, #2
	beq _08007E88
	cmn r6, #4
	beq _08007E88
_08007E84
	mvn r6, #2
_08007E88
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08007EB0
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8007ED8
sub_8007ED8 ;@ 0x08007ED8
	mov ip, #9
	STR ip, [r0]
	mov r0, #5
	STR r0, [r1]
	LDR r0, _08007F10 ;@ =gUnknown_080497F0
	STR r0, [r2]
	LDR r0, _08007F14 ;@ =gUnknown_0804A7F0
	STR r0, [r3]
	mov r0, #0
	bx lr
	ALIGN
_08007F00 DCDU gUnknown_08049684
_08007F04 DCDU gUnknown_08049608
_08007F08 DCDU gUnknown_08049778
_08007F0C DCDU gUnknown_08049700
_08007F10 DCDU gUnknown_080497F0
_08007F14 DCDU gUnknown_0804A7F0


	arm_func_start sub_8007F18
sub_8007F18
	STMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	LDR sb, [r0, #0x30]
	mov r5, r0
	LDR r0, [r0, #0x34]
	LDR r8, [r1, #0xc]
	cmp r0, sb
	LDRLO r0, [r5, #0x2c]
	mov r4, r1
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	mov r7, r2
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq _08007F5C
	cmn r7, #5
	moveq r7, #0
_08007F5C
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl sub_803BF10
	LDR r0, [r5, #0x2c]
	add r1, sb, r6
	cmp r0, r1
	add r8, r8, r6
	bne _08007FF4
	LDR r1, [r5, #0x34]
	LDR sb, [r5, #0x28]
	cmp r1, r0
	STREQ sb, [r5, #0x34]
	LDR r0, [r5, #0x34]
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq _08007FC8
	cmn r7, #5
	moveq r7, #0
_08007FC8
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl sub_803BF10
	add r8, r8, r6
	add r1, sb, r6
_08007FF4
	STR r8, [r4, #0xc]
	STR r1, [r5, #0x30]
	mov r0, r7
	LDMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	bx lr
	END