	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_8002230

sub_8002230
	push {r4, r5}
	ldr r1, [r1]
	ldr r2, [r2, #0x30]
	lsls r3, r1, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r2, r2, r3
	ldrh r2, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x12
	adds r1, r2, r1
	movs r2, #0x27
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r4, [r2, #0x3c]
	movs r5, #0x27
	lsls r5, r5, #6
	adds r0, r0, r5
	lsls r3, r4, #0x14
	lsrs r3, r3, #0x15
	cmp r3, r1
	ldr r0, [r0, #0x14]
	bne %3
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r3, r0, r3
	ldr r3, [r3, #4]
	ldr r5, _080023EC
	lsls r3, r3, #8
	lsrs r3, r3, #0x15
	lsls r3, r3, #1
	ands r4, r5
	orrs r3, r4
	str r3, [r2, #0x3c]
3
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, [r4, #4]
	lsls r3, r3, #8
	lsrs r5, r3, #0x15
	beq %4
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r0, r3, r0
	adds r0, #8
	ldr r4, [r4, #8]
	ldr r3, [r0]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r3, r4
	str r3, [r0]
4
	ldr r4, [r2, #0x14]
	adds r0, r4, r1
	ldr r3, [r0, #8]
	lsls r5, r3, #0x15
	beq %5
	lsls r5, r3, #0x15
	lsrs r5, r5, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r0, [r0, #4]
	adds r3, #4
	ldr r4, [r3]
	ldr r5, _080023E8
	lsls r0, r0, #8
	lsrs r0, r0, #0x15
	lsls r0, r0, #0xd
	ands r4, r5
	orrs r0, r4
	str r0, [r3]
5
	ldr r0, [r2, #0x14]
	movs r2, #4
	adds r0, r0, r1
	adds r0, #4
	ldr r1, [r0]
	bics r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr

	ALIGN
_080023E8 DCDU 0xFF001FFF
_080023EC DCDU 0xFFFFF001

	END
