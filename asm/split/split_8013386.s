	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __vec_dtor__FPvUiPFPvi_vPFPv_v
	IMPORT gUnknown_03003C3C
	IMPORT sub_8013318

	non_word_aligned_thumb_func_start sub_8013386

sub_8013386
	ldr r0, _08013430
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq %22
	movs r3, #0
	movs r1, #0x1c
	ldr r2, _08013434
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
22
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_08013430 DCDU gUnknown_03003C3C
_08013434 DCDU sub_8013318

	END
