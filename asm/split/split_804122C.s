    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803ECF0
	IMPORT sub_803DA18

	thumb_func_start sub_804122C
sub_804122C ;@ 0x0804122C
	push {r3, lr}
	ldr r2, _08041248 ;@ =gUnknown_0803ECF0
	ldr r3, _0804124C ;@ =gUnknown_03003EB8
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041240
	bl sub_803DA18
_08041240
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08041248 DCDU gUnknown_0803ECF0
_0804124C DCDU gUnknown_03003EB8
	END