    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_8012334
	IMPORT sub_803DA18
	IMPORT sub_803E11C
	IMPORT sub_803E128

	thumb_func_start sub_80403A4
sub_80403A4 ;@ 0x080403A4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, #4
	bl sub_8012334
	cmp r5, #0
	beq _080403BA
	adds r0, r4, #0
	bl sub_803DA18
_080403BA
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	arm_func_start sub_80403C0
sub_80403C0 ;@ 0x080403C0
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803E128
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_80403EC
sub_80403EC ;@ 0x080403EC
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803E128
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8040418
sub_8040418 ;@ 0x08040418
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803E128
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	thumb_func_start sub_8040444
sub_8040444 ;@ 0x08040444
	bx pc
	ALIGN

	arm_func_start sub_8040448
sub_8040448 ;@ 0x08040448
	LDR r3, _08040464 ;@ =0x66666667
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #9
	rsb r1, r2, r1, asr #2
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040464 DCDU 0x66666667
	END