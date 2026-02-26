	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT SetNextGlobalFunction
	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454

	thumb_func_start sub_80167AC

sub_80167AC
	ldr r0, _08016AA8
	push {r4, lr}
	ldr r0, [r0]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	ldr r0, _08016AAC
	sub sp, #8
	ldr r1, [r0]
	adds r1, #0x90
	ldrb r2, [r1]
	ldr r0, [r0]
	adds r0, #0x80
	cmp r2, #0
	beq %6
	cmp r2, #1
	beq %6
	cmp r2, #2
	bne %8
6
	ldrb r2, [r1, #0xc]
	strb r2, [r1]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x24]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl SetNextGlobalFunction
7
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
8
	strb r2, [r1, #0xc]
	adds r2, r3, #0
	ldr r3, [r3, #0x58]
	adds r2, #0x58
	str r3, [sp]
	ldr r4, [r2, #4]
	str r4, [sp, #4]
	str r3, [r0, #0x20]
	ldr r3, [r2]
	str r3, [sp]
	ldr r2, [r2, #4]
	str r2, [sp, #4]
	str r2, [r0, #0x24]
	ldrb r2, [r0, #4]
	cmp r2, #5
	bhi %9
	movs r2, #0
	strb r2, [r1]
	b %10
9
	movs r2, #2
	strb r2, [r1]
10
	ldr r1, _08016AB0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl SetNextGlobalFunction
	b %7

	ALIGN
_08016AA8 DCDU gUnknown_03003454
_08016AAC DCDU gPlayerEntity
_08016AB0 DCDU 0x0000FFFF

	END
