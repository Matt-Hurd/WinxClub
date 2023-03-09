    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030031EE
	IMPORT gUnknown_030031FE
	IMPORT gUnknown_03003C40
	IMPORT gUnknown_03003EA0
	IMPORT sub_800C0EC
	IMPORT sub_803C47C

	arm_func_start sub_803F4CC
sub_803F4CC ;@ 0x0803F4CC
	mov r2, r0
	LDR r0, [r0, #4]
	cmp r0, r1
	bhs _0803F508
	LDR r3, [r2, #8]
	add ip, r3, #2
	STR ip, [r2, #8]
	ldrh r3, [r3]
	rsb ip, r0, #0x10
	add r0, r0, #0x10
	MOV r3, r3, LSL ip
	LDR ip, [r2]
	STR r0, [r2, #4]
	orr r3, r3, ip
	STR r3, [r2]
_0803F508
	LDR r3, [r2]
	rsb r0, r1, #0x20
	LDR ip, [r2, #4]
	MOV r0, r3, LSR r0
	sub ip, ip, r1
	MOV r1, r3, LSL r1
	STMIA r2, {r1, ip}
	bx lr

	thumb_func_start sub_803F528
sub_803F528 ;@ 0x0803F528
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0x14
	str r4, [sp, #4]
	cmp r3, #0xff
	bne _0803F536
	ldrb r3, [r0, #9]
_0803F536
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	bl sub_803C47C
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803F55C
sub_803F55C ;@ 0x0803F55C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x70
	ldrb r2, [r4, #4]
	movs r5, #0
	cmp r2, #0xff
	beq _0803F5E0
	ldrb r1, [r4, #5]
	cmp r1, #0xff
	beq _0803F5E0
	ldrb r3, [r0, #0xc]
	ldr r6, _0803F5E8 ;@ =gUnknown_03003C40
	lsls r3, r3, #2
	ldr r3, [r6, r3]
	adds r6, r0, #0
	adds r6, #0x20
	b _0803F594
_0803F57E
	movs r5, #0x2e
	ldrb r5, [r5, r3]
	ldrb r7, [r6, #0xe]
	cmp r5, r7
	bne _0803F590
	cmp r3, r0
	beq _0803F590
	movs r5, #1
	b _0803F592
_0803F590
	movs r5, #0
_0803F592
	ldr r3, [r3, #4]
_0803F594
	cmp r3, #0
	beq _0803F59E
	cmp r5, #0
	beq _0803F57E
	b _0803F5DA
_0803F59E
	cmp r5, #0
	bne _0803F5DA
	ldr r3, _0803F5F0 ;@ =gUnknown_030031FE
	ldr r0, _0803F5EC ;@ =0x0000FFFF
	lsls r2, r2, #3
	adds r2, r2, r3
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrb r2, [r4, #4]
	lsls r1, r2, #3
	ldrh r5, [r3, r1]
	cmp r5, r0
	bne _0803F5DA
	adds r1, r1, r3
	ldrh r3, [r1, #2]
	cmp r3, r0
	bne _0803F5DA
	ldrh r3, [r1, #4]
	cmp r3, r0
	bne _0803F5DA
	ldrh r1, [r1, #6]
	cmp r1, r0
	bne _0803F5DA
	ldr r0, _0803F5F4 ;@ =gUnknown_03003EA0
	ldr r1, _0803F5F8 ;@ =gUnknown_030031EE
	ldr r0, [r0]
	ldrb r1, [r1, r2]
	movs r2, #1
	bl sub_800C0EC
_0803F5DA
	movs r0, #0xff
	strb r0, [r4, #4]
	strb r0, [r4, #5]
_0803F5E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F5E8 DCDU gUnknown_03003C40
_0803F5EC DCDU 0x0000FFFF
_0803F5F0 DCDU gUnknown_030031FE
_0803F5F4 DCDU gUnknown_03003EA0
_0803F5F8 DCDU gUnknown_030031EE
