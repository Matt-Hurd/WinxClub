	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GameObj__ctor
	IMPORT __VTABLE__333__vftable_GenericObject
	IMPORT sub_803DA18

	thumb_func_start GenericObject__ctor

GenericObject__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080262AC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080262AC DCDU __VTABLE__333__vftable_GenericObject

	END
