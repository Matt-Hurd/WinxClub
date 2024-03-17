    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_8016176
	IMPORT sub_80162D6
	IMPORT sub_8028C2E
	IMPORT sub_803DA4C
	IMPORT sub_80401E4

	thumb_func_start sub_80163D4
sub_80163D4 ;@ 0x080163D4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0801641C
	cmp r0, #0x1a
	beq _08016424
	cmp r0, #0x1b
	bne _08016416
	adds r5, r4, #0
	adds r5, #0xf0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08016416
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08016400
	movs r1, #0
	bl sub_80401E4
_08016400
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080164A0 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
_08016416
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0801641C
	adds r0, r4, #0
	bl sub_80162D6
	b _08016416
_08016424
	adds r0, r4, #0
	bl sub_8016176
	b _08016416

	thumb_func_start sub_801642C
sub_801642C ;@ 0x0801642C
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrb r1, [r1]
	adds r4, #0xff
	adds r4, #1
	movs r5, #0
	cmp r1, #0x19
	beq _0801645C
	cmp r1, #0x1a
	beq _0801647C
	cmp r1, #0x1b
	bne _0801649C
	adds r0, #0xf0
	ldrb r0, [r0, #8]
	movs r2, #1
	adds r1, r2, #0
	cmp r0, #0
	bne _08016454
	movs r1, #0
_08016454
	subs r0, r2, r1
_08016456
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0801645C
	adds r0, #0xff
	adds r0, #0x61
	ldrh r0, [r0, #0x1e]
	ldr r1, _080164A4 ;@ =0x0000FFFF
	cmp r0, r1
	bne _08016478
	ldr r0, [r4]
	cmp r0, #0
	beq _08016472
	bl sub_803DA4C
_08016472
	movs r0, #1
	str r5, [r4]
	b _08016456
_08016478
	movs r0, #0
	b _08016456
_0801647C
	movs r1, #0x1b
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _08016498
	ldr r0, [r4]
	cmp r0, #0
	beq _08016492
	bl sub_803DA4C
_08016492
	movs r0, #1
	str r5, [r4]
	b _08016456
_08016498
	movs r0, #0
	b _08016456
_0801649C
	movs r0, #0
	b _08016456
	ALIGN
_080164A0 DCDU gUnknown_0300345C
_080164A4 DCDU 0x0000FFFF
	END