	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start j_nullsub_7
j_nullsub_7
	bx pc
	ALIGN

	arm_func_start nullsub_7
nullsub_7
	bx lr
	END
