	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80047A0

sub_80047A0
	ldrh r0, [r0]
	cmp r1, #0
	beq %1
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	b %2
1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	END
