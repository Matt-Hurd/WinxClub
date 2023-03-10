    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0803EE98
	IMPORT sub_8006FE4
	IMPORT sub_8007040
	IMPORT sub_8007104
	IMPORT sub_803E104
	IMPORT sub_803E110
	IMPORT sub_803E11C
	IMPORT sub_803E128
	IMPORT sub_803E134
	IMPORT sub_803E158
	IMPORT sub_803E164
	IMPORT sub_803E170

	arm_func_start sub_800AA1C
sub_800AA1C ;@ 0x0800AA1C
	mov r0, r1
	mov r1, #0
	mov r2, #0
	b sub_803E158

	arm_func_start sub_800AA2C
sub_800AA2C ;@ 0x0800AA2C
	mov r0, r1
	mov r1, #0
	mov r2, #0
	b sub_803E164

	arm_func_start sub_800AA3C
sub_800AA3C ;@ 0x0800AA3C
	mov r1, #1
	add r3, r0, r2, lsl #2
	STR r1, [r3, #0x58]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
jmpt_0800AA50
	b _0800AAE8
jmpt_0800AA54
	b _0800AAE8
jmpt_0800AA58
	b _0800AA78
jmpt_0800AA5C
	b _0800AA80
jmpt_0800AA60
	b _0800AA8C
jmpt_0800AA64
	b _0800AA98
jmpt_0800AA68
	b _0800AAA8
jmpt_0800AA6C
	b _0800AAB8
jmpt_0800AA70
	b _0800AAC8
jmpt_0800AA74
	b _0800AAD8
_0800AA78
	LDR r0, [r0, #0x54]
	bx lr
_0800AA80
	LDR r0, [r0, #0x54]
	add r0, r0, #0x40
	bx lr
_0800AA8C
	LDR r0, [r0, #0x54]
	add r0, r0, #0x2d40
	bx lr
_0800AA98
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x2d40
	bx lr
_0800AAA8
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x3240
	bx lr
_0800AAB8
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x25c
	bx lr
_0800AAC8
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x274
	bx lr
_0800AAD8
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x32c0
	bx lr
_0800AAE8
	mov r0, #0
	bx lr

	arm_func_start sub_800AAF0
sub_800AAF0 ;@ 0x0800AAF0
	mov r1, #0
	add r0, r0, r2, lsl #2
	STR r1, [r0, #0x58]
	bx lr

	arm_func_start sub_800AB00
sub_800AB00 ;@ 0x0800AB00
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r5, r4, #0x24
	cmp r0, #0
	movne r0, r5
	blne sub_8006FE4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r5!, {r0, r1, r2, r3, ip, lr}
	STMIA r5, {r0, r1, r2, r3, ip, lr}
	LDR r0, [r4, #0x54]
	cmp r0, #0
	beq _0800AB5C
	mov r2, #0
	mov r1, #0
	bl sub_803E164
	mov r0, #0
	STR r0, [r4, #0x54]
_0800AB5C
	add r0, r4, #0x58
	mov r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r4, r5, ip, lr}
	STMIA r0, {r1, r2, r3}
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_800AB8C
sub_800AB8C ;@ 0x0800AB8C
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	LDR r0, _0800AFC8 ;@ =_0803EE98
	add r5, r4, #0x24
	STR r0, [r4]
	LDR r0, [r4, #0x28]
	mov r6, r1
	cmp r0, #0
	movne r0, r5
	blne sub_8006FE4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r5!, {r0, r1, r2, r3, ip, lr}
	STMIA r5, {r0, r1, r2, r3, ip, lr}
	LDR r0, [r4, #0x54]
	cmp r0, #0
	beq _0800ABF4
	mov r2, #0
	mov r1, #0
	bl sub_803E164
	mov r0, #0
	STR r0, [r4, #0x54]
_0800ABF4
	add r0, r4, #0x58
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r5, ip, lr}
	STMIA r0, {r1, r2, r3, r5}
	mov r1, #0
	mov r0, r4
	bl sub_803E11C
	cmp r6, #0
	movne r0, r4
	LDMNEFD SP!, {r4, r5, r6, lr}
	bne sub_803E128
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_800AC3C
sub_800AC3C ;@ 0x0800AC3C
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [r4, #0x20]
	STRNE r0, [r4, #0x30]
	add r0, r4, #0x24
	mov r6, r0
	STR r5, [r4, #0x34]
	bl sub_8007104
	mov r7, #0
	cmp r0, #1
	bne _0800AC98
	mov r0, r6
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803E164
	STR r7, [r4, #0x54]
	b _0800ACC0
_0800AC98
	cmp r0, #0
	beq _0800ACC0
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803E164
	STR r7, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_0800ACC0
	LDR r0, [r4, #0x30]
	sub r0, r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_800ACD0
sub_800ACD0 ;@ 0x0800ACD0
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	LDR r1, [r0]
	add lr, pc, #0xC ;@ =loc_800ACF0
	LDR r2, [r1, #4]
	mov r4, r0
	add r1, r2, r1
	bx r1
loc_800ACF0
	mov r1, r5
	mov r0, r4
	bl sub_803E134
	LDR r0, [r5, #8]
	add r3, r4, #0x30
	STR r0, [r4, #0x20]
	LDR r0, [r5]
	mov r2, #0
	add r0, r0, #4
	STR r0, [r4, #0x24]
	mov r0, #0x40000000
	STR r0, [r4, #0x28]
	LDR r0, [r5, #8]
	mov r5, #0
	STMIA r3, {r0, r5}
	mov r0, #0x3740
	add r0, r0, #0x8000
	mov r1, #0
	bl sub_803E158
	STR r0, [r4, #0x54]
	LDR r0, _0800AFCC ;@ =sub_800AA3C
	STR r0, [r4, #0x40]
	LDR r0, _0800AFD0 ;@ =sub_800AAF0
	STR r0, [r4, #0x44]
	STR r4, [r4, #0x48]
	add r0, r4, #0x24
	bl sub_8007040
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, lr}
	moveq r0, #1
	bxeq lr
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803E164
	STR r5, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800AD8C
sub_800AD8C ;@ 0x0800AD8C
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _0800ADB0
	mov r0, #0x80
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_0800ADB0
	mov r0, r4
	bl sub_803E110
	LDR r0, _0800AFC8 ;@ =_0803EE98
	mov r1, #0
	STR r0, [r4]
	mov r0, #3
	strh r0, [r4, #6]
	add r0, r4, #0x24
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2}
	mov r0, #0
	STR r0, [r4, #0x54]
	add r0, r4, #0x58
	mov r2, #0
	mov r1, #0
	mov lr, #0
	mov ip, #0
	mov r3, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2, r3, ip, lr}
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800AE20
sub_800AE20 ;@ 0x0800AE20
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x9c
	add r5, sp, #0x1c
	mov r8, r0
	mov r0, r5
	mov sb, r1
	bl sub_803E110
	LDR r0, _0800AFC8 ;@ =_0803EE98
	add r4, r5, #0x24
	STR r0, [sp, #0x1c]
	mov r0, #3
	strh r0, [sp, #0x22]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	mov r7, #0
	mov ip, #0
	mov lr, #0
	STMIA r4!, {r0, r1, r2, r3, r6, r7, ip, lr}
	STMIA r4, {r0, r1, r2, r3}
	mov r6, #0
	STR r6, [sp, #0x70]
	add r0, r5, #0x58
	mov r3, #0
	mov r2, #0
	mov r1, #0
	mov r7, #0
	mov lr, #0
	mov ip, #0
	STMIA r0!, {r1, r2, r3, r7, ip, lr}
	STMIA r0, {r1, r2, r3, r7}
	add r7, sp, #4
	mov r0, r7
	sub r4, r4, #0x20
	bl sub_803E170
	mov r1, r7
	mov r0, r5
	STR r8, [sp, #4]
	STR sb, [sp, #0xc]
	bl sub_800ACD0
	cmp r0, #0
	bne _0800AEF0
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_0800AEF0
	ldrh r0, [sp, #0x20]
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [sp, #0x3c]
	STRNE r0, [sp, #0x4c]
	mov r0, #0x1000000
	STR r0, [sp, #0x50]
	mov r0, r4
	bl sub_8007104
	cmp r0, #1
	bne _0800AF3C
	mov r0, r4
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl sub_803E164
	STR r6, [sp, #0x70]
	b _0800AF5C
_0800AF3C
	cmp r0, #0
	beq _0800AF5C
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl sub_803E164
	STR r6, [sp, #0x70]
	b _0800AF68
_0800AF5C
	LDR r0, [sp, #0x4c]
	adds r0, r0, #-0x1000000
	bne _0800AF88
_0800AF68
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_0800AF88
	mov r4, #1
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr

	arm_func_start sub_800AFA8
sub_800AFA8 ;@ 0x0800AFA8
	LDR r0, [r0, #0x3c]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_800AFB8
sub_800AFB8 ;@ 0x0800AFB8
	LDR r0, [r1]
	bx lr

	arm_func_start sub_800AFC0
sub_800AFC0 ;@ 0x0800AFC0
	mov r0, #4
	bx lr
	ALIGN
_0800AFC8 DCDU gUnknown_0803EE98
_0800AFCC DCDU sub_800AA3C
_0800AFD0 DCDU sub_800AAF0
