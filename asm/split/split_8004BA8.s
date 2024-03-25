    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_080494B8
	IMPORT sub_803C128

	thumb_func_start sub_8004BA8
sub_8004BA8 ;@ 0x08004BA8
	push {r4, r5, r6}
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1e
	bpl _08004C1E
	cmp r1, #0
	bne _08004BC0
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	subs r1, r2, r1
	NEGS r1, r1
	b _08004BD4
_08004BC0
	cmp r1, #0
	bgt _08004BD4
	ldr r2, [r0, #0x10]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	subs r2, r3, r2
	NEGS r3, r1
	cmp r2, r3
	bge _08004BD4
	NEGS r1, r2
_08004BD4
	adds r4, r1, #1
	cmp r1, #0
	bge _08004C1E
	movs r5, #1
	lsls r5, r5, #0xa
	movs r6, #0x3f
	lsls r6, r6, #0xa
_08004BE2
	ldr r1, [r0, #0x10]
	ldr r2, [r1, #4]
	ldrh r1, [r2]
	lsrs r3, r1, #0xa
	lsls r3, r3, #0x1a
	beq _08004BFC
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r6
	bics r3, r6
	orrs r1, r3
	strh r1, [r2]
	b _08004C0C
_08004BFC
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	strh r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #4
	ldr r2, [r1]
	subs r2, #2
	str r2, [r1]
_08004C0C
	ldr r1, [r0, #0x10]
	adds r1, #0xa
	ldrh r2, [r1]
	adds r2, #1
	strh r2, [r1]
	adds r1, r4, #0
	adds r4, #1
	cmp r1, #0
	blt _08004BE2
_08004C1E
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8004C22
sub_8004C22 ;@ 0x08004C22
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_23
nullsub_23 ;@ 0x08004C26
	bx lr

	thumb_func_start sub_8004C28
sub_8004C28 ;@ 0x08004C28
	movs r0, #0
	bx lr

	thumb_func_start sub_8004C2C
sub_8004C2C ;@ 0x08004C2C
	cmp r1, #0
	beq _08004C38
	cmp r1, #1
	bne _08004C3E
	lsls r0, r1, #0xd
	bx lr
_08004C38
	movs r0, #1
	lsls r0, r0, #9
	bx lr
_08004C3E
	movs r0, #0
	bx lr
	ALIGN

	arm_func_start sub_8004C44
sub_8004C44 ;@ 0x08004C44
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r4, #0x10000
	LDR r0, _08004DBC ;@ =gUnknown_080494B8
	blo _08004D38
	cmp r4, #0x1000000
	blo _08004CD8
	cmp r4, #0x10000000
	blo _08004C80
	cmp r4, #0x40000000
	LDRCCB r0, [r0, r4, lsr #22]
	MOVCC r5, r0, LSL #7
	LDRCSB r0, [r0, r4, lsr #24]
	MOVCS r5, r0, LSL #8
	b _08004C94
_08004C80
	cmp r4, #0x4000000
	LDRCCB r0, [r0, r4, lsr #18]
	MOVCC r5, r0, LSL #5
	LDRCSB r0, [r0, r4, lsr #20]
	MOVCS r5, r0, LSL #6
_08004C94
	mov r1, r4
	mov r0, r5
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r5, r0, LSR #1
	mov r0, r5
	mov r1, r4
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
_08004CD8
	cmp r4, #0x100000
	blo _08004CF8
	cmp r4, #0x400000
	LDRCCB r0, [r0, r4, lsr #14]
	MOVCC r5, r0, LSL #3
	LDRCSB r0, [r0, r4, lsr #16]
	MOVCS r5, r0, LSL #4
	b _08004D0C
_08004CF8
	cmp r4, #0x40000
	LDRCCB r0, [r0, r4, lsr #10]
	MOVCC r5, r0, LSL #1
	LDRCSB r0, [r0, r4, lsr #12]
	MOVCS r5, r0, LSL #2
_08004D0C
	mov r1, r4
	mov r0, r5
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
_08004D38
	cmp r4, #0x100
	LDRCCB r0, [r0, r4]
	LDMLOFD SP!, {r3, r4, r5, lr}
	MOVCC r0, r0, LSR #4
	bxlo lr
	mov r1, #1
	cmp r4, #0x1000
	blo _08004D70
	cmp r4, #0x4000
	LDRCCB r0, [r0, r4, lsr #6]
	addlo r0, r1, r0, lsr #1
	LDRCSB r0, [r0, r4, lsr #8]
	addhs r0, r0, #1
	b _08004D84
_08004D70
	cmp r4, #0x400
	LDRCCB r0, [r0, r4, lsr #2]
	addlo r0, r1, r0, lsr #3
	LDRCSB r0, [r0, r4, lsr #4]
	addhs r0, r1, r0, lsr #2
_08004D84
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr

	arm_func_start sub_8004D98
sub_8004D98 ;@ 0x08004D98
	mov r1, #1
	mov r2, #0
_08004DA0
	sub r0, r0, r1
	cmp r0, #0
	add r1, r1, #2
	add r2, r2, #1
	bgt _08004DA0
	sub r0, r2, #1
	bx lr
	ALIGN
_08004DBC DCDU gUnknown_080494B8
_08004DC0 DCDU 0x78011C08
_08004DC4 DCDU 0xD1082953
_08004DC8 DCDU 0x29467841
_08004DCC DCDU 0x7881D105
_08004DD0 DCDU 0xD1022943
_08004DD4 DCDU 0x294478C1
_08004DD8 DCDU 0x3004D004
_08004DDC DCDU 0x2A003A04
_08004DE0 DCDU 0x2000DCEF
	END