    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT sub_803DA18
	IMPORT sub_803DA4C

	thumb_func_start sub_8041274
sub_8041274 ;@ 0x08041274
	adds r2, r0, #0
	adds r0, r1, #0
	push {r4, lr}
	beq _0804129C
	ldr r4, _080412A4 ;@ =gUnknown_030033E8
	movs r1, #3
	mvns r1, r1
	str r2, [r4]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne _08041294
	bl sub_803DA4C
	b _08041298
_08041294
	bl sub_803DA18
_08041298
	movs r0, #0
	str r0, [r4]
_0804129C
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080412A4 DCDU gUnknown_030033E8
