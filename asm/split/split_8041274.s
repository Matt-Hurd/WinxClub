	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT sub_803DA18
	IMPORT __da__FPv

	thumb_func_start sub_8041274
sub_8041274
	adds r2, r0, #0
	adds r0, r1, #0
	push {r4, lr}
	beq %3
	ldr r4, _080412A4
	movs r1, #3
	mvns r1, r1
	str r2, [r4]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne %1
	bl __da__FPv
	b %2
1
	bl sub_803DA18
2
	movs r0, #0
	str r0, [r4]
3
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080412A4 DCDU gUnknown_030033E8
	END
