    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_030033EC
	IMPORT gUnknown_030033F0
	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003D98
	IMPORT gUnknown_03003EC4
	IMPORT gUnknown_03007F00
	IMPORT sub_80046EE
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047B6
	IMPORT sub_80047BA
	IMPORT sub_80047BE
	IMPORT sub_80047DA
	IMPORT sub_8005106
	IMPORT sub_80051D6
	IMPORT sub_8005220
	IMPORT sub_803B8CA
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D6
	IMPORT sub_803B8D8
	IMPORT sub_803B904
	IMPORT sub_803B908
	IMPORT sub_803E17C
	IMPORT sub_803E234
	IMPORT sub_803E240
	IMPORT sub_803E24C
	IMPORT sub_803E258
	IMPORT sub_803E260
	IMPORT sub_803E268
	IMPORT sub_803E270
	IMPORT sub_803E278
	IMPORT sub_803E280
	IMPORT sub_803E288
	IMPORT sub_8041438
	IMPORT sub_8041440


	thumb_func_start sub_803B914
sub_803B914 ;@ 0x0803B914
	bx pc
	ALIGN

	arm_func_start sub_803B918
sub_803B918 ;@ 0x0803B918
	MOV r3, r2, ASR #0x20
	b sub_803CE48

	thumb_func_start sub_803B920
sub_803B920 ;@ 0x0803B920
	bx pc
	ALIGN

	arm_func_start sub_803B924
sub_803B924 ;@ 0x0803B924
	mov r3, #0
	b sub_803CE48

	thumb_func_start sub_803B92C
sub_803B92C ;@ 0x0803B92C
	bx pc
	ALIGN

	arm_func_start sub_803B930
sub_803B930 ;@ 0x0803B930
	MOV r3, r1, ASR #0x1f
	mov r2, r1
	MOV r1, r0, ASR #0x1f
	b sub_803CE48

	thumb_func_start sub_803B940
sub_803B940 ;@ 0x0803B940
	bx pc
	ALIGN

	arm_func_start sub_803B944
sub_803B944 ;@ 0x0803B944
	STMFD SP!, {r4, lr}
	MOVS r4, r1, ASR #1
	eor r4, r4, r3, lsr #1
	bpl _0803B95C
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B95C
	tst r3, r3
	bpl _0803B96C
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B96C
	bl sub_803BA28
	tst r4, #0x40000000
	beq _0803B980
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B980
	tst r4, #-0x80000000
	beq _0803B990
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B990
	LDMFD SP!, {r4, lr}
	bx lr

	thumb_func_start sub_803B998
sub_803B998 ;@ 0x0803B998
	bx pc
	ALIGN

	arm_func_start sub_803B99C
sub_803B99C ;@ 0x0803B99C
	subs r3, r2, #0x20
	bpl _0803B9B8
	rsb r3, r2, #0x20
	MOV r1, r1, LSL r2
	orr r1, r1, r0, lsr r3
	MOV r0, r0, LSL r2
	bx lr
_0803B9B8
	MOV r1, r0, LSL r3
	mov r0, #0
	bx lr

	thumb_func_start sub_803B9C4
sub_803B9C4 ;@ 0x0803B9C4
	bx pc
	ALIGN

	arm_func_start sub_803B9C8
sub_803B9C8 ;@ 0x0803B9C8
	STMFD SP!, {r4, lr}
	MOVS r4, r3, ASR #1
	eor r4, r4, r1, lsr #1
	bpl _0803B9E0
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B9E0
	tst r1, r1
	bpl _0803B9F0
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B9F0
	bl sub_803CE68
	tst r4, #0x40000000
	beq _0803BA04
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803BA04
	tst r4, #-0x80000000
	beq _0803BA14
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803BA14
	LDMFD SP!, {r4, lr}
	bx lr

	thumb_func_start j_nullsub_7
j_nullsub_7 ;@ 0x0803BA1C
	bx pc
	ALIGN

	arm_func_start nullsub_7
nullsub_7 ;@ 0x0803BA20
	bx lr

	thumb_func_start sub_803BA24
sub_803BA24 ;@ 0x0803BA24
	bx pc
	ALIGN

	arm_func_start sub_803BA28
sub_803BA28 ;@ 0x0803BA28
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	mov r6, #0
	orrs ip, r3, r2, lsr #31
	bne _0803BA88
	tst r2, r2
	beq _0803BD7C
	MOVS ip, r2, LSR #0xf
	addeq r6, r6, #0x10
	MOV ip, r2, LSL r6
	MOVS lr, ip, LSR #0x17
	MOVEQ ip, ip, LSL #8
	addeq r6, r6, #8
	MOVS lr, ip, LSR #0x1b
	MOVEQ ip, ip, LSL #4
	addeq r6, r6, #4
	MOVS lr, ip, LSR #0x1d
	MOVEQ ip, ip, LSL #2
	addeq r6, r6, #2
	MOVS lr, ip, LSR #0x1e
	MOVEQ ip, ip, LSL #1
	addeq r6, r6, #1
	b _0803BAE8
_0803BA88
	tst r3, #-0x80000000
	bne _0803BADC
	MOVS ip, r3, LSR #0xf
	addeq r6, r6, #0x10
	MOV ip, r3, LSL r6
	MOVS lr, ip, LSR #0x17
	MOVEQ ip, ip, LSL #8
	addeq r6, r6, #8
	MOVS lr, ip, LSR #0x1b
	MOVEQ ip, ip, LSL #4
	addeq r6, r6, #4
	MOVS lr, ip, LSR #0x1d
	MOVEQ ip, ip, LSL #2
	addeq r6, r6, #2
	MOVS lr, ip, LSR #0x1e
	MOVEQ ip, ip, LSL #1
	addeq r6, r6, #1
	rsb r3, r6, #0x20
	orr ip, ip, r2, lsr r3
	MOV lr, r2, LSL r6
	b _0803BC10
_0803BADC
	mov ip, r3
	mov lr, r2
	b _0803BD5C
_0803BAE8
	mov r3, #0
	cmp r4, ip, lsl #1
	subhs r4, r4, ip, lsl #1
	addhs r3, r3, #2
	cmp r4, ip
	subhs r4, r4, ip
	adcs r3, r3, #0
	rsb ip, ip, #0
	add r2, r6, #0x20
	cmp r2, #0x20
	blo _0803BB24
	orrs r0, r4, r5, lsr #30
	moveq r4, r5
	moveq r5, #0
	subeq r2, r2, #0x20
_0803BB24
	mov r1, #0
	cmp r2, #0x10
	blo _0803BB3C
	MOVS r0, r4, LSR #0xe
	MOVEQ r4, r4, LSL #0x10
	addeq r1, r1, #0x10
_0803BB3C
	sub lr, r2, r1
	cmp lr, #8
	blo _0803BB54
	MOVS r0, r4, LSR #0x16
	MOVEQ r4, r4, LSL #8
	addeq r1, r1, #8
_0803BB54
	rsb r0, r1, #0x20
	orr r4, r4, r5, lsr r0
	MOV r5, r5, LSL r1
	sub r2, r2, r1
	cmp r2, #1
	blo _0803BBF0
	sub r2, r2, #1
	and r0, r2, #7
	eor r0, r0, #7
	adds r0, r0, r0, lsl #1
	add pc, pc, r0, lsl #2
	mov r0, r0
_0803BB84
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	sub r2, r2, #8
	tst r2, r2
	bpl _0803BB84
_0803BBF0
	MOV r2, r4, LSR r6
	bic r4, r4, r2, lsl r6
	adcs r0, r5, r5
	adc r1, r4, r4
	add r1, r1, r3, lsl r6
	mov r3, #0
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr
_0803BC10
	mov r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	rsbs lr, lr, #0
	rsc ip, ip, #0
	mov r1, #0
	cmp r6, #0x10
	blo _0803BC70
	MOVS r0, r4, LSR #0xe
	MOVEQ r4, r4, LSL #0x10
	addeq r1, r1, #0x10
_0803BC70
	sub r2, r6, r1
	cmp r2, #8
	blo _0803BC88
	MOVS r0, r4, LSR #0x16
	MOVEQ r4, r4, LSL #8
	addeq r1, r1, #8
_0803BC88
	rsb r0, r1, #0x20
	orr r4, r4, r5, lsr r0
	MOV r5, r5, LSL r1
	sub r2, r6, r1
	cmp r2, #1
	blo _0803BD24
	sub r2, r2, #1
	and r0, r2, #3
	rsb r0, r0, #3
	adds r0, r0, r0, lsl #1
	add pc, pc, r0, lsl #3
	mov r0, r0
_0803BCB8
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	sub r2, r2, #4
	tst r2, r2
	bpl _0803BCB8
_0803BD24
	MOV r2, r5, LSR r6
	bic r5, r5, r2, lsl r6
	mov r1, #0
	adcs r0, r5, r5
	adc r1, r1, #0
	MOVS lr, r3, LSL r6
	adc r1, r1, #0
	adds r0, r0, lr
	adc r1, r1, #0
	MOV r3, r4, LSR r6
	bic r4, r4, r3, lsl r6
	orr r2, r2, r4, ror r6
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr
_0803BD5C
	subs r2, r5, lr
	sbcs r3, r4, ip
	movlo r2, r5
	movlo r3, r4
	mov r1, #0
	adc r0, r1, r1
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr
_0803BD7C
	LDMFD SP!, {r4, r5, r6, lr}
	b sub_803CF3C

	thumb_func_start sub_803BD84
sub_803BD84 ;@ 0x0803BD84
	bx pc
	ALIGN

	arm_func_start sub_803BD88
sub_803BD88 ;@ 0x0803BD88
	subs r3, r2, #0x20
	bpl _0803BDA4
	rsb r3, r2, #0x20
	MOV r0, r0, LSR r2
	orr r0, r0, r1, lsl r3
	MOV r1, r1, LSR r2
	bx lr
_0803BDA4
	MOV r0, r1, LSR r3
	mov r1, #0
	bx lr

	thumb_func_start sub_803BDB0
sub_803BDB0 ;@ 0x0803BDB0
	push {r3, lr}
	movs r0, #0xc
	bl sub_803CF28
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_803BDC0
sub_803BDC0 ;@ 0x0803BDC0
	push {r4, r5}
	ldr r2, _0803BE5C ;@ =gUnknown_03003D98
	movs r1, #0x17
	str r1, [r2]
	movs r1, #0x36
	str r1, [r2, #4]
	ldr r4, _0803BE5C ;@ =gUnknown_03003D98
	ldr r2, _0803BE60 ;@ =0x66D619E1
	movs r1, #0
	adds r4, #8
_0803BDD4
	lsrs r3, r0, #0x10
	adds r3, r3, r0
	lsls r5, r1, #2
	str r3, [r4, r5]
	ldr r3, _0803BE64 ;@ =0x00010DCD
	adds r1, #1
	muls r0, r3
	adds r0, r0, r2
	cmp r1, #0x37
	blt _0803BDD4
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803BDEC
sub_803BDEC ;@ 0x0803BDEC
	ldr r1, _0803BE5C ;@ =gUnknown_03003D98
	push {r4, r5}
	movs r0, #0x17
	str r0, [r1]
	movs r0, #0x36
	str r0, [r1, #4]
	ldr r2, _0803BE5C ;@ =gUnknown_03003D98
	ldr r1, _0803BE60 ;@ =0x66D619E1
	movs r0, #0
	movs r3, #1
	adds r2, #8
_0803BE02
	lsrs r4, r3, #0x10
	adds r4, r4, r3
	lsls r5, r0, #2
	str r4, [r2, r5]
	adds r4, r3, #0
	ldr r3, _0803BE64 ;@ =0x00010DCD
	adds r0, #1
	muls r3, r4
	adds r3, r3, r1
	cmp r0, #0x37
	blt _0803BE02
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803BE1C
sub_803BE1C ;@ 0x0803BE1C
	ldr r0, _0803BE5C ;@ =gUnknown_03003D98
	push {r4, r5}
	ldr r1, [r0, #4]
	ldr r3, [r0]
	lsls r2, r1, #2
	ldr r1, _0803BE5C ;@ =gUnknown_03003D98
	lsls r5, r3, #2
	adds r1, #8
	ldr r4, [r1, r2]
	ldr r5, [r1, r5]
	subs r3, #1
	adds r4, r4, r5
	str r4, [r1, r2]
	str r3, [r0]
	subs r1, #8
	ldr r1, [r1, #4]
	movs r2, #0x36
	subs r1, #1
	cmp r3, #0
	bge _0803BE4A
	str r1, [r0, #4]
	str r2, [r0]
	b _0803BE52
_0803BE4A
	str r1, [r0, #4]
	cmp r1, #0
	bge _0803BE52
	str r2, [r0, #4]
_0803BE52
	lsls r0, r4, #1
	lsrs r0, r0, #1
	pop {r4, r5}
	bx lr
	ALIGN
_0803BE5C DCDU gUnknown_03003D98
_0803BE60 DCDU 0x66D619E1
_0803BE64 DCDU 0x00010DCD

	thumb_func_start sub_803BE68
sub_803BE68 ;@ 0x0803BE68
	bx pc
	ALIGN

	arm_func_start sub_803BE6C
sub_803BE6C ;@ 0x0803BE6C
	mov r2, #0
_0803BE70
	cmp r1, #4
	blo _0803BE9C
	ands ip, r0, #3
	beq _0803BEB8
	rsb ip, ip, #4
	cmp ip, #2
	STRB r2, [r0], #1
	STRGEB r2, [r0], #1
	STRGTB r2, [r0], #1
	sub r1, r1, ip
	b _0803BEB8
_0803BE9C
	MOVS ip, r1, LSL #0x1f
	STRHSB r2, [r0], #1
	STRHSB r2, [r0], #1
	STRMIB r2, [r0], #1
	bx lr

	thumb_func_start sub_803BEB0
sub_803BEB0 ;@ 0x0803BEB0
	bx pc
	ALIGN

	arm_func_start sub_803BEB4
sub_803BEB4 ;@ 0x0803BEB4
	mov r2, #0
_0803BEB8
	stmdb sp!, {lr}
	mov r3, r2
	mov ip, r2
	mov lr, r2
	subs r1, r1, #0x20
_0803BECC
	STMHSIA r0!, {r2, r3, ip, lr}
	STMHSIA r0!, {r2, r3, ip, lr}
	subhss r1, r1, #0x20
	bhs _0803BECC
	MOVS r1, r1, LSL #0x1c
	STMHSIA r0!, {r2, r3, ip, lr}
	STMMIIA r0!, {r2, r3}
	LDMIA sp!, {lr}
	MOVS r1, r1, LSL #2
	STRHS r2, [r0], #4
	bxeq lr
	STRMIB r2, [r0], #1
	STRMIB r2, [r0], #1
	tst r1, #0x40000000
	STRNEB r2, [r0], #1
	bx lr

	thumb_func_start sub_803BF0C
sub_803BF0C ;@ 0x0803BF0C
	bx pc
	ALIGN

	arm_func_start sub_803BF10
sub_803BF10 ;@ 0x0803BF10
	cmp r2, #3
	bls _0803C014
	ands ip, r0, #3
	beq _0803BF44
	LDRB r3, [r1], #1
	cmp ip, #2
	add r2, r2, ip
	LDRLSB ip, [r1], #1
	STRB r3, [r0], #1
	LDRCCB r3, [r1], #1
	sub r2, r2, #4
	STRLSB ip, [r0], #1
	STRLOB r3, [r0], #1
_0803BF44
	ands r3, r1, #3
	beq sub_803BFC8
	subs r2, r2, #4
	blo _0803C014
	LDR ip, [r1, -r3]!
	cmp r3, #2
	beq _0803BF84
	bhi _0803BFA4
_0803BF64
	MOV r3, ip, LSR #8
	LDR ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #24
	STR r3, [r0], #4
	bhs _0803BF64
	add r1, r1, #1
	b _0803C014
_0803BF84
	MOV r3, ip, LSR #0x10
	LDR ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #16
	STR r3, [r0], #4
	bhs _0803BF84
	add r1, r1, #2
	b _0803C014
_0803BFA4
	MOV r3, ip, LSR #0x18
	LDR ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #8
	STR r3, [r0], #4
	bhs _0803BFA4
	add r1, r1, #3
	b _0803C014

	thumb_func_start sub_803BFC4
sub_803BFC4 ;@ 0x0803BFC4
	bx pc
	ALIGN

	arm_func_start sub_803BFC8
sub_803BFC8 ;@ 0x0803BFC8
	STMFD SP!, {r4, lr}
	subs r2, r2, #0x20
	blo _0803BFEC
_0803BFD4
	LDMHSIA r1!, {r3, r4, ip, lr}
	STMHSIA r0!, {r3, r4, ip, lr}
	LDMHSIA r1!, {r3, r4, ip, lr}
	STMHSIA r0!, {r3, r4, ip, lr}
	subhss r2, r2, #0x20
	bhs _0803BFD4
_0803BFEC
	MOVS ip, r2, LSL #0x1c
	LDMHSIA r1!, {r3, r4, ip, lr}
	STMHSIA r0!, {r3, r4, ip, lr}
	LDMMIIA r1!, {r3, r4}
	STMMIIA r0!, {r3, r4}
	LDMFD SP!, {r4, lr}
	MOVS ip, r2, LSL #0x1e
	LDRHS r3, [r1], #4
	STRHS r3, [r0], #4
	bxeq lr
_0803C014
	MOVS r2, r2, LSL #0x1f
	LDRMIB r2, [r1], #1
	LDRCSB r3, [r1], #1
	LDRCSB ip, [r1], #1
	STRMIB r2, [r0], #1
	STRHSB r3, [r0], #1
	STRHSB ip, [r0], #1
	bx lr

	thumb_func_start sub_803C034
sub_803C034 ;@ 0x0803C034
	bx pc
	ALIGN

	arm_func_start sub_803C038
sub_803C038 ;@ 0x0803C038
	and r3, r1, #0xff
	mov r1, r2
	orr r2, r3, r3, lsl #8
	orr r2, r2, r2, lsl #16
	b _0803BE70

	thumb_func_start sub_803C04C
sub_803C04C ;@ 0x0803C04C
	bx pc
	ALIGN

	arm_func_start sub_803C050
sub_803C050 ;@ 0x0803C050
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	eors r3, r2, r1, asr #32
	rsbhs r1, r1, #0
	rsbs ip, r0, r1, lsr #3
	blo _0803C0EC
	rsbs ip, r0, r1, lsr #8
	blo _0803C0B0
	MOV r0, r0, LSL #8
	orr r2, r2, #0xff000000
	rsbs ip, r0, r1, lsr #4
	blo _0803C0E0
	rsbs ip, r0, r1, lsr #8
	blo _0803C0B0
	MOV r0, r0, LSL #8
	orr r2, r2, #0xff0000
	rsbs ip, r0, r1, lsr #8
	MOVCS r0, r0, LSL #8
	orrhs r2, r2, #0xff00
	rsbs ip, r0, r1, lsr #4
	blo _0803C0E0
	rsbs ip, r0, #0
	bhs sub_803CF3C
_0803C0AC
	MOVCS r0, r0, LSR #8
_0803C0B0
	rsbs ip, r0, r1, lsr #7
	subhs r1, r1, r0, lsl #7
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #6
	subhs r1, r1, r0, lsl #6
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #5
	subhs r1, r1, r0, lsl #5
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #4
	subhs r1, r1, r0, lsl #4
	adc r2, r2, r2
_0803C0E0
	rsbs ip, r0, r1, lsr #3
	subhs r1, r1, r0, lsl #3
	adc r2, r2, r2
_0803C0EC
	rsbs ip, r0, r1, lsr #2
	subhs r1, r1, r0, lsl #2
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #1
	subhs r1, r1, r0, lsl #1
	adc r2, r2, r2
	rsbs ip, r0, r1
	subhs r1, r1, r0
	adcs r2, r2, r2
	bhs _0803C0AC
	eors r0, r2, r3, asr #31
	add r0, r0, r3, lsr #31
	rsbhs r1, r1, #0
	bx lr

	thumb_func_start sub_803C124
sub_803C124 ;@ 0x0803C124
	bx pc
	ALIGN

	arm_func_start sub_803C128
sub_803C128 ;@ 0x0803C128
	mov r2, #0
	rsbs ip, r0, r1, lsr #3
	blo _0803C1B8
	rsbs ip, r0, r1, lsr #8
	blo _0803C17C
	MOV r0, r0, LSL #8
	orr r2, r2, #0xff000000
	rsbs ip, r0, r1, lsr #4
	blo _0803C1AC
	rsbs ip, r0, r1, lsr #8
	blo _0803C17C
	MOV r0, r0, LSL #8
	orr r2, r2, #0xff0000
	rsbs ip, r0, r1, lsr #8
	MOVCS r0, r0, LSL #8
	orrhs r2, r2, #0xff00
	rsbs ip, r0, r1, lsr #4
	blo _0803C1AC
	rsbs ip, r0, #0
	bhs sub_803CF3C
_0803C178
	MOVCS r0, r0, LSR #8
_0803C17C
	rsbs ip, r0, r1, lsr #7
	subhs r1, r1, r0, lsl #7
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #6
	subhs r1, r1, r0, lsl #6
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #5
	subhs r1, r1, r0, lsl #5
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #4
	subhs r1, r1, r0, lsl #4
	adc r2, r2, r2
_0803C1AC
	rsbs ip, r0, r1, lsr #3
	subhs r1, r1, r0, lsl #3
	adc r2, r2, r2
_0803C1B8
	rsbs ip, r0, r1, lsr #2
	subhs r1, r1, r0, lsl #2
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #1
	subhs r1, r1, r0, lsl #1
	adc r2, r2, r2
	rsbs ip, r0, r1
	subhs r1, r1, r0
	adcs r2, r2, r2
	bhs _0803C178
	mov r0, r2
	bx lr
	ALIGN
_0803C1E8 DCDU 0x01010101

	thumb_func_start sub_803C1EC
sub_803C1EC ;@ 0x0803C1EC
	bx pc
	ALIGN

	arm_func_start sub_803C1F0
sub_803C1F0 ;@ 0x0803C1F0
	tst r0, #3
	tsteq r1, #3
	bne _0803C25C
	stmdb sp!, {lr}
	LDR lr, _0803C1E8 ;@ =0x01010101
_0803C204
	LDR r2, [r0], #4
	LDR r3, [r1], #4
	sub ip, r2, lr
	bic ip, ip, r2
	ands ip, ip, lr, lsl #7
	cmpeq r2, r3
	beq _0803C204
	LDMIA sp!, {lr}
	MOV r0, r3, LSL #0x18
	subs r0, r0, r2, lsl #24
	tsteq ip, #0xff0
	bne _0803C254
	MOV r0, r3, LSL #0x10
	subs r0, r0, r2, lsl #16
	tsteq ip, #0xff00
	bne _0803C254
	MOV r0, r3, LSL #8
	subs r0, r0, r2, lsl #8
	tsteq ip, #0xff0000
	subeqs r0, r3, r2
_0803C254
	MOVNE r0, r0, rrx
	bx lr
_0803C25C
	LDRB r2, [r0], #1
	LDRB r3, [r1], #1
	cmp r2, #1
	cmphs r2, r3
	bne _0803C284
	LDRB r2, [r0], #1
	LDRB r3, [r1], #1
	cmp r2, #1
	cmphs r2, r3
	beq _0803C25C
_0803C284
	sub r0, r2, r3
	bx lr

	thumb_func_start sub_803C28C
sub_803C28C ;@ 0x0803C28C
	adds r2, r0, #0
	adds r3, r0, #0
	orrs r3, r1
	lsls r3, r3, #0x1e
	push {r4, r5, r6}
	bne _0803C2BA
	ldr r4, _0803C2D8 ;@ =0x01010101
	lsls r6, r4, #7
	b _0803C2A0
_0803C29E
	stm r2!, {r3}
_0803C2A0
	ldm r1!, {r3}
	subs r5, r3, r4
	bics r5, r3
	ands r5, r6
	beq _0803C29E
_0803C2AA
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r2]
	adds r2, #1
	cmp r1, #0
	beq _0803C2D2
	lsrs r3, r3, #8
	b _0803C2AA
_0803C2BA
	ldrb r3, [r1]
	adds r1, #1
	strb r3, [r2]
	adds r2, #1
	cmp r3, #0
	beq _0803C2D2
	ldrb r3, [r1]
	adds r1, #1
	strb r3, [r2]
	adds r2, #1
	cmp r3, #0
	bne _0803C2BA
_0803C2D2
	pop {r4, r5, r6}
	bx lr
	ALIGN
_0803C2D8 DCDU 0x01010101

	thumb_func_start sub_803C2DC
sub_803C2DC ;@ 0x0803C2DC
	push {r4, r5}
	adds r4, r0, #1
	lsls r1, r0, #0x1e
	beq _0803C2F6
_0803C2E4
	ldrb r1, [r0]
	adds r0, #1
	cmp r1, #0
	bne _0803C2F2
	subs r0, r0, r4
_0803C2EE
	pop {r4, r5}
	bx lr
_0803C2F2
	lsls r1, r0, #0x1e
	bne _0803C2E4
_0803C2F6
	ldr r2, _0803C324 ;@ =0x01010101
	lsls r5, r2, #7
_0803C2FA
	ldm r0!, {r1}
	subs r3, r1, r2
	bics r3, r1
	ands r3, r5
	beq _0803C2FA
	subs r0, r0, r4
	lsls r2, r1, #0x18
	bne _0803C30E
	subs r0, #3
	b _0803C2EE
_0803C30E
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x18
	bne _0803C318
	subs r0, #2
	b _0803C2EE
_0803C318
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	bne _0803C2EE
	subs r0, #1
	b _0803C2EE
	ALIGN
_0803C324 DCDU 0x01010101

	thumb_func_start sub_803C328
sub_803C328 ;@ 0x0803C328
	push {r4, r5, r6, r7}
	adds r3, r0, #0
	adds r4, r0, #0
	orrs r4, r1
	lsls r4, r4, #0x1e
	bne _0803C34E
	ldr r5, _0803C378 ;@ =0x01010101
	lsls r7, r5, #7
	b _0803C340
_0803C33A
	adds r1, #4
	subs r2, #4
	stm r3!, {r4}
_0803C340
	cmp r2, #4
	blo _0803C34E
	ldr r4, [r1]
	subs r6, r4, r5
	bics r6, r4
	ands r6, r7
	beq _0803C33A
_0803C34E
	cmp r2, #0
	beq _0803C362
_0803C352
	ldrb r4, [r1]
	adds r1, #1
	strb r4, [r3]
	adds r3, #1
	cmp r4, #0
	beq _0803C366
	subs r2, #1
	bne _0803C352
_0803C362
	pop {r4, r5, r6, r7}
	bx lr
_0803C366
	cmp r2, #1
	bls _0803C362
	subs r1, r2, #1
	movs r2, #0
_0803C36E
	strb r2, [r3]
	adds r3, #1
	subs r1, #1
	bne _0803C36E
	b _0803C362
	ALIGN
_0803C378 DCDU 0x01010101

	thumb_func_start sub_803C37C
sub_803C37C ;@ 0x0803C37C
	push {r4, r5}
_0803C37E
	adds r3, r0, #0
	adds r4, r1, #0
_0803C382
	ldrb r2, [r3]
	ldrb r5, [r4]
	adds r4, #1
	adds r3, #1
	cmp r2, #1
	blo _0803C392
	cmp r2, r5
	beq _0803C382
_0803C392
	cmp r5, #0
	beq _0803C39C
	cmp r2, #0
	bne _0803C3A0
	adds r0, r2, #0
_0803C39C
	pop {r4, r5}
	bx lr
_0803C3A0
	adds r0, #1
	b _0803C37E

	thumb_func_start sub_803C3A4
sub_803C3A4 ;@ 0x0803C3A4
	push {r6, r7, lr}
	push {r3, r4, r5}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r0, r1
	beq _0803C3C0
_0803C3B4
	adds r0, r4, #0
	bl sub_803B8D6
	adds r4, r4, r6
	cmp r4, r5
	bne _0803C3B4
_0803C3C0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_803C3C8
sub_803C3C8 ;@ 0x0803C3C8
	push {r6, r7, lr}
	push {r3, r4, r5}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r0, r1
	beq _0803C3E6
_0803C3D8
	movs r1, #0
	adds r0, r4, #0
	bl sub_803B8D6
	adds r4, r4, r6
	cmp r4, r5
	bne _0803C3D8
_0803C3E6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803C3EC
sub_803C3EC ;@ 0x0803C3EC
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	sub sp, #4
	ldr r7, [sp, #0x28]
	adds r5, r0, #0
	beq _0803C41C
	cmp r3, #0
	beq _0803C3FE
	stm r5!, {r1}
_0803C3FE
	cmp r7, #0
	beq _0803C41C
	adds r4, r5, #0
	subs r6, r1, #1
	cmp r1, #0
	bls _0803C41C
_0803C40A
	adds r0, r4, #0
	bl sub_803B8D6
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bhi _0803C40A
_0803C41C
	adds r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_803C428
sub_803C428 ;@ 0x0803C428
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	adds r7, r2, #0
	cmp r0, #0
	sub sp, #4
	beq _0803C46C
	subs r6, r0, #4
	cmp r7, #0
	beq _0803C45E
	ldr r1, [r6]
	ldr r3, [sp, #8]
	adds r2, r1, #0
	muls r2, r3
	adds r4, r2, r0
	subs r5, r1, #1
	cmp r1, #0
	bls _0803C45E
_0803C44A
	ldr r3, [sp, #8]
	movs r1, #0
	subs r4, r4, r3
	adds r0, r4, #0
	bl sub_803B8D6
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bhi _0803C44A
_0803C45E
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0803C474
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	bl sub_803B8CA
_0803C46C
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803C474
	adds r0, r6, #0
	bl sub_803DA4C
	b _0803C46C

	thumb_func_start sub_803C47C
sub_803C47C ;@ 0x0803C47C
	push {r4, r5, lr}
	ldr r3, _0803C4AC ;@ =0x0000095B
	sub sp, #0x3c
	add r3, pc
	str r3, [sp, #0x1c]
	ldr r3, _0803C4B0 ;@ =0x00000963
	add r3, pc
	str r3, [sp, #0x20]
	str r0, [sp, #0x34]
	add r5, sp, #0x34
	adds r0, r5, #0
	mov r3, sp
	bl sub_803C4B4
	adds r4, r0, #0
	adds r1, r5, #0
	movs r0, #0
	bl sub_803CDE0
	adds r0, r4, #0
	add sp, #0x3c
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0803C4AC DCDU 0x0000095B
_0803C4B0 DCDU 0x00000963

	thumb_func_start sub_803C4B4
sub_803C4B4 ;@ 0x0803C4B4
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #0x1c]
	ldrb r0, [r1]
	adds r7, r1, #1
	adds r6, r3, #0
	adds r5, r2, #0
	cmp r0, #0
	beq _0803C594
_0803C4CA
	cmp r0, #0x25
	beq _0803C4DE
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	b _0803C752
_0803C4DE
	movs r4, #0
	str r4, [sp, #0x14]
	movs r1, #0
	str r1, [r6, #8]
	movs r1, #1
	movs r2, #4
	movs r0, #8
_0803C4EC
	ldrb r3, [r7]
	adds r7, #1
	cmp r3, #0x2b
	str r3, [sp, #0x20]
	beq _0803C51E
	bgt _0803C504
	cmp r3, #0x20
	beq _0803C524
	cmp r3, #0x23
	bne _0803C528
	orrs r4, r0
	b _0803C4EC
_0803C504
	cmp r3, #0x2d
	beq _0803C514
	cmp r3, #0x30
	bne _0803C528
	movs r3, #0xff
	adds r3, #1
	orrs r4, r3
	b _0803C4EC
_0803C514
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	orrs r4, r1
	b _0803C4EC
_0803C51E
	movs r3, #2
	orrs r4, r3
	b _0803C4EC
_0803C524
	orrs r4, r2
	b _0803C4EC
_0803C528
	ldr r3, [sp, #0x20]
	movs r2, #0
	cmp r3, #0x2a
	bne _0803C546
	ldr r3, [r5]
	ldm r3!, {r2}
	str r3, [r5]
	cmp r2, #0
	bge _0803C53E
	NEGS r2, r2
	eors r4, r1
_0803C53E
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C568
_0803C546
	ldr r1, [sp, #0x20]
	subs r1, #0x30
	cmp r1, #0xa
	bhs _0803C568
_0803C54E
	lsls r1, r2, #2
	adds r1, r1, r2
	ldr r3, [sp, #0x20]
	lsls r1, r1, #1
	adds r2, r1, r3
	ldrb r3, [r7]
	adds r7, #1
	subs r2, #0x30
	adds r1, r3, #0
	subs r1, #0x30
	cmp r1, #0xa
	str r3, [sp, #0x20]
	blo _0803C54E
_0803C568
	movs r1, #0
	adds r3, r1, #0
	cmp r2, #0
	blt _0803C572
	adds r3, r2, #0
_0803C572
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x20]
	cmp r3, #0x2e
	bne _0803C5C0
	ldrb r3, [r7]
	adds r7, #1
	movs r2, #0
	cmp r3, #0x2a
	str r3, [sp, #0x20]
	bne _0803C596
	ldr r3, [r5]
	ldm r3!, {r2}
	str r3, [r5]
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C5B6
_0803C594
	b _0803CA2C
_0803C596
	ldr r3, [sp, #0x20]
	subs r3, #0x30
	cmp r3, #0xa
	bhs _0803C5BA
_0803C59E
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r3, [sp, #0x20]
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrb r3, [r7]
	adds r7, #1
	subs r2, #0x30
	str r3, [sp, #0x20]
	subs r3, #0x30
	cmp r3, #0xa
	blo _0803C59E
_0803C5B6
	cmp r2, #0
	blt _0803C5C0
_0803C5BA
	movs r3, #0x10
	orrs r4, r3
	str r2, [r6, #8]
_0803C5C0
	ldr r3, [sp, #0x20]
	cmp r3, #0x6c
	beq _0803C5CE
	ldr r3, [sp, #0x20]
	cmp r3, #0x4c
	bne _0803C5E8
	b _0803C5DC
_0803C5CE
	ldrb r2, [r7]
	cmp r2, #0x6c
	bne _0803C5DC
	movs r2, #0x40
	orrs r4, r2
	adds r7, #1
	b _0803C5E0
_0803C5DC
	movs r2, #0x20
	orrs r4, r2
_0803C5E0
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C5E8
	ldr r3, [sp, #0x20]
	cmp r3, #0x68
	bne _0803C60A
	ldrb r2, [r7]
	cmp r2, #0x68
	bne _0803C5FE
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r4, r2
	adds r7, #1
	b _0803C602
_0803C5FE
	movs r2, #0x80
	orrs r4, r2
_0803C602
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C60A
	ldr r3, [sp, #0x20]
	cmp r3, #0x6a
	bne _0803C61C
	ldrb r3, [r7]
	movs r2, #0x40
	orrs r4, r2
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C61C
	ldr r3, [sp, #0x20]
	cmp r3, #0x74
	beq _0803C628
	ldr r3, [sp, #0x20]
	cmp r3, #0x7a
	bne _0803C62E
_0803C628
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
_0803C62E
	ldr r3, [sp, #0x20]
	cmp r3, #0x67
	beq _0803C702
	bgt _0803C65C
	cmp r3, #0x63
	beq _0803C67E
	bgt _0803C64E
	cmp r3, #0
	beq _0803C6EE
	cmp r3, #0x45
	beq _0803C702
	cmp r3, #0x47
	beq _0803C702
	cmp r3, #0x58
	beq _0803C718
	b _0803C686
_0803C64E
	cmp r3, #0x64
	beq _0803C71A
	cmp r3, #0x65
	beq _0803C702
	cmp r3, #0x66
	beq _0803C702
	b _0803C686
_0803C65C
	cmp r3, #0x70
	beq _0803C72E
	bgt _0803C670
	cmp r3, #0x69
	beq _0803C71A
	cmp r3, #0x6e
	beq _0803C6F2
	cmp r3, #0x6f
	beq _0803C740
	b _0803C686
_0803C670
	cmp r3, #0x73
	beq _0803C742
	cmp r3, #0x75
	beq _0803C744
	cmp r3, #0x78
	beq _0803C746
	b _0803C686
_0803C67E
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x20]
_0803C686
	ldr r3, [sp, #0x18]
	subs r3, #1
	str r3, [sp, #0x18]
	lsls r0, r4, #0x1f
	bmi _0803C6BE
	movs r0, #0x30
	lsls r1, r4, #0x17
	bmi _0803C698
	movs r0, #0x20
_0803C698
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bmi _0803C6BE
_0803C6A6
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bpl _0803C6A6
_0803C6BE
	ldr r2, [r6, #0x1c]
	add r1, sp, #0x20
	ldm r1!, {r0, r1}
	bl sub_803B8CC
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	lsls r0, r4, #0x1f
	bpl _0803C752
	ldr r4, [sp, #0x18]
	subs r4, #1
	bmi _0803C752
_0803C6D8
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	movs r0, #0x20
	bl sub_803B8CC
	subs r4, #1
	bpl _0803C6D8
	b _0803C752
_0803C6EE
	subs r7, #1
	b _0803C752
_0803C6F2
	lsls r0, r4, #0x15
	bpl _0803C704
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	strb r2, [r1]
	b _0803C752
_0803C702
	b _0803C9E6
_0803C704
	lsls r0, r4, #0x18
	bpl _0803C71C
	ldr r1, [r5]
	ldm r1!, {r0}
	str r1, [r5]
	ldr r2, [sp, #0x1c]
	strb r2, [r0]
	lsrs r3, r2, #8
	strb r3, [r0, #1]
	b _0803C752
_0803C718
	b _0803C80E
_0803C71A
	b _0803C974
_0803C71C
	lsls r0, r4, #0x19
	bpl _0803C730
	ldr r0, [r5]
	ldm r0!, {r4}
	str r0, [r5]
	ldr r0, [sp, #0x1c]
	asrs r1, r0, #0x1f
	stm r4!, {r0, r1}
	b _0803C752
_0803C72E
	b _0803C8C0
_0803C730
	lsls r0, r4, #0x1a
	bpl _0803C748
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r2, [r1]
	b _0803C752
_0803C740
	b _0803C8E0
_0803C742
	b _0803C754
_0803C744
	b _0803C92E
_0803C746
	b _0803C866
_0803C748
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r2, [r1]
_0803C752
	b _0803C8BE
_0803C754
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x10]
	lsls r0, r4, #0x1b
	bpl _0803C780
	movs r1, #0
	ldr r0, [r6, #8]
	str r1, [sp, #8]
	b _0803C76E
_0803C768
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #8]
_0803C76E
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _0803C788
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _0803C768
	b _0803C788
_0803C780
	ldr r0, [sp, #0x10]
	bl sub_803C2DC
	str r0, [sp, #8]
_0803C788
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x18]
	subs r0, r3, r0
	str r0, [sp, #0x18]
	lsls r0, r4, #0x1f
	bmi _0803C7C2
	movs r0, #0x30
	lsls r1, r4, #0x17
	bmi _0803C79C
	movs r0, #0x20
_0803C79C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bmi _0803C7C2
_0803C7AA
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bpl _0803C7AA
_0803C7C2
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _0803C7E6
_0803C7CC
	add r1, sp, #0xc
	ldm r1!, {r0, r1}
	ldrb r0, [r1, r0]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0803C7CC
_0803C7E6
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	lsls r0, r4, #0x1f
	bpl _0803C8BE
	ldr r4, [sp, #0x18]
	subs r4, #1
	bmi _0803C8BE
_0803C7F8
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	movs r0, #0x20
	bl sub_803B8CC
	subs r4, #1
	bpl _0803C7F8
	b _0803C8BE
_0803C80E
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C824
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C82A
_0803C824
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C82A
	lsls r0, r4, #0x15
	bpl _0803C838
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C844
_0803C838
	lsls r0, r4, #0x18
	bpl _0803C844
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C844
	add r0, pc, #0x3C0 ;@ =_0803CC08
	str r0, [r6, #0x24]
	lsls r0, r4, #0x1c
	bpl _0803C856
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0803C856
	add r0, pc, #0x3C8 ;@ =_0803CC1C
	b _0803C858
_0803C856
	add r0, pc, #0x3C0 ;@ =_0803CC18
_0803C858
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C8DE
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C8DE
_0803C866
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C87C
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C882
_0803C87C
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C882
	lsls r0, r4, #0x15
	bpl _0803C890
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C89C
_0803C890
	lsls r0, r4, #0x18
	bpl _0803C89C
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C89C
	add r0, pc, #0x380 ;@ =_0803CC20
	str r0, [r6, #0x24]
	lsls r0, r4, #0x1c
	bpl _0803C8AE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0803C8AE
	add r0, pc, #0x388 ;@ =_0803CC34
	b _0803C8B0
_0803C8AE
	add r0, pc, #0x368 ;@ =_0803CC18
_0803C8B0
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C8DE
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C8DE
_0803C8BE
	b _0803CA22
_0803C8C0
	ldr r2, [r5]
	ldm r2!, {r1}
	str r2, [r5]
	str r1, [sp, #0x14]
	add r1, pc, #0x354 ;@ =_0803CC20
	str r1, [r6, #0x24]
	lsls r1, r4, #0x1c
	bpl _0803C8D4
	add r1, pc, #0x364 ;@ =_0803CC38
	b _0803C8D6
_0803C8D4
	add r1, pc, #0x340 ;@ =_0803CC18
_0803C8D6
	movs r3, #0x10
	str r0, [r6, #8]
	str r1, [r6, #4]
	orrs r4, r3
_0803C8DE
	b _0803C9E4
_0803C8E0
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C8F6
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C8FC
_0803C8F6
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C8FC
	lsls r0, r4, #0x15
	bpl _0803C90A
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C916
_0803C90A
	lsls r0, r4, #0x18
	bpl _0803C916
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C916
	lsls r0, r4, #0x1c
	bpl _0803C91E
	add r0, pc, #0x320 ;@ =_0803CC3C
	b _0803C920
_0803C91E
	add r0, pc, #0x2F8 ;@ =_0803CC18
_0803C920
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C9E4
_0803C92E
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C944
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C94A
_0803C944
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C94A
	lsls r0, r4, #0x15
	bpl _0803C958
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C964
_0803C958
	lsls r0, r4, #0x18
	bpl _0803C964
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C964
	add r0, pc, #0x2B0 ;@ =_0803CC18
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C9E4
_0803C974
	lsls r0, r4, #0x19
	ldr r1, [r5]
	bpl _0803C99E
	adds r0, r1, #0
	adds r0, #8
	str r0, [r5]
	ldm r1!, {r0, r1}
	str r0, [r6, #0x2c]
	str r1, [r6, #0x30]
	add r2, pc, #0x2B8 ;@ =_0803CC40
	ldm r2!, {r2, r3}
	bl sub_803D15C
	bge _0803C9C6
	ldr r0, [r6, #0x2c]
	ldr r1, [r6, #0x30]
	bl sub_803D17C
	str r0, [r6, #0x2c]
	str r1, [r6, #0x30]
	b _0803C9C2
_0803C99E
	ldm r1!, {r0}
	str r1, [r5]
	lsls r1, r4, #0x15
	bpl _0803C9AC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0803C9B4
_0803C9AC
	lsls r1, r4, #0x18
	bpl _0803C9B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0803C9B4
	NEGS r1, r0
	cmp r0, #0
	blt _0803C9BC
	adds r1, r0, #0
_0803C9BC
	str r1, [sp, #0x14]
	cmp r0, #0
	bge _0803C9C6
_0803C9C2
	add r0, pc, #0x284 ;@ =_0803CC48
	b _0803C9D8
_0803C9C6
	lsls r0, r4, #0x1e
	bpl _0803C9CE
	add r0, pc, #0x280 ;@ =_0803CC4C
	b _0803C9D8
_0803C9CE
	lsls r0, r4, #0x1d
	bpl _0803C9D6
	add r0, pc, #0x27C ;@ =_0803CC50
	b _0803C9D8
_0803C9D6
	add r0, pc, #0x240 ;@ =_0803CC18
_0803C9D8
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
_0803C9E4
	b _0803CA0A
_0803C9E6
	movs r0, #1
	lsls r0, r0, #9
	orrs r4, r0
	lsls r0, r4, #0x1b
	bmi _0803C9F4
	movs r0, #6
	str r0, [r6, #8]
_0803C9F4
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #8
	str r2, [r5]
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x18]
	str r1, [r6, #4]
	str r2, [r6, #0x14]
	movs r1, #0
	str r1, [sp, #0x14]
_0803CA0A
	ldr r3, [sp, #0x18]
	adds r2, r6, #0
	str r3, [r6, #0x28]
	str r4, [r6]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	bl sub_803CA48
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	str r0, [sp, #0x1c]
_0803CA22
	ldrb r0, [r7]
	adds r7, #1
	cmp r0, #0
	beq _0803CA2C
	b _0803C4CA
_0803CA2C
	ldr r1, [r6, #0x20]
	ldr r0, [sp, #0x24]
	bl sub_803B8CA
	cmp r0, #0
	beq _0803CA44
	movs r0, #0
	mvns r0, r0
_0803CA3C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803CA44
	ldr r0, [sp, #0x1c]
	b _0803CA3C

	thumb_func_start sub_803CA48
sub_803CA48 ;@ 0x0803CA48
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	ldr r2, [r2]
	sub sp, #0x3c
	movs r5, #0
	mvns r1, r5
	str r2, [sp, #0x10]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	movs r1, #0x21
	lsls r1, r1, #4
	movs r6, #0
	ands r2, r1
	bne _0803CA6C
	movs r1, #1
	str r1, [r4, #8]
_0803CA6C
	add r1, pc, #0x1D0 ;@ =_0803CC40
	cmp r0, #0x67
	beq _0803CA90
	bgt _0803CAC2
	cmp r0, #0x64
	beq _0803CB42
	bgt _0803CA88
	cmp r0, #0x45
	beq _0803CA90
	cmp r0, #0x47
	beq _0803CA90
	cmp r0, #0x58
	bne _0803CA9A
	b _0803CAF6
_0803CA88
	cmp r0, #0x65
	beq _0803CA90
	cmp r0, #0x66
	bne _0803CA9A
_0803CA90
	adds r2, r4, #0
	add r1, sp, #0x14
	bl sub_8041440
	adds r6, r0, #0
_0803CA9A
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x10]
	str r1, [sp, #8]
	lsls r0, r2, #0x16
	bpl _0803CB88
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _0803CAB2
	subs r0, #1
	str r0, [sp, #0xc]
_0803CAB2
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _0803CB8A
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #1
	str r0, [sp, #0xc]
	b _0803CB8A
_0803CAC2
	cmp r0, #0x70
	beq _0803CAF6
	bgt _0803CAEE
	cmp r0, #0x69
	beq _0803CB42
	cmp r0, #0x6f
	bne _0803CA9A
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CB94
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x160 ;@ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CB92
	b _0803CB5E
_0803CAEE
	cmp r0, #0x75
	beq _0803CB42
	cmp r0, #0x78
	bne _0803CA9A
_0803CAF6
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CB44
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x13C ;@ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CA9A
_0803CB12
	add r1, sp, #8
	ldm r1!, {r0, r1}
	lsls r0, r0, #0x1c
	ldr r1, [r4, #0x24]
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, r0]
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	add r1, sp, #8
	adds r6, #1
	movs r2, #4
	ldm r1!, {r0, r1}
	bl sub_803BD84
	str r0, [sp, #8]
	add r0, pc, #0x10C ;@ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CA9A
	b _0803CB12
_0803CB42
	b _0803CBBA
_0803CB44
	cmp r3, #0
	beq _0803CA9A
	add r2, sp, #0x14
_0803CB4A
	lsls r1, r3, #0x1c
	ldr r0, [r4, #0x24]
	lsrs r1, r1, #0x1c
	ldrb r1, [r0, r1]
	adds r0, r6, #0
	adds r6, #1
	lsrs r3, r3, #4
	strb r1, [r2, r0]
	beq _0803CA9A
	b _0803CB4A
_0803CB5E
	add r1, sp, #8
	ldm r1!, {r0, r1}
	lsls r0, r0, #0x1d
	ldr r1, [r4, #0x24]
	lsrs r0, r0, #0x1d
	ldrb r1, [r1, r0]
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	add r1, sp, #8
	adds r6, #1
	movs r2, #3
	ldm r1!, {r0, r1}
	bl sub_803BD84
	str r0, [sp, #8]
	add r0, pc, #0xC0 ;@ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	b _0803CB8C
_0803CB88
	b _0803CC70
_0803CB8A
	b _0803CC7C
_0803CB8C
	bl sub_803D16C
	bne _0803CB5E
_0803CB92
	b _0803CBAA
_0803CB94
	cmp r3, #0
	beq _0803CBAA
	add r2, sp, #0x14
_0803CB9A
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #0x30
	adds r0, r6, #0
	adds r6, #1
	lsrs r3, r3, #3
	strb r1, [r2, r0]
	bne _0803CB9A
_0803CBAA
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1c
	bmi _0803CBB2
_0803CBB0
	b _0803CA9A
_0803CBB2
	ldr r0, [r4, #8]
	subs r0, #1
	str r0, [r4, #8]
	b _0803CA9A
_0803CBBA
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CC54
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x78 ;@ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CBB0
_0803CBD6
	add r1, sp, #8
	ldm r1!, {r0, r1}
	bl sub_803D18C
	str r0, [sp, #0x38]
	adds r0, r2, #0
	adds r0, #0x30
	str r1, [sp, #0x34]
	adds r1, r0, #0
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp, #8]
	add r0, pc, #0x48 ;@ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	adds r6, #1
	bl sub_803D16C
	beq _0803CBB0
	b _0803CBD6
	ALIGN
_0803CC08 DCDU 0x33323130
_0803CC0C DCDU 0x37363534
_0803CC10 DCDU 0x42413938
_0803CC14 DCDU 0x46454443
_0803CC18 DCDU 0x00000000
_0803CC1C DCDU 0x00005830
_0803CC20 DCDU 0x33323130
_0803CC24 DCDU 0x37363534
_0803CC28 DCDU 0x62613938
_0803CC2C DCDU 0x66656463
_0803CC30 DCDU 0x00000000
_0803CC34 DCDU 0x00007830
_0803CC38 DCDU 0x00000040
_0803CC3C DCDU 0x00000030
_0803CC40 DCDU 0x00000000
_0803CC44 DCDU 0x00000000
_0803CC48 DCDU 0x0000002D
_0803CC4C DCDU 0x0000002B
_0803CC50 DCDU 0x00000020
_0803CC54
	cmp r3, #0
	beq _0803CBB0
_0803CC58
	adds r0, r3, #0
	bl sub_803D270
	adds r1, #0x30
	adds r2, r1, #0
	adds r1, r6, #0
	add r3, sp, #0x14
	strb r2, [r3, r1]
	adds r6, #1
	adds r3, r0, #0
	beq _0803CBB0
	b _0803CC58
_0803CC70
	ldr r0, [r4, #8]
	subs r1, r0, r6
	str r1, [sp, #0xc]
	bpl _0803CC7C
	movs r0, #0
	str r0, [sp, #0xc]
_0803CC7C
	ldr r0, [r4, #4]
	bl sub_803C2DC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r1, r1, r6
	adds r0, r0, r1
	ldr r1, [sp, #8]
	subs r0, r1, r0
	str r0, [sp, #8]
	lsls r0, r2, #0x17
	bmi _0803CCBA
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bmi _0803CCBA
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bmi _0803CCBA
_0803CCA6
	adds r5, #1
	ldr r2, [r4, #0x1c]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bpl _0803CCA6
_0803CCBA
	ldr r1, [r4, #4]
	ldrb r0, [r1]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _0803CCDC
_0803CCC6
	adds r1, r7, #0
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r1, [sp, #4]
	adds r5, #1
	ldrb r0, [r1]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	bne _0803CCC6
_0803CCDC
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bmi _0803CD0E
	ldr r2, [sp, #0x10]
	movs r0, #0x30
	lsls r1, r2, #0x17
	bmi _0803CCEC
	movs r0, #0x20
_0803CCEC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bmi _0803CD0E
_0803CCFA
	adds r5, #1
	ldr r2, [r4, #0x1c]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bpl _0803CCFA
_0803CD0E
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x16
	bpl _0803CD7E
	movs r1, #0
	str r1, [sp, #4]
	cmp r6, #0
	ble _0803CDB8
_0803CD1C
	ldr r1, [sp, #4]
	add r0, sp, #0x14
	ldrb r0, [r0, r1]
	cmp r0, #0x3c
	beq _0803CD34
	cmp r0, #0x3e
	bne _0803CD68
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	bmi _0803CD72
	b _0803CD52
_0803CD34
	ldr r0, [r4, #0xc]
	subs r0, #1
	str r0, [r4, #0xc]
	bmi _0803CD72
_0803CD3C
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [r4, #0xc]
	subs r0, #1
	str r0, [r4, #0xc]
	bpl _0803CD3C
	b _0803CD72
_0803CD52
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	bpl _0803CD52
	b _0803CD72
_0803CD68
	adds r1, r7, #0
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	adds r5, #1
_0803CD72
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	cmp r1, r6
	blt _0803CD1C
	b _0803CDB8
_0803CD7E
	ldr r0, [sp, #0xc]
	subs r0, #1
	str r0, [sp, #0xc]
	bmi _0803CD9A
_0803CD86
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [sp, #0xc]
	subs r0, #1
	str r0, [sp, #0xc]
	bpl _0803CD86
_0803CD9A
	adds r5, r5, r6
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	ble _0803CDB8
_0803CDA4
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	ldr r2, [r4, #0x1c]
	adds r1, r7, #0
	bl sub_803B8CC
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt _0803CDA4
_0803CDB8
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bpl _0803CDD4
	ldr r6, [sp, #8]
	subs r6, #1
	bmi _0803CDD4
_0803CDC4
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x20
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	subs r6, #1
	bpl _0803CDC4
_0803CDD4
	adds r0, r5, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_803CDE0
sub_803CDE0 ;@ 0x0803CDE0
	lsls r0, r0, #0x18
	ldr r2, [r1]
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	str r2, [r1]
	bx lr

	non_word_aligned_thumb_func_start sub_803CDEE
sub_803CDEE ;@ 0x0803CDEE
	movs r0, #0
	bx lr
	ALIGN

	arm_func_start sub_803CDF4
sub_803CDF4 ;@ 0x803CDF4
	bl sub_803DAC4
	bl sub_803E234
	LDR ip, _0803CE20 ;@ =0xFFFCE2D1
	add ip, ip, pc
	tst ip, #1
	addne lr, pc, #0xD ;@ =sub_803CE1C
	moveq lr, pc
	bx ip
	ALIGN
_0803CE14 DCDU 0xE28FC001
_0803CE18 DCDU 0xE12FFF1C

	thumb_func_start sub_803CE1C
sub_803CE1C ;@ 0x0803CE1C
	bl sub_803D090
	ALIGN
_0803CE20 DCDU 0xFFFCE2D1

	thumb_func_start sub_803CE24
sub_803CE24 ;@ 0x0803CE24
	bx pc
	ALIGN

	arm_func_start sub_803CE28
sub_803CE28 ;@ 0x0803CE28
	STMFD SP!, {r0, lr}
	bl sub_803E240
	LDMFD SP!, {r0, lr}
	b _0803CE40

	thumb_func_start sub_803CE38
sub_803CE38 ;@ 0x0803CE38
	bx pc
	ALIGN

	arm_func_start sub_803CE3C
sub_803CE3C ;@ 0x0803CE3C
	mvn r0, #0
_0803CE40
	b _0803DB24

	thumb_func_start sub_803CE44
sub_803CE44 ;@ 0x0803CE44
	bx pc
	ALIGN

	arm_func_start sub_803CE48
sub_803CE48 ;@ 0x0803CE48
	STMFD SP!, {r4, r5, r6, lr}
	mov lr, r0
	umull r0, ip, r2, lr
	mla r1, r2, r1, ip
	mla r1, r3, lr, r1
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	thumb_func_start sub_803CE64
sub_803CE64 ;@ 0x0803CE64
	bx pc
	ALIGN

	arm_func_start sub_803CE68
sub_803CE68 ;@ 0x0803CE68
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r3
	mov r5, r2
	mov r6, #0
	orrs ip, r1, r0, lsr #31
	bne _0803CEC8
	tst r0, r0
	beq _0803BD7C
	MOVS ip, r0, LSR #0xf
	addeq r6, r6, #0x10
	MOV ip, r0, LSL r6
	MOVS lr, ip, LSR #0x17
	MOVEQ ip, ip, LSL #8
	addeq r6, r6, #8
	MOVS lr, ip, LSR #0x1b
	MOVEQ ip, ip, LSL #4
	addeq r6, r6, #4
	MOVS lr, ip, LSR #0x1d
	MOVEQ ip, ip, LSL #2
	addeq r6, r6, #2
	MOVS lr, ip, LSR #0x1e
	MOVEQ ip, ip, LSL #1
	addeq r6, r6, #1
	b _0803BAE8
_0803CEC8
	tst r1, #-0x80000000
	bne _0803CF1C
	MOVS ip, r1, LSR #0xf
	addeq r6, r6, #0x10
	MOV ip, r1, LSL r6
	MOVS lr, ip, LSR #0x17
	MOVEQ ip, ip, LSL #8
	addeq r6, r6, #8
	MOVS lr, ip, LSR #0x1b
	MOVEQ ip, ip, LSL #4
	addeq r6, r6, #4
	MOVS lr, ip, LSR #0x1d
	MOVEQ ip, ip, LSL #2
	addeq r6, r6, #2
	MOVS lr, ip, LSR #0x1e
	MOVEQ ip, ip, LSL #1
	addeq r6, r6, #1
	rsb r1, r6, #0x20
	orr ip, ip, r0, lsr r1
	MOV lr, r0, LSL r6
	b _0803BC10
_0803CF1C
	mov ip, r1
	mov lr, r0
	b _0803BD5C

	thumb_func_start sub_803CF28
sub_803CF28 ;@ 0x0803CF28
	push {r3, lr}
	movs r1, #0
	bl sub_803D250
	add sp, #4
	pop {r3}
	movs r0, #0
	bx r3

	thumb_func_start sub_803CF38
sub_803CF38 ;@ 0x0803CF38
	bx pc
	ALIGN

	arm_func_start sub_803CF3C
sub_803CF3C ;@ 0x0803CF3C
	mov r0, #2
	mov r1, #2
	b sub_803D254

	thumb_func_start sub_803CF48
sub_803CF48 ;@ 0x0803CF48
	bx pc
	ALIGN

	arm_func_start sub_803CF4C
sub_803CF4C ;@ 0x0803CF4C
	STMFD SP!, {r4, lr}
	bl sub_803B908
	LDMFD SP!, {r4, lr}
	bx lr

	thumb_func_start sub_803CF5C
sub_803CF5C ;@ 0x0803CF5C
	push {r5, r6, r7, lr}
	push {r0, r1, r2, r4}
	adds r5, r1, #0
	adds r6, r2, #0
	movs r7, #0
	ldr r4, [sp]
	bl sub_803D234
_0803CF6C
	ldrb r1, [r4]
	adds r4, #1
	cmp r1, #0
	beq _0803CF7C
	ldr r2, [r0]
	ldrb r2, [r2, r1]
	lsls r2, r2, #0x1f
	bmi _0803CF6C
_0803CF7C
	cmp r1, #0x2b
	beq _0803CF8E
	cmp r1, #0x2d
	bne _0803CF8C
	movs r0, #1
	lsls r0, r0, #0xa
	orrs r7, r0
	b _0803CF8E
_0803CF8C
	subs r4, #1
_0803CF8E
	adds r2, r6, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803CFD8
	adds r6, r0, #0
	cmp r5, #0
	beq _0803CFA8
	ldr r0, [r5]
	cmp r0, r4
	bne _0803CFA8
	ldr r0, [sp]
	str r0, [r5]
_0803CFA8
	lsls r4, r7, #0x15
	movs r5, #2
	bl sub_803CF48
	adds r1, r0, #0
	cmp r4, #0
	bge _0803CFC8
	NEGS r0, r6
	cmp r0, #0
	ble _0803CFC0
	str r5, [r1]
	lsls r0, r5, #0x1e
_0803CFC0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803CFC8
	adds r0, r6, #0
	cmp r6, #0
	bge _0803CFC0
	str r5, [r1]
	ldr r0, _0803CFD4 ;@ =0x7FFFFFFF
	b _0803CFC0
	ALIGN
_0803CFD4 DCDU 0x7FFFFFFF

	thumb_func_start sub_803CFD8
sub_803CFD8 ;@ 0x0803CFD8
	push {r5, r6, r7, lr}
	push {r0, r1, r2, r4}
	sub sp, #8
	ldr r5, [sp, #8]
	movs r1, #0
	ldrb r0, [r5]
	adds r5, #1
	adds r4, r2, #0
	cmp r0, #0x30
	str r1, [sp, #4]
	str r1, [sp]
	bne _0803D01A
	movs r1, #1
	str r1, [sp, #4]
	ldrb r0, [r5]
	adds r5, r5, r1
	cmp r0, #0x78
	beq _0803D000
	cmp r0, #0x58
	bne _0803D014
_0803D000
	cmp r4, #0
	beq _0803D008
	cmp r4, #0x10
	bne _0803D01A
_0803D008
	movs r1, #0
	str r1, [sp, #4]
	ldrb r0, [r5]
	movs r4, #0x10
	adds r5, #1
	b _0803D01A
_0803D014
	cmp r4, #0
	bne _0803D01A
	movs r4, #8
_0803D01A
	cmp r4, #0
	bne _0803D020
	movs r4, #0xa
_0803D020
	movs r6, #0
	movs r7, #0
	adds r1, r4, #0
	bl sub_803D2E4
	cmp r0, #0
	blt _0803D05E
_0803D02E
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r4, #0
	muls r1, r7
	adds r0, r1, r0
	adds r1, r4, #0
	lsrs r2, r0, #0x10
	lsls r7, r0, #0x10
	movs r0, #1
	muls r1, r6
	adds r6, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r7, #0x10
	cmp r6, r0
	blo _0803D050
	movs r0, #1
	str r0, [sp]
_0803D050
	ldrb r0, [r5]
	adds r5, #1
	adds r1, r4, #0
	bl sub_803D2E4
	cmp r0, #0
	bge _0803D02E
_0803D05E
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0803D072
	ldr r1, [sp, #4]
	subs r0, r5, #1
	cmp r1, #0
	bne _0803D06E
	ldr r0, [sp, #8]
_0803D06E
	ldr r1, [sp, #0xc]
	str r0, [r1]
_0803D072
	ldr r0, [sp]
	cmp r0, #0
	beq _0803D08A
	bl sub_803CF48
	movs r1, #2
	str r1, [r0]
	subs r0, r1, #3
_0803D082
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803D08A
	lsls r0, r6, #0x10
	orrs r0, r7
	b _0803D082

	thumb_func_start sub_803D090
sub_803D090 ;@ 0x0803D090
	push {r4, lr}
	adds r4, r0, #0
	bl sub_803D098

	thumb_func_start sub_803D098
sub_803D098 ;@ 0x0803D098
	adds r0, r4, #0
	bl sub_803CE24

	non_word_aligned_thumb_func_start sub_803D09E
sub_803D09E ;@ 0x0803D09E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803D0A4
sub_803D0A4 ;@ 0x0803D0A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	sub sp, #0xc
	bl sub_8041438
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	bl sub_803D0BA

	non_word_aligned_thumb_func_start sub_803D0BA
sub_803D0BA ;@ 0x0803D0BA
	str r0, [sp, #8]
	ldr r0, _0803D158 ;@ =0x00000094
	mov r1, sp
	add r0, pc
	bl sub_803D0C6

	non_word_aligned_thumb_func_start sub_803D0C6
sub_803D0C6 ;@ 0x0803D0C6
	adds r5, r0, #0
	adds r6, r1, #0
	add r1, sp, #0
	ldm r1!, {r0, r1}
	bl sub_803D0D2

	non_word_aligned_thumb_func_start sub_803D0D2
sub_803D0D2 ;@ 0x0803D0D2
	bl sub_803D0D6

	non_word_aligned_thumb_func_start sub_803D0D6
sub_803D0D6 ;@ 0x0803D0D6
	bl sub_803BDEC
	movs r1, #0
	movs r0, #0
	bl sub_803D0E2

	non_word_aligned_thumb_func_start sub_803D0E2
sub_803D0E2 ;@ 0x0803D0E2
	adds r7, r0, #0
	bl sub_803B904
	adds r4, r0, #0
	movs r1, #0
	str r7, [r0, #0x20]
	movs r0, #0
	bl sub_803D308
	adds r1, r0, #1
	str r1, [r4, #0x24]
	movs r1, #0
	movs r0, #0
	bl sub_803D100

	thumb_func_start sub_803D100
sub_803D100 ;@ 0x0803D100
	movs r1, #0
	str r0, [r4, #0x28]
	movs r0, #0
	bl sub_803D10A

	non_word_aligned_thumb_func_start sub_803D10A
sub_803D10A ;@ 0x0803D10A
	movs r1, #0
	str r0, [r4, #0x2c]
	movs r0, #0
	bl sub_803D114

	thumb_func_start sub_803D114
sub_803D114 ;@ 0x0803D114
	str r0, [r4, #0x30]
	bl sub_803D11A

	non_word_aligned_thumb_func_start sub_803D11A
sub_803D11A ;@ 0x0803D11A
	bl sub_803D11E

	non_word_aligned_thumb_func_start sub_803D11E
sub_803D11E ;@ 0x0803D11E
	bl sub_803D122

	non_word_aligned_thumb_func_start sub_803D122
sub_803D122 ;@ 0x0803D122
	bl sub_803D126

	non_word_aligned_thumb_func_start sub_803D126
sub_803D126 ;@ 0x0803D126
	bl sub_803D12A

	non_word_aligned_thumb_func_start sub_803D12A
sub_803D12A ;@ 0x0803D12A
	bl sub_803B8D8
	bl sub_803D132

	non_word_aligned_thumb_func_start sub_803D132
sub_803D132 ;@ 0x0803D132
	bl sub_803D136

	non_word_aligned_thumb_func_start sub_803D136
sub_803D136 ;@ 0x0803D136
	adds r0, r5, #0
	adds r1, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803D142
sub_803D142 ;@ 0x0803D142
	push {r3, lr}
	bl sub_803D148

	thumb_func_start sub_803D148
sub_803D148 ;@ 0x0803D148
	bl sub_803D14C

	thumb_func_start sub_803D14C
sub_803D14C ;@ 0x0803D14C
	bl sub_803D150

	thumb_func_start sub_803D150
sub_803D150 ;@ 0x0803D150
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803D158 DCDU 0x00000094

	thumb_func_start sub_803D15C
sub_803D15C ;@ 0x0803D15C
	bx pc
	ALIGN

	arm_func_start sub_803D160
sub_803D160 ;@ 0x0803D160
	subs r0, r0, r2
	sbcs r1, r1, r3
	bx lr

	thumb_func_start sub_803D16C
sub_803D16C ;@ 0x0803D16C
	bx pc
	ALIGN

	arm_func_start sub_803D170
sub_803D170 ;@ 0x0803D170
	cmp r1, r3
	cmpeq r0, r2
	bx lr

	thumb_func_start sub_803D17C
sub_803D17C ;@ 0x0803D17C
	bx pc
	ALIGN

	arm_func_start sub_803D180
sub_803D180 ;@ 0x0803D180
	rsbs r0, r0, #0
	rsc r1, r1, #0
	bx lr

	thumb_func_start sub_803D18C
sub_803D18C ;@ 0x0803D18C
	bx pc
	ALIGN

	arm_func_start sub_803D190
sub_803D190 ;@ 0x0803D190
	STMFD SP!, {r4, r5, lr}
	subs r2, r0, #0xa
	sbcs r3, r1, #0
	MOV lr, r0, LSR #2
	orr lr, lr, r1, lsl #30
	subs r0, r0, lr
	sbc r1, r1, r1, lsr #2
	MOV lr, r0, LSR #4
	orr lr, lr, r1, lsl #28
	adds r0, r0, lr
	adc r1, r1, r1, lsr #4
	MOV lr, r0, LSR #8
	orr lr, lr, r1, lsl #24
	adds r0, r0, lr
	adc r1, r1, r1, lsr #8
	MOV lr, r0, LSR #0x10
	orr lr, lr, r1, lsl #16
	adds r0, r0, lr
	adc r1, r1, r1, lsr #16
	adds r0, r0, r1
	adc r1, r1, #0
	MOV r0, r0, LSR #3
	orr r0, r0, r1, lsl #29
	MOV r1, r1, LSR #3
	MOV r4, r1, LSL #2
	orr r4, r4, r0, lsr #30
	adds r5, r0, r0, lsl #2
	adc r4, r4, r1
	adds r5, r5, r5
	adc r4, r4, r4
	subs r2, r2, r5
	sbcs r3, r3, r4
	mov r3, #0
	addmi r2, r2, #0xa
	LDMMIFD SP!, {r4, r5, lr}
	bxmi lr
	adds r0, r0, #1
	adc r1, r1, #0
	LDMFD SP!, {r4, r5, lr}
	bx lr

	thumb_func_start sub_803D230
sub_803D230 ;@ 0x0803D230
	movs r0, #0
	bx lr

	thumb_func_start sub_803D234
sub_803D234 ;@ 0x0803D234
	bx pc
	ALIGN

	arm_func_start sub_803D238
sub_803D238 ;@ 0x0803D238
	STMFD SP!, {r4, lr}
	bl sub_803B908
	add r0, r0, #0x24
	LDMFD SP!, {r4, lr}
	bx lr
	ALIGN
_0803D24C DCDU 0x000000BD

	thumb_func_start sub_803D250
sub_803D250 ;@ 0x0803D250
	bx pc
	ALIGN

	arm_func_start sub_803D254
sub_803D254 ;@ 0x0803D254
	STMFD SP!, {r4, lr}
	bl sub_803E24C
	cmp r0, #0
	LDMEQFD SP!, {r4, lr}
	bxeq lr
	LDMFD SP!, {r4, lr}
	b _0803DB24

	thumb_func_start sub_803D270
sub_803D270 ;@ 0x0803D270
	bx pc
	ALIGN

	arm_func_start sub_803D274
sub_803D274 ;@ 0x0803D274
	sub r1, r0, #0xa
	sub r0, r0, r0, lsr #2
	add r0, r0, r0, lsr #4
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	MOV r0, r0, LSR #3
	add r2, r0, r0, lsl #2
	subs r1, r1, r2, lsl #1
	addpl r0, r0, #1
	addmi r1, r1, #0xa
	bx lr

	thumb_func_start sub_803D2A0
sub_803D2A0 ;@ 0x0803D2A0
	push {r4, r5, r6, lr}
	ldr r6, _0803D2DC ;@ =0xF7FC2D51
	adds r5, r1, #0
	adds r1, r0, #0
	adds r4, r0, #0
	add r6, pc
	adds r0, r6, #0
	bl sub_803D2B2

	non_word_aligned_thumb_func_start sub_803D2B2
sub_803D2B2 ;@ 0x0803D2B2
	adds r2, r0, #0
	cmp r0, r6
	bne _0803D2C6
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803D334
_0803D2C0
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0803D2C6
	ldr r0, _0803D2E0 ;@ =0xF7FC2D31
	add r0, pc
	cmp r2, r0
	beq _0803D2D6
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803B8CC
_0803D2D6
	movs r0, #0
	b _0803D2C0
	ALIGN
_0803D2DC DCDU 0xF7FC2D51
_0803D2E0 DCDU 0xF7FC2D31

	thumb_func_start sub_803D2E4
sub_803D2E4 ;@ 0x0803D2E4
	cmp r0, #0x3a
	bhs _0803D2EA
	subs r0, #0x30
_0803D2EA
	movs r3, #0x20
	adds r2, r0, #0
	bics r2, r3
	cmp r2, #0x41
	blo _0803D2F8
	adds r0, r2, #0
	subs r0, #0x37
_0803D2F8
	movs r2, #0
	mvns r2, r2
	cmp r0, r1
	bhs _0803D302
	adds r2, r0, #0
_0803D302
	adds r0, r2, #0
	bx lr
	ALIGN

	thumb_func_start sub_803D308
sub_803D308 ;@ 0x0803D308
	push {r3, lr}
	adds r0, r1, #0
	beq _0803D31E
	ldrb r1, [r0]
	cmp r1, #0
	beq _0803D31E
	add r1, pc, #0x14 ;@ =_0803D32C
	bl sub_803C1EC
	cmp r0, #0
	bne _0803D328
_0803D31E
	ldr r0, _0803D330 ;@ =0x000141E4
	add r0, pc
_0803D322
	add sp, #4
	pop {r3}
	bx r3
_0803D328
	movs r0, #0
	b _0803D322
	ALIGN
_0803D32C DCDU 0x00000043
_0803D330 DCDU 0x000141E4

	thumb_func_start sub_803D334
sub_803D334 ;@ 0x0803D334
	push {r3, r4, r5, lr}
	subs r2, r0, #1
	cmp r2, #0xd
	add r4, pc, #0x90 ;@ =_0803D3CC
	bhs _0803D38C
	movs r2, #0x17
	ldr r3, _0803D3D0 ;@ =0x000142C4
	muls r2, r0
	add r3, pc
	adds r5, r2, r3
	subs r5, #0x17
	cmp r0, #2
	bne _0803D378
	lsls r0, r1, #5
	bpl _0803D356
	add r4, pc, #0x80 ;@ =_0803D3D4
	b _0803D38E
_0803D356
	ldr r0, _0803D3E8 ;@ =0x08000002
	ands r0, r1
	beq _0803D360
	add r4, pc, #0x8C ;@ =_0803D3EC
	b _0803D38E
_0803D360
	lsls r0, r1, #3
	bpl _0803D368
	add r4, pc, #0x94 ;@ =_0803D3FC
	b _0803D38E
_0803D368
	lsls r0, r1, #2
	bpl _0803D370
	add r4, pc, #0x98 ;@ =_0803D408
	b _0803D38E
_0803D370
	lsls r0, r1, #1
	bpl _0803D38E
	add r4, pc, #0x9C ;@ =_0803D414
	b _0803D38E
_0803D378
	cmp r0, #8
	bne _0803D380
	adds r4, r1, #0
	b _0803D38E
_0803D380
	cmp r0, #9
	bne _0803D38E
	cmp r1, #1
	bne _0803D38E
	add r5, pc, #0x98 ;@ =_0803D424
	b _0803D38E
_0803D38C
	add r5, pc, #0xAC ;@ =_0803D43C
_0803D38E
	movs r0, #0xa
	bl sub_803D44C
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803D3A8
_0803D39A
	ldrb r0, [r5]
	adds r5, #1
	bl sub_803D44C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803D39A
_0803D3A8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803D3BC
_0803D3AE
	ldrb r0, [r4]
	adds r4, #1
	bl sub_803D44C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D3AE
_0803D3BC
	movs r0, #0xa
	bl sub_803D44C
	pop {r3, r4, r5}
	pop {r3}
_0803D3C6
	movs r0, #1
	bx r3
	ALIGN
_0803D3CC DCDU 0x00000000
_0803D3D0 DCDU 0x000142C4
_0803D3D4 DCDU 0x61766E49
_0803D3D8 DCDU 0x2064696C
_0803D3DC DCDU 0x7265704F
_0803D3E0 DCDU 0x6F697461
_0803D3E4 DCDU 0x0000006E
_0803D3E8 DCDU 0x08000002
_0803D3EC DCDU 0x69766944
_0803D3F0 DCDU 0x42206564
_0803D3F4 DCDU 0x655A2079
_0803D3F8 DCDU 0x00006F72
_0803D3FC DCDU 0x7265764F
_0803D400 DCDU 0x776F6C66
_0803D404 DCDU 0x00000000
_0803D408 DCDU 0x65646E55
_0803D40C DCDU 0x6F6C6672
_0803D410 DCDU 0x00000077
_0803D414 DCDU 0x78656E49
_0803D418 DCDU 0x20746361
_0803D41C DCDU 0x75736552
_0803D420 DCDU 0x0000746C
_0803D424 DCDU 0x6548203A
_0803D428 DCDU 0x6D207061
_0803D42C DCDU 0x726F6D65
_0803D430 DCDU 0x6F632079
_0803D434 DCDU 0x70757272
_0803D438 DCDU 0x00646574
_0803D43C DCDU 0x6E6B6E55
_0803D440 DCDU 0x206E776F
_0803D444 DCDU 0x6E676973
_0803D448 DCDU 0x00006C61

	thumb_func_start sub_803D44C
sub_803D44C ;@ 0x0803D44C
	push {r3, lr}
	add r3, sp, #0
	strb r0, [r3]
	movs r0, #3
	mov r1, sp
	SWI 0xab
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start j_nullsub_8
j_nullsub_8 ;@ 0x0803D460
	bx pc
	ALIGN

	arm_func_start nullsub_8
nullsub_8 ;@ 0x0803D464
	bx lr

	thumb_func_start sub_803D468
sub_803D468 ;@ 0x0803D468
	SWI 0xb
	bx lr

	thumb_func_start sub_803D46C
sub_803D46C ;@ 0x0803D46C
	SWI 6
	bx lr

	thumb_func_start sub_803D470
sub_803D470 ;@ 0x0803D470
	SWI 6
	adds r0, r1, #0
	bx lr
	ALIGN

	thumb_func_start sub_803D478
sub_803D478 ;@ 0x0803D478
	SWI 0x12
	bx lr

	thumb_func_start sub_803D47C
sub_803D47C ;@ 0x0803D47C
	SWI 0x15
	bx lr

	thumb_func_start sub_803D480
sub_803D480 ;@ 0x0803D480
	ldr r3, _0803D490 ;@ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _0803D494 ;@ =gUnknown_03007F00
	mov sp, r1
	SWI 1
	SWI 0
	DCB 0, 0
	ALIGN
_0803D490 DCDU 0x04000208
_0803D494 DCDU gUnknown_03007F00

	thumb_func_start sub_803D498
sub_803D498 ;@ 0x0803D498
	movs r2, #0
	SWI 5
	bx lr
	ALIGN

	thumb_func_start nullsub_64
nullsub_64 ;@ 0x0803D4A0
	bx lr
	ALIGN
_0803D4A4 DCDU 0xFFFFFFFD

	thumb_func_start sub_803D4A8
sub_803D4A8 ;@ 0x0803D4A8
	push {r4, lr}
	cmp r0, #8
	bhs _0803D57C
	add r3, pc, #0x8 ;@ =_0803D4B8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0803D4B8
	DCB 0x04
_0803D4B9
	DCB 0x08
_0803D4BA
	DCB 0x17
_0803D4BB
	DCB 0x26
_0803D4BC
	DCB 0x35
_0803D4BD
	DCB 0x44
_0803D4BE
	DCB 0x53
_0803D4BF
	DCB 0x63
loc_803d4c0
	movs r0, #0
_0803D4C2
	pop {r4}
	pop {r3}
	bx r3
loc_803d4c8
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x30
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D4E2
	adds r0, r4, #0
	bl sub_803E258
_0803D4E2
	adds r0, r4, #0
	b _0803D4C2
loc_803d4e6
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D500
	adds r0, r4, #0
	bl sub_803E260
_0803D500
	adds r0, r4, #0
	b _0803D4C2
loc_803d504
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D51E
	adds r0, r4, #0
	bl sub_803E268
_0803D51E
	adds r0, r4, #0
	b _0803D4C2
loc_803d522
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D53C
	adds r0, r4, #0
	bl sub_803E270
_0803D53C
	adds r0, r4, #0
	b _0803D4C2
loc_803d540
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D55A
	adds r0, r4, #0
	bl sub_803E278
_0803D55A
	adds r0, r4, #0
	b _0803D4C2
loc_803d55e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0803D5A0 ;@ =0x00005524
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D578
	adds r0, r4, #0
	bl sub_803E280
_0803D578
	adds r0, r4, #0
	b _0803D4C2
_0803D57C
	b _0803D59C
loc_803d57e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x5c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D598
	adds r0, r4, #0
	bl sub_803E17C
_0803D598
	adds r0, r4, #0
	b _0803D4C2
_0803D59C
	movs r0, #0
	b _0803D4C2
	ALIGN
_0803D5A0 DCDU 0x00005524

	thumb_func_start sub_803D5A4
sub_803D5A4 ;@ 0x0803D5A4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _0803D664 ;@ =0x04000100
	adds r5, r2, #0
	movs r7, #0
	sub sp, #0x1c
	strh r7, [r1, #0xa]
	ldr r1, _0803D668 ;@ =gUnknown_030033F4
	str r7, [r1]
	str r7, [r1, #4]
	bl sub_803D4A8
	adds r4, r0, #0
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0x10]
	NEGS r0, r0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r6, [sp, #4]
	str r5, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl sub_803B8CC
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	cmp r5, #0
	beq _0803D648
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	ldr r1, [sp, #4]
	bl sub_803B8CC
	adds r5, r0, #0
	movs r6, #0
	cmp r0, #0
	beq _0803D61A
	adds r3, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [r4]
	adds r6, r0, #0
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl sub_803B8CE
_0803D61A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	ldr r1, [sp, #0x14]
	bl sub_803B8CE
	cmp r5, #0
	beq _0803D648
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_0803D648
	adds r0, r4, #0
	beq _0803D658
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0803D658
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803D664 DCDU 0x04000100
_0803D668 DCDU gUnknown_030033F4

	thumb_func_start sub_803D66C
sub_803D66C ;@ 0x0803D66C
	ldrh r2, [r0]
	ldr r1, _0803D67C ;@ =0x04000040
	strh r2, [r1, #0x10]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x12]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x14]
	bx lr
	ALIGN
_0803D67C DCDU 0x04000040

	thumb_func_start sub_803D680
sub_803D680 ;@ 0x0803D680
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #4
	add r2, sp, #0x28
	ldm r2!, {r0, r2}
	adds r6, r3, #0
	ldr r3, [r4]
	movs r5, #0x1f
	lsls r5, r5, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r3, r5
	orrs r0, r3
	movs r3, #0x3f
	lsls r3, r3, #0xd
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0xd
	bics r0, r3
	orrs r0, r2
	lsrs r0, r0, #3
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80046EE
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D758
	add r3, pc, #0x4 ;@ =_0803D6CC
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D6CC
	DCB 0x02
_0803D6CD
	DCB 0x12
_0803D6CE
	DCB 0x24
_0803D6CF
	DCB 0x34
_0803D6D0
	DCB 0x46
_0803D6D1
	DCB 0x59
loc_803d6d2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d6f2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d716
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d736
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
_0803D758
	b _0803D7A2
loc_803d75a
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r7, r0, r6
	adds r1, r7, #0
	adds r2, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r7, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D7A2
loc_803d780
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r2, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
_0803D7A2
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D7F8
	add r3, pc, #0x4 ;@ =_0803D7B4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D7B4
	DCB 0x02
_0803D7B5
	DCB 0x14
_0803D7B6
	DCB 0x02
_0803D7B7
	DCB 0x14
_0803D7B8
	DCB 0x14
_0803D7B9
	DCB 0x02
loc_803d7ba
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	adds r2, r0, r2
	cmp r2, #0x10
	bls _0803D7F8
	movs r2, #0x10
	subs r0, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	b _0803D7F8
loc_803d7de
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	subs r2, r0, r2
	bpl _0803D7F8
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r4]
_0803D7F8
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #4
	beq _0803D806
	cmp r0, #5
	bne _0803D812
_0803D806
	adds r0, r5, #0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	bl sub_8004784
	b _0803D81C
_0803D812
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_8004784
_0803D81C
	movs r1, #0x3f
	ldr r0, [r4]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	bics r0, r1
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803D834
sub_803D834 ;@ 0x0803D834
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r1, r0, #5
	bmi _0803D846
	movs r0, #1
_0803D840
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0803D846
	lsls r1, r0, #6
	bpl _0803D84E
	movs r0, #0
	b _0803D840
_0803D84E
	movs r2, #0x3f
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0x13
	lsls r2, r2, #0x13
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #7
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1a
	lsrs r1, r1, #0x1a
	cmp r1, r3
	str r0, [r4]
	bne _0803D8F0
	bics r0, r2
	str r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D8F0
	add r3, pc, #0x8 ;@ =_0803D884
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0803D884
	DCB 0x03
_0803D885
	DCB 0x1D
_0803D886
	DCB 0x03
_0803D887
	DCB 0x1D
_0803D888
	DCB 0x37
_0803D889
	DCB 0x59
loc_803d88a
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne _0803D8AE
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D8AE
	adds r0, r5, #0
	bl sub_80047BA
	adds r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
	b _0803D8F0
loc_803d8be
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne _0803D8E2
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D8E2
	adds r0, r5, #0
	bl sub_80047BA
	subs r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
_0803D8F0
	b _0803D978
loc_803d8f2
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne _0803D918
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D918
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	adds r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	subs r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
	b _0803D978
loc_803d936
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne _0803D95C
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D95C
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	subs r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	adds r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
_0803D978
	movs r0, #1
	b _0803D840

	thumb_func_start sub_803D97C
sub_803D97C ;@ 0x0803D97C
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_803D984
sub_803D984 ;@ 0x0803D984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9A4 ;@ =gUnknown_030033E8
	sub sp, #8
	ldr r0, [r0, #8]
	str r2, [sp]
	movs r2, #3
	adds r3, r1, #0
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9A4 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9A8
sub_803D9A8 ;@ 0x0803D9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9C0 ;@ =gUnknown_030033E8
	adds r3, r2, #0
	adds r2, r1, #0
	adds r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_8005220
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9C0 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9C4
sub_803D9C4 ;@ 0x0803D9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0803D9F4 ;@ =gUnknown_030033E8
	sub sp, #8
	ldr r0, [r0, #8]
	str r3, [sp]
	adds r3, r2, #0
	muls r4, r1
	adds r5, r4, #0
	movs r2, #3
	adds r1, r5, #0
	bl sub_80051D6
	adds r4, r0, #0
	beq _0803D9EA
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803BE68
_0803D9EA
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0803D9F4 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9F8
sub_803D9F8 ;@ 0x0803D9F8
	adds r1, r0, #0
	ldr r0, _0803DA14 ;@ =gUnknown_030033E8
	push {r3, lr}
	ldr r0, [r0, #8]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	movs r2, #1
	bl sub_80051D6
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803DA14 DCDU gUnknown_030033E8

	thumb_func_start sub_803DA18
sub_803DA18 ;@ 0x0803DA18
	push {lr}
	adds r1, r0, #0
	beq _0803DA42
	ldr r0, _0803DA48 ;@ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA3A
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA38
_0803DA30
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA30
_0803DA38
	ldr r0, [r0, #4]
_0803DA3A
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA42
	pop {r3}
	bx r3
	ALIGN
_0803DA48 DCDU gUnknown_030033E8

	thumb_func_start sub_803DA4C
sub_803DA4C ;@ 0x0803DA4C
	push {lr}
	adds r1, r0, #0
	beq _0803DA76
	ldr r0, _0803DA7C ;@ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA6E
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA6C
_0803DA64
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA64
_0803DA6C
	ldr r0, [r0, #4]
_0803DA6E
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA76
	pop {r3}
	bx r3
	ALIGN
_0803DA7C DCDU gUnknown_030033E8

	thumb_func_start sub_803DA80
sub_803DA80 ;@ 0x0803DA80
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #1
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803DA9C
sub_803DA9C ;@ 0x0803DA9C
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #2
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start nullsub_5
nullsub_5 ;@ 0x0803DAB8
	bx lr
	ALIGN

	thumb_func_start sub_803DABC
sub_803DABC ;@ 0x0803DABC
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_803DAC0
sub_803DAC0 ;@ 0x0803DAC0
	adds r0, r1, #0
	bx lr

	arm_func_start sub_803DAC4
sub_803DAC4 ;@ 0x0803DAC4
	LDR sp, _0803DB28 ;@ =gUnknown_03007F00
	LDR sl, _0803DB2C ;@ =gUnknown_03003EC4
	mov r0, #0x2000000
	mov r1, #0x2000000
	add r1, r1, #0x40000
	STMFD SP!, {r0, r1, lr}
	sub r1, r1, r0
	bl sub_803E288
	LDMFD SP!, {r0, r1, lr}
	LDR r1, _0803DB30 ;@ =gUnknown_030033EC
	STR r0, [r1]
	LDR r1, _0803DB34 ;@ =gUnknown_030033F0
	STR r0, [r1]
	mov pc, lr

	arm_func_start sub_803DAFC
sub_803DAFC ;@ 0x0803DAFC
	LDR r0, _0803DB38 ;@ =0x04000208
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x64
	b _0803DB24

	arm_func_start sub_803DB10
sub_803DB10 ;@ 0x0803DB10
	mov r0, #0
	mov pc, lr

	arm_func_start sub_803DB18
sub_803DB18 ;@ 0x0803DB18
	STMFD SP!, {r0, r1}
	LDMIA sp, {sl, sp}
	mov pc, lr
_0803DB24
	b _0803DB24
	ALIGN
_0803DB28 DCDU gUnknown_03007F00
_0803DB2C DCDU gUnknown_03003EC4
_0803DB30 DCDU gUnknown_030033EC
_0803DB34 DCDU gUnknown_030033F0
_0803DB38 DCDU 0x04000208
