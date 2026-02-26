	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GameObj__ctor
	IMPORT __VTABLE__315HostileBaseObject
	IMPORT sub_803DA18

	thumb_func_start HostileCreature__ctor

HostileCreature__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08029354
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
_08029354 DCDU __VTABLE__315HostileBaseObject

	END
