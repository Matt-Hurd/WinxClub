	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800F700

sub_800F700
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq %15
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq %15
	movs r0, #1
	bx lr
15
	movs r0, #0
	bx lr
	ALIGN

	END
