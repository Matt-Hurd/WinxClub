    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003C3C
	IMPORT gUnknown_03003EA8
	IMPORT sub_8004FFC
	IMPORT sub_8005106
	IMPORT sub_8012BA0
	IMPORT __16__rt_memclr_w
	IMPORT __vec_ctor_p__FPvUiT2bPFPv_v
	IMPORT __vec_dtor__FPvUiPFPvi_vPFPv_v
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	arm_func_start sub_8013024
sub_8013024 ;@ 0x08013024
	STMFD SP!, {r4, r5, lr}
	mov r5, #0x8000
	sub r5, r5, #8
_08013030
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	bgt _08013068
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
_08013068
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	MOV r4, ip, LSL #0x10
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	MOV r4, r4, ASR #0x10
	bgt _080130B4
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
_080130B4
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	orr ip, r4, ip, lsl #8
	strh ip, [r0], #2
	subs r3, r3, #2
	bne _08013030
	LDMFD SP!, {r4, r5, lr}
	mov r0, r2
	bx lr
	
	arm_func_start sub_80130DC
sub_80130DC ;@ 0x080130DC
_080130DC
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x144
	LDR r5, [sp, #0x168]
	mov r8, r1
	mov r6, r0
	LDRB r1, [r6, #0x173]
	mov r0, #0
	mov sl, r2
	mov r4, r3
	cmp r1, #0
	beq _0801315C
	b _08013150
_0801310C
	add r1, r0, r0, lsr #31
	MOV r1, r1, ASR #1
	add r1, r6, r1, lsl #1
	add r1, r1, #0x100
	ldrh r1, [r1, #0x74]
	and r2, r4, sl
	MOV r2, r2, LSR #1
	add r2, r8, r2, lsl #1
	strh r1, [r2]
	LDRB r1, [r6, #0x173]
	add r4, r4, #2
	add r0, r0, #2
	sub r1, r1, #2
	ands r1, r1, #0xff
	STRB r1, [r6, #0x173]
	sub r5, r5, #2
	beq _08013158
_08013150
	cmp r5, #0
	bne _0801310C
_08013158
	and r4, r4, sl
_0801315C
	cmp r5, #0
	beq _0801329C
	LDRSH r7, [r6]
	add fp, sl, #1
	cmp r5, #0xa0
	blo _08013204
_08013174
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r4, #0xa0
	STR r0, [sp, #0x140]
	cmp r0, fp
	bls _080131CC
	sub sb, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r4, sp
	mov r3, sb
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	rsb r3, sb, #0xa0
	add r1, r4, sb, lsl #1
	bl sub_8013024
	mov r7, r0
	b _080131E8
_080131CC
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, #0xa0
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r7, r0
_080131E8
	LDR r0, [sp, #0x140]
	sub r5, r5, #0xa0
	cmp r5, #0xa0
	and r4, r0, sl
	bhs _08013174
	cmp r5, #0
	beq _08013294
_08013204
	mov sb, sp
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r5, r4
	cmp r0, fp
	bls _08013254
	sub fp, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, fp
	mov r2, r7
	mov r1, sb
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	sub r3, r5, fp
	add r1, sb, fp, lsl #1
	bl sub_8013024
	b _0801326C
_08013254
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, r5
	mov r2, r7
	mov r1, sb
	bl sub_8013024
_0801326C
	add r1, r4, r5
	and r4, r1, sl
	rsb r8, r5, #0xa0
	mov r2, r0
	add r0, r6, #0x174
	mov r3, r8
	add r1, sb, r5, lsl #1
	bl sub_8013024
	mov r7, r0
	STRB r8, [r6, #0x173]
_08013294
	strh r7, [r6]
	b _080132E4
_0801329C
	LDRB r1, [r6, #0x173]
	cmp r1, #0
	movne r1, #0
	bls _080132E4
_080132AC
	add r2, r0, r0, lsr #31
	MOV r2, r2, ASR #1
	add r2, r6, r2, lsl #1
	add r2, r2, #0x100
	ldrh r2, [r2, #0x74]
	MOV r3, r1, LSR #1
	add r3, r6, r3, lsl #1
	add r3, r3, #0x100
	strh r2, [r3, #0x74]
	LDRB r2, [r6, #0x173]
	add r1, r1, #2
	add r0, r0, #2
	cmp r2, r1
	bhi _080132AC
_080132E4
	mov r0, r4
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	thumb_func_start sub_80132F4
sub_80132F4 ;@ 0x080132F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x43
	lsls r1, r1, #3
	bl __16__rt_memclr_w
	movs r1, #0x21
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #0x80
	strb r0, [r1, #4]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x71
	strb r0, [r4, #3]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8013318
sub_8013318 ;@ 0x08013318
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x10
	adds r5, r1, #0
	ldm r0!, {r0, r1}
	cmp r1, r0
	beq _0801332E
	bl __da__FPv
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
_0801332E
	cmp r5, #0
	beq _08013338
	adds r0, r4, #0
	bl sub_803DA18
_08013338
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801333E
sub_801333E ;@ 0x0801333E
	push {r4, r5, r6, lr}
	ldr r5, _08013430 ;@ =gUnknown_03003C3C
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	cmp r0, #0
	sub sp, #8
	beq _08013358
	adds r3, r6, #0
	movs r1, #0x1c
	ldr r2, _08013434 ;@ =sub_8013318
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
_08013358
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1c
	movs r3, #1
	adds r1, r4, #0
	bl __vec_ctor_p__FPvUiT2bPFPv_v
	str r0, [r5]
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013386
sub_8013386 ;@ 0x08013386
	ldr r0, _08013430 ;@ =gUnknown_03003C3C
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _0801339A
	movs r3, #0
	movs r1, #0x1c
	ldr r2, _08013434 ;@ =sub_8013318
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
_0801339A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80133A0
sub_80133A0 ;@ 0x080133A0
	ldr r1, _08013430 ;@ =gUnknown_03003C3C
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_80133AE
sub_80133AE ;@ 0x080133AE
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r3, _08013430 ;@ =gUnknown_03003C3C
	push {r4}
	ldrh r2, [r1]
	ldr r4, [r3]
	lsls r0, r0, #2
	strh r2, [r4, r0]
	adds r1, #2
	ldrh r2, [r1]
	ldr r4, [r3]
	adds r1, #2
	adds r4, r0, r4
	strh r2, [r4, #2]
	ldr r3, [r3]
	ldm r1!, {r2}
	adds r0, r0, r3
	str r2, [r0, #4]
	ldrb r3, [r1]
	lsls r2, r2, #2
	strb r3, [r0, #0x18]
	adds r3, r1, #4
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r3, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	adds r1, r2, r1
	str r1, [r0, #0xc]
	str r3, [r0, #0x14]
	pop {r4}
	movs r0, #1
	bx lr

	thumb_func_start sub_80133F0
sub_80133F0 ;@ 0x080133F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08013438 ;@ =gUnknown_03003EA8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80133AE
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801340A
sub_801340A ;@ 0x0801340A
	ldrb r3, [r1]
	adds r2, r0, #0
	movs r0, #0
	cmp r3, #0
	beq _0801342C
	ldr r2, [r2, #8]
_08013416
	ldrb r3, [r1]
	adds r1, #1
	lsls r3, r3, #2
	ldr r3, [r2, r3]
	lsrs r3, r3, #0x18
	adds r0, r3, r0
	ldrb r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, #0
	bne _08013416
_0801342C
	bx lr
	ALIGN
_08013430 DCDU gUnknown_03003C3C
_08013434 DCDU sub_8013318
_08013438 DCDU gUnknown_03003EA8
	END