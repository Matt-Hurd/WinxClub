	AREA text, CODE
	INCLUDE asm/macros.inc

	IMPORT gUnknown_03007F00
	IMPORT gUnknown_03007FA0
	IMPORT sub_0803CDF4
	ENTRY

	arm_func_start start
start ;@ 0x08000000
	b _08000100
	INCLUDE asm/rom_header.inc

_80000C0
    b _08000100
_080000C4
	DCB 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DCB 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_80000E0
    b _08000100
_080000E4
	DCB 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DCB 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_08000100
	mov r0, #0x12
	msr cpsr_fc, r0
	LDR sp, _0800012C ;@ =gUnknown_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	LDR sp, _08000128 ;@ =gUnknown_03007F00
	LDR r1, _08000130 ;@ =sub_8000134
	mov lr, pc
	bx r1
_08000124
	b _08000100
	ALIGN
_08000128 DCDU gUnknown_03007F00
_0800012C DCDU gUnknown_03007FA0
_08000130 DCDU sub_8000134

	arm_func_start sub_8000134
sub_8000134 ;@ 0x08000134
	add r8, pc, #0xC4 ;@ =_08000200
	ldmia r8, {r0, r1}
	add r0, r0, r8
	add r1, r1, r8
	sub fp, r0, #1
_08000148
	cmp r0, r1
	beq _080001A0
	ldmia r0!, {r4, r5, r6}
	cmp r4, r5
	beq _08000148
	tst r4, #1
	addne r4, r4, fp
	tst r5, #1
	addne r5, r5, fp
	tst r5, #2
	addne r5, r5, sb
	bic r5, r5, #3
_08000178
	subs r6, r6, #0x10
	ldmhsia r4!, {r2, r3, r7, ip}
	stmhsia r5!, {r2, r3, r7, ip}
	bhi _08000178
	MOVS r6, r6, LSL #0x1d
	ldmhsia r4!, {r2, r3}
	stmhsia r5!, {r2, r3}
	LDRMI r7, [r4], #4
	STRMI r7, [r5], #4
	b _08000148
_080001A0
	LDR r2, [r8, #8]
	LDR r3, [r8, #0xc]
	add r2, r2, r8
	add r3, r3, r8
	sub ip, r2, #1
	mov r7, #0
	mov r0, #0
	mov r6, #0
	mov fp, #0
_080001C4
	cmp r2, r3
	bleq sub_0803CDF4
	ldmia r2!, {r4, r5}
	tst r4, #1
	addne r4, r4, ip
	tst r4, #2
	addne r4, r4, sb
	bic r4, r4, #3
_080001E4
	subs r5, r5, #0x10
	stmhsia r4!, {r0, r6, r7, fp}
	bhi _080001E4
	MOVS r5, r5, LSL #0x1d
	stmhsia r4!, {r0, r6}
	STRMI r7, [r4], #4
	b _080001C4
	ALIGN
_08000200 DCDU 0x00051578
_08000204 DCDU 0x000515A8
_08000208 DCDU 0x000515A8
_0800020C DCDU 0x000515C8
	END
