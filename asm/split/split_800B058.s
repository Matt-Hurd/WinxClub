	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800B058

sub_800B058
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r2, [r0]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	strh r2, [r0]
	ldrh r2, [r0]
	orrs r2, r1
	strh r2, [r0]
	cmp r1, #2
	bls %5
	ldrh r1, [r0]
	movs r2, #0xf
	lsls r2, r2, #8
	bics r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	lsrs r2, r0, #0x10
	orrs r1, r2
	strh r1, [r0]
5
	bx lr

	END
