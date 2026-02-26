	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT sub_801CBAA

	thumb_func_start sub_801678C

sub_801678C
	ldr r0, _08016AA4
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #1
	bl sub_801CBAA
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_08016AA4 DCDU gUnknown_03003458

	END
