	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB0

	thumb_func_start sub_8002828

sub_8002828
	push {r3, r4, r5, r6, r7}
	movs r2, #1
	lsls r2, r2, #0xb
	movs r4, #3
	ldr r1, [r0, #8]
	lsls r4, r4, #0x19
	adds r2, r0, r2
	cmp r1, #0
	ldr r6, _08002C14
	ldr r5, _08002C10
	beq %2
	mov r7, sp
	adds r0, r5, #0
1
	str r6, [sp]
	str r7, [r0]
	ldr r3, [r2, #0x20]
	subs r3, r1, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r0, #4]
	ldr r3, _08002C18
	str r3, [r0, #8]
	ldr r3, [r0, #8]
	ldr r1, [r1]
	cmp r1, #0
	bne %1
2
	ldr r0, _08002C1C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %4
	mov r1, sp
3
	str r6, [sp]
	str r1, [r5]
	ldr r3, [r2, #0x20]
	subs r3, r0, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r5, #4]
	ldr r3, _08002C20
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne %3
4
	pop {r3, r4, r5, r6, r7}
	bx lr

	ALIGN
_08002C10 DCDU REG_DMA3
_08002C14 DCDU 0x10001000
_08002C18 DCDU 0x85000010
_08002C1C DCDU gUnknown_03003EB0
_08002C20 DCDU 0x85000008

	END
