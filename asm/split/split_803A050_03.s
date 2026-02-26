	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT HostileCreature__Dying

	thumb_func_start ScannerScriptGroup__Dying

ScannerScriptGroup__Dying
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0xc0
	cmp r4, #0xf
	beq %5
	cmp r4, #0x11
	beq %6
	cmp r4, #0x12
	bne %7
	ldr r0, [r3, #4]
	movs r3, #1
	lsls r3, r3, #0x10
	ldr r1, [r2, #0x30]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0xf
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
4
	pop {r4}
	pop {r3}
	bx r3
5
	ldr r0, [r3, #4]
	ldr r1, [r2, #0x30]
	movs r3, #8
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1c
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
	b %4
6
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	orrs r0, r1
	str r0, [r2, #0x30]
	b %4
7
	bl HostileCreature__Dying
	b %4

	END
