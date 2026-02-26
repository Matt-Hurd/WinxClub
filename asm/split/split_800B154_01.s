	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start InitKeyinputIE

InitKeyinputIE
	ldr r2, _0800B2B4
	push {r4}
	movs r1, #1
	adds r3, r2, #0
	subs r3, #0xe0
	lsls r1, r1, #0xc
	movs r4, #0
	cmp r0, #0
	beq %5
	strh r4, [r3, #0x10]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B2BC
	strh r0, [r3, #0x12]
4
	pop {r4}
	bx lr
5
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	strh r4, [r3, #0x12]
	b %4

	ALIGN
_0800B2B4 DCDU REG_IE
_0800B2BC DCDU 0x0000C00F

	END
