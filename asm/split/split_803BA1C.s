    INCLUDE asm/macros.inc
    AREA text, CODE

	thumb_func_start j_nullsub_7
j_nullsub_7 ;@ 0x0803BA1C
	bx pc
	ALIGN

	arm_func_start nullsub_7
nullsub_7 ;@ 0x0803BA20
	bx lr
	END