	non_word_aligned_thumb_func_start sub_801E756
	adds r3, #1
	cmp r3, #5
	b %73
	ALIGN
_0801E75C DCDU 0xFF8003FF
_0801E760 DCDU 0xFF8007FF
_0801E764 DCDU gUnknown_03003458
_0801E768 DCDU gUnknown_03003EB8
_0801E76C DCDU 0x00010000
_0801E770 DCDU 0x00000000
73
	blo %72
	movs r3, #0
	mvns r3, r3
74
	adds r6, r3, #0
	adds r3, r6, #1
	bne %64
	cmp r5, r1
	bne %75
	cmp r2, r0
	bne %76
75
	cmp r5, r0
	bne %64
	cmp r2, r1
	beq %64
76
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne %77
	str r0, [r4, #0x34]
	b %44
77
	str r1, [r4, #0x34]
	b %44
	thumb_func_end sub_801E756

