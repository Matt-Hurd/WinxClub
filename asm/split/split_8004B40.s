	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_8004B40

sub_8004B40
	push {r4}
	str r1, [r0, #0x10]
	ldr r3, [r1]
	ldr r4, _08004BA0
	str r3, [r1, #4]
	ldrh r1, [r3]
	orrs r1, r4
	strh r1, [r3]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #8]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #0xa]
	ldr r2, [r0, #0x10]
	movs r1, #0
	strb r1, [r2, #0xc]
	ldr r2, [r0, #0x10]
	strh r1, [r2, #0xe]
	ldr r1, [r0, #0x14]
	movs r2, #2
	orrs r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	pop {r4}
	bx lr

	ALIGN
_08004BA0 DCDU 0x000003FF

	END
