    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_0804A948

	arm_func_start sub_803DB3C
sub_803DB3C ;@ 0x0803DB3C
	STMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov r3, r2
	LDR r8, [r0, #0x38]
	LDR r5, [r0, #0x20]
	LDR r4, [r0, #0x24]
	LDR r6, [r0, #0x28]
_0803DB54
	cmp r4, #0xf
	bhs _0803DB6C
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DB6C
	MOV sb, r5, LSR #0x18
	add sb, r8, sb, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	MOV sl, sl, LSR #9
	cmp sl, #0x10
	blo _0803DBA0
	MOV ip, r5, LSL #8
	sub ip, fp, ip, lsr sl
	add sb, sb, ip, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	MOV sl, sl, LSR #9
_0803DBA0
	sub r4, r4, sl
	MOV r5, r5, LSL sl
	cmp fp, #0x10
	bhs _0803DBD0
	STRB fp, [r3], #1
	subs r1, r1, #1
	bne _0803DB54
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DBD0
	bgt _0803DC2C
	cmp r4, #2
	bhs _0803DBEC
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DBEC
	MOV r2, r5, LSR #0x1e
	add r2, r2, #3
	sub r4, r4, #2
	MOV r5, r5, LSL #2
	sub r1, r1, r2
_0803DC00
	LDRB sb, [r3, #-1]
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne _0803DC00
	cmp r1, #0
	bne _0803DB54
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DC2C
	cmp fp, #0x11
	bgt _0803DC8C
	cmp r4, #3
	bhs _0803DC4C
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DC4C
	MOV r2, r5, LSR #0x1d
	add r2, r2, #3
	sub r4, r4, #3
	MOV r5, r5, LSL #3
	sub r1, r1, r2
	mov sb, #0
_0803DC64
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne _0803DC64
	cmp r1, #0
	bne _0803DB54
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DC8C
	cmp r4, #7
	bhs _0803DCA4
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DCA4
	MOV r2, r5, LSR #0x19
	add r2, r2, #0xb
	sub r4, r4, #7
	MOV r5, r5, LSL #7
	sub r1, r1, r2
	mov sb, #0
_0803DCBC
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne _0803DCBC
	cmp r1, #0
	bne _0803DB54
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr

	arm_func_start sub_803DCE4
sub_803DCE4 ;@ 0x0803DCE4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x294
	add r3, sp, #0x280
	mov sb, #0
	mov sl, #0
	mov fp, #0
	mov ip, #0
	STMIA r3, {sb, sl, fp, ip}
	sub lr, r1, #1
	add r4, r2, lr
_0803DD0C
	LDRB r8, [r4], #-1
	LDRB sb, [r3, r8]
	add sb, sb, #1
	STRB sb, [r3, r8]
	subs lr, lr, #1
	bpl _0803DD0C
	add r5, sp, #0x40
	add r6, sp, #0
	mov r7, r5
	mov r8, #0x1000000
	mov sb, #0
	mov lr, #1
_0803DD3C
	STR r7, [r6, lr, lsl #2]
	LDRB sl, [r3, lr]
	add r7, r7, sl, lsl #1
	cmp sl, #0
	beq _0803DD60
	cmp lr, r8
	movlo r8, lr
	cmp lr, sb
	movgt sb, lr
_0803DD60
	add lr, lr, #1
	cmp lr, #0x10
	blo _0803DD3C
	STR r8, [r0, #4]
	STR sb, [r0, #8]
	mov lr, #0
	add r4, r4, #1
_0803DD7C
	LDRB ip, [r4], #1
	cmp ip, #0
	beq _0803DD98
	LDR sl, [r6, ip, lsl #2]
	orr fp, lr, ip, lsl #9
	strh fp, [sl], #2
	STR sl, [r6, ip, lsl #2]
_0803DD98
	add lr, lr, #1
	cmp lr, r1
	blo _0803DD7C
	LDR sl, [r6, #0x3c]
	sub sl, sl, r5
	STR sl, [sp, #0x290]
	mov r1, sb
	cmp r1, #8
	movhi r1, #8
	mov ip, #1
	rsb r2, r8, #8
	MOV r2, ip, LSL r2
	LDR r4, [r0]
	add r6, r3, sb
	add r3, r3, r8
_0803DDD4
	LDRB r7, [r3], #1
	cmp r7, #0
	beq _0803DDFC
_0803DDE0
	mov lr, r2
	ldrh fp, [r5], #2
_0803DDE8
	strh fp, [r4], #2
	subs lr, lr, #1
	bne _0803DDE8
	subs r7, r7, #1
	bne _0803DDE0
_0803DDFC
	cmp r3, r6
	bgt _0803DE0C
	MOVS r2, r2, LSR #1
	bne _0803DDD4
_0803DE0C
	cmp sb, #8
	bgt _0803DE24
	add sp, sp, #0x294
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0x100
	bx lr
_0803DE24
	sub r1, sb, #8
	mov r8, r1
	add r3, sp, #0x280
	add r3, r3, sb
	mov r6, #1
	MOV r6, r6, LSL sb
	sub r6, r6, #1
	mov r2, #1
	LDR sl, [sp, #0x290]
	add r5, sp, #0x40
	add r5, r5, sl
	sub r5, r5, #2
	LDR sb, [r0]
	add sb, sb, #0x200
	mov r4, sb
_0803DE60
	LDRB r7, [r3], #-1
	cmp r7, #0
	beq _0803DE98
_0803DE6C
	mov sl, r2
	ldrh fp, [r5], #-2
_0803DE74
	strh fp, [sb], #2
	subs sl, sl, #1
	bne _0803DE74
	MOV sl, r6, LSR r1
	sub r6, r6, #1
	teq sl, r6, lsr r1
	bne _0803DEAC
	subs r7, r7, #1
	bne _0803DE6C
_0803DE98
	MOV r6, r6, LSR #1
	MOV r2, r2, LSL #1
	subs r1, r1, #1
	bne _0803DE60
	b _0803DEE0
_0803DEAC
	rsb sl, r8, #0x20
	sub fp, sb, r4
	MOV fp, fp, LSR #1
	orr fp, fp, sl, lsl #9
	strh fp, [r4, #-2]!
	subs r7, r7, #1
	mov r2, #1
	movne r8, r1
	bne _0803DE6C
	MOV r6, r6, LSR #1
	subs r1, r1, #1
	mov r8, r1
	bne _0803DE60
_0803DEE0
	LDR r0, [r0]
	sub r0, sb, r0
	MOV r0, r0, LSR #1
	add sp, sp, #0x294
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_803DEF8
sub_803DEF8 ;@ 0x0803DEF8
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	stmdb sp!, {r0}
	LDR r5, [r0, #8]
	LDR r6, [r0, #0xc]
	MOV r6, r6, LSL #0x11
	LDR r7, _0803E0FC ;@ =gUnknown_0804A948
	LDR r8, [r0, #0x38]
	LDR sb, [r0, #0x2c]
	LDR sl, [r0, #0x20]
	LDR fp, [r0, #0x24]
	LDR ip, [r0, #0x28]
	LDR lr, [r0, #0x1c]
	cmp lr, #0
	ble _0803E0AC
_0803DF30
	LDR r4, _0803E100 ;@ =gUnknown_030033F4
	LDR r4, [r4]
	cmp r4, #1
	beq _0803E0AC
	cmp fp, #0xf
	bhs _0803DF58
	ldrh r0, [ip], #2
	rsb r1, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r0, lsl r1
_0803DF58
	MOV r0, sl, LSR #0x18
	add r0, sb, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
	cmp r3, #0x10
	blo _0803DF8C
	MOV r1, sl, LSL #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
_0803DF8C
	sub fp, fp, r3
	MOV sl, sl, LSL r3
	cmp r2, #0x100
	bhs _0803DFB0
	STRB r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	subs lr, lr, #1
	bne _0803DF30
	b _0803E0AC
_0803DFB0
	subs r2, r2, #0x100
	beq _0803E0D0
	add r0, r7, r2, lsl #3
	ldrh r1, [r0, #6]
	ldrh r4, [r0, #4]
	cmp r1, #0
	beq _0803DFF4
	cmp fp, r1
	bhs _0803DFE4
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803DFE4
	rsb r2, r1, #0x20
	add r4, r4, sl, lsr r2
	sub fp, fp, r1
	MOV sl, sl, LSL r1
_0803DFF4
	cmp fp, #0xf
	bhs _0803E00C
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803E00C
	MOV r0, sl, LSR #0x18
	add r0, r8, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
	cmp r3, #0x10
	blo _0803E040
	MOV r1, sl, LSL #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
_0803E040
	sub fp, fp, r3
	MOV sl, sl, LSL r3
	add r0, r7, r2, lsl #3
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0803E084
	cmp fp, r0
	bhs _0803E074
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803E074
	rsb r2, r0, #0x20
	add r1, r1, sl, lsr r2
	sub fp, fp, r0
	MOV sl, sl, LSL r0
_0803E084
	sub lr, lr, r4
	sub r1, r6, r1, lsl #17
_0803E08C
	LDRB r2, [r5, r1, lsr #17]
	STRB r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	add r1, r1, #0x20000
	subs r4, r4, #1
	bne _0803E08C
	cmp lr, #0
	bgt _0803DF30
_0803E0AC
	MOV r6, r6, LSR #0x11
	LDMIA sp!, {r0}
	STR sl, [r0, #0x20]
	STR fp, [r0, #0x24]
	STR ip, [r0, #0x28]
	STR r6, [r0, #0xc]
	STR lr, [r0, #0x1c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803E0D0
	MOV r6, r6, LSR #0x11
	LDMIA sp!, {r0}
	STR sl, [r0, #0x20]
	STR fp, [r0, #0x24]
	STR ip, [r0, #0x28]
	STR r6, [r0, #0xc]
	STR lr, [r0, #0x1c]
	mov r1, #0
	STR r1, [r0, #0x4c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
	ALIGN
_0803E0FC DCDU gUnknown_0804A948
_0803E100 DCDU gUnknown_030033F4
	END