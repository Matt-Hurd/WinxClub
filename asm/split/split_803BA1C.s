	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start j_nullsub_7
	bx pc
	ALIGN
	thumb_func_end j_nullsub_7

	arm_func_start nullsub_7
	bx lr
	arm_func_end nullsub_7
	END
