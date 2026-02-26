	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003E8C
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03007FF8
	IMPORT sub_800B65E
	IMPORT sub_800B708

	thumb_func_start sub_800FEBC

sub_800FEBC
	ldr r0, _080101E4
	push {r4, lr}
	ldr r0, [r0]
	adds r0, #8
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080101E8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
3
	ldr r4, _080101EC
	ldr r0, [r4]
	cmp r0, #0
	beq %4
	bl sub_800B65E
	ldr r0, [r4]
	bl sub_800B708
4
	ldr r2, _080101F0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_080101E4 DCDU gUnknown_03003E98
_080101E8 DCDU gUnknown_03003E8C
_080101EC DCDU gUnknown_03003E94
_080101F0 DCDU gUnknown_03007FF8

	END
