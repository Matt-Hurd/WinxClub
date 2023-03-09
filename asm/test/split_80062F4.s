    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0804A8F0
	IMPORT sub_8006BC0
	IMPORT sub_8007F18

	arm_func_start sub_80062F4
sub_80062F4 ;@ 0x080062F4
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	LDR r1, [sp, #0x18]
	mov r7, r3
	LDR r3, [r1, #0x1c]!
	mov r4, r0
	LDR r0, [r1, #8]
	mov r6, r2
	mov r2, #5
	mov r1, #0x1c
	mov lr, pc
	bx r3
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	mov r1, #0
	STRB r1, [r0]
	STRB r4, [r0, #0x10]
	STRB r5, [r0, #0x11]
	add r1, r0, #0x14
	STMIA r1, {r6, r7}
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_8006350
sub_8006350 ;@ 0x08006350
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, r2
	LDR sb, [r1, #4]
	LDR sl, [r1]
	mov r7, r1
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	LDR r6, [r4, #4]
	add r8, r4, #0x1c
	LDMIA r8, {r5, r8}
	cmp r2, r1
	LDRLS r2, [r4, #0x2c]
	sub sp, sp, #0xc
	subls r3, r2, r1
	subhi r2, r2, r1
	subhi r3, r2, #1
_08006394
	LDRB r2, [r6]
	cmp r2, #9
	addls pc, pc, r2, lsl #2
jmptb_080063A0
	b _08006B64
jmptb_080063A4
	b _080063CC
jmptb_080063A8
	b _0800647C
jmptb_080063AC
	b _080065C4
jmptb_080063B0
	b _0800662C
jmptb_080063B4
	b _0800678C
jmptb_080063B8
	b _080067E4
jmptb_080063BC
	b _08006970
jmptb_080063C0
	b _08006A68
jmptb_080063C4
	b _08006AE4
jmptb_080063C8
	b _08006B24
_080063CC
	subs ip, r3, #0x100
	subhss ip, ip, #2
	cmphs sb, #0xa
	blo _08006464
	STR r5, [r4, #0x1c]
	STR r8, [r4, #0x20]
	STR sb, [r7, #4]
	LDR r2, [r7]
	LDR r0, [r7, #8]
	sub r2, sl, r2
	add r0, r0, r2
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	STMIA sp, {r4, r7}
	add r3, r6, #0x14
	LDMIA r3, {r2, r3}
	LDRB r1, [r6, #0x11]
	LDRB r0, [r6, #0x10]
	bl sub_8006BC0
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	LDR sb, [r7, #4]
	LDR sl, [r7]
	add r8, r4, #0x1c
	LDMIA r8, {r5, r8}
	cmp r2, r1
	LDRLS r2, [r4, #0x2c]
	subls r3, r2, r1
	subhi r2, r2, r1
	subhi r3, r2, #1
	cmp r0, #0
	beq _08006464
	cmp r0, #1
	movne r2, #9
	moveq r2, #7
	STRB r2, [r6]
	b _08006394
_08006464
	LDRB r2, [r6, #0x10]
	STR r2, [r6, #0xc]
	LDR r2, [r6, #0x14]
	STR r2, [r6, #8]
	mov r2, #1
	STRB r2, [r6]
_0800647C
	LDR r2, [r6, #0xc]
	cmp r5, r2
	bhs _080064AC
_08006488
	cmp sb, #0
	beq _080064EC
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _08006488
_080064AC
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #8]
	LDR r2, [lr, r2, lsl #2]
	and r2, r2, r8
	add r2, ip, r2, lsl #3
	LDRB ip, [r2, #1]
	MOV r8, r8, LSR ip
	sub r5, r5, ip
	LDRB ip, [r2]
	cmp ip, #0
	bne _0800652C
	LDR r2, [r2, #4]
	STR r2, [r6, #8]
	mov r2, #6
	STRB r2, [r6]
	b _08006394
_080064EC
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_0800652C
	tst ip, #0x10
	beq _08006550
	and ip, ip, #0xf
	STR ip, [r6, #8]
	LDR r2, [r2, #4]
	STR r2, [r6, #4]
	mov r2, #2
	STRB r2, [r6]
	b _08006394
_08006550
	tst ip, #0x40
	bne _0800656C
	STR ip, [r6, #0xc]
	LDR ip, [r2, #4]
	add r2, r2, ip, lsl #3
	STR r2, [r6, #8]
	b _08006394
_0800656C
	tst ip, #0x20
	movne r2, #7
	STRNEB r2, [r6]
	bne _08006394
	mov r0, #9
	STRB r0, [r6]
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_080065C4
	LDR r2, [r6, #8]
	cmp r5, r2
	bhs _080065F4
_080065D0
	cmp sb, #0
	beq _0800663C
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _080065D0
_080065F4
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #4]
	LDR lr, [lr, r2, lsl #2]
	sub r5, r5, r2
	and lr, lr, r8
	add ip, ip, lr
	STR ip, [r6, #4]
	MOV r8, r8, LSR r2
	LDRB r2, [r6, #0x11]
	STR r2, [r6, #0xc]
	LDR r2, [r6, #0x18]
	STR r2, [r6, #8]
	mov r2, #3
	STRB r2, [r6]
_0800662C
	LDR r2, [r6, #0xc]
	cmp r5, r2
	bhs _080066A0
	b _0800667C
_0800663C
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_0800667C
	cmp sb, #0
	beq _080066E8
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _0800667C
_080066A0
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #8]
	LDR r2, [lr, r2, lsl #2]
	and r2, r2, r8
	add r2, ip, r2, lsl #3
	LDRB ip, [r2, #1]
	MOV r8, r8, LSR ip
	sub r5, r5, ip
	LDRB ip, [r2]
	tst ip, #0x10
	beq _08006728
	and ip, ip, #0xf
	STR ip, [r6, #8]
	LDR r2, [r2, #4]
	STR r2, [r6, #0xc]
	mov r2, #4
	STRB r2, [r6]
	b _08006394
_080066E8
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08006728
	tst ip, #0x40
	bne _08006744
	STR ip, [r6, #0xc]
	LDR ip, [r2, #4]
	add r2, r2, ip, lsl #3
	STR r2, [r6, #8]
	b _08006394
_08006744
	mov r0, #9
	STRB r0, [r6]
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_0800678C
	LDR r2, [r6, #8]
	cmp r5, r2
	bhs _080067BC
_08006798
	cmp sb, #0
	beq _08006804
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _08006798
_080067BC
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #0xc]
	LDR lr, [lr, r2, lsl #2]
	sub r5, r5, r2
	and lr, lr, r8
	add ip, ip, lr
	MOV r8, r8, LSR r2
	mov r2, #5
	STR ip, [r6, #0xc]
	STRB r2, [r6]
_080067E4
	LDR r2, [r6, #0xc]
	sub fp, r1, r2
	LDR r2, [r4, #0x28]
	cmp r2, fp
	bls _08006850
	LDR ip, [r4, #0x2c]
	sub ip, ip, r2
	b _08006844
_08006804
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08006844
	add fp, ip, fp
	cmp r2, fp
	bhi _08006844
_08006850
	LDR r2, [r6, #4]
	cmp r2, #0
	beq _08006964
_0800685C
	cmp r3, #0
	bne _08006938
	LDR ip, [r4, #0x2c]
	cmp ip, r1
	bne _08006898
	LDR r2, [r4, #0x30]
	LDR r3, [r4, #0x28]
	cmp r2, r3
	beq _08006898
	mov r1, r3
	subhi r2, r2, r1
	subhi r3, r2, #1
	subls r3, ip, r1
	cmp r3, #0
	bne _08006938
_08006898
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	bl sub_8007F18
	LDR r1, [r4, #0x34]
	LDR ip, [r4, #0x30]
	mov r2, r0
	cmp ip, r1
	LDRLS r0, [r4, #0x2c]
	subls r3, r0, r1
	subhi r0, ip, r1
	subhi r3, r0, #1
	LDR r0, [r4, #0x2c]
	cmp r0, r1
	bne _080068F4
	LDR lr, [r4, #0x28]
	cmp ip, lr
	beq _080068F4
	mov r1, lr
	subls r3, r0, r1
	subhi r0, ip, r1
	subhi r3, r0, #1
_080068F4
	cmp r3, #0
	bne _08006938
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08006938
	LDRB r2, [fp], #1
	mov r0, #0
	sub r3, r3, #1
	STRB r2, [r1], #1
	LDR r2, [r4, #0x2c]
	cmp r2, fp
	LDR r2, [r6, #4]
	LDREQ fp, [r4, #0x28]
	subs r2, r2, #1
	STR r2, [r6, #4]
	bne _0800685C
_08006964
	mov r2, #0
	STRB r2, [r6]
	b _08006394
_08006970
	cmp r3, #0
	bne _08006A4C
	LDR ip, [r4, #0x2c]
	cmp ip, r1
	bne _080069AC
	LDR r2, [r4, #0x30]
	LDR r3, [r4, #0x28]
	cmp r2, r3
	beq _080069AC
	mov r1, r3
	subhi r2, r2, r1
	subhi r3, r2, #1
	subls r3, ip, r1
	cmp r3, #0
	bne _08006A4C
_080069AC
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	bl sub_8007F18
	LDR r1, [r4, #0x34]
	LDR ip, [r4, #0x30]
	cmp ip, r1
	LDRLS r2, [r4, #0x2c]
	LDR fp, [r4, #0x2c]
	subhi r2, ip, r1
	subhi r3, r2, #1
	subls r3, r2, r1
	cmp fp, r1
	bne _08006A04
	LDR lr, [r4, #0x28]
	cmp ip, lr
	beq _08006A04
	mov r1, lr
	subhi r2, ip, r1
	subhi r3, r2, #1
	subls r3, fp, r1
_08006A04
	cmp r3, #0
	bne _08006A4C
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08006A4C
	LDR r2, [r6, #8]
	mov r0, #0
	STRB r2, [r1], #1
	mov r2, #0
	STRB r2, [r6]
	sub r3, r3, #1
	b _08006394
_08006A68
	cmp r5, #7
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	subhi r5, r5, #8
	addhi sb, sb, #1
	subhi sl, sl, #1
	bl sub_8007F18
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	cmp r2, r1
	beq _08006ADC
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b sub_8007F18
_08006ADC
	mov r0, #8
	STRB r0, [r6]
_08006AE4
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #1
	b sub_8007F18
_08006B24
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b sub_8007F18
_08006B64
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #1
	b sub_8007F18

	arm_func_start sub_8006BA4
sub_8006BA4 ;@ 0x08006BA4
	mov ip, r0
	LDR r3, [r1, #0x20]!
	LDR r0, [r1, #4]
	mov r1, ip
	mov r2, #5
	bx r3
	ALIGN
_08006BBC DCDU gUnknown_0804A8F0
