	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003478

	thumb_func_start sub_803F708
sub_803F708
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	cmp r0, #0
	beq _0803F720
	lsrs r0, r0, #5
	ldr r2, _0803F728
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	ands r0, r1
	beq _0803F724
_0803F720
	movs r0, #1
	bx lr
_0803F724
	movs r0, #0
	bx lr
	ALIGN
_0803F728 DCDU gUnknown_03003478
	END