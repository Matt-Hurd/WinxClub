	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT gUnknown_030034FC
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_8011562
	IMPORT sub_80115EC

	thumb_func_start sub_80116D4

sub_80116D4
	ldr r2, _08011730
	push {r3, r4, r5, lr}
	adds r2, #0x34
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq %28
	ldr r4, _08011758
	movs r1, #1
27
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	strh r1, [r3, #4]
	cmp r0, #0
	bne %27
28
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne %29
	bl sub_8011562
29
	movs r0, #0
	bl sub_80115EC
	ldr r5, _0801173C
	movs r4, #0
	strh r4, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq %30
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x12]
30
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq %31
	ldr r2, _08011730
	movs r0, #2
	ldr r2, [r2, #4]
	bl __call_via_r2
	str r4, [r5, #0x24]
31
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08011730 DCDU gUnknown_030034FC
_0801173C DCDU gUnknown_03003BC8
_08011758 DCDU gUnknown_030037A0

	END
