	INCLUDE asm/macros.inc
	AREA text, CODE


	non_word_aligned_thumb_func_start Npc__40

Npc__40
	push {r4, r5, r6, r7, lr}
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r0, #0x70]
	adds r7, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	cmp r7, #0x12
	ldr r6, _08025794
	ldr r5, _08025788
	ldr r4, _0802578C
	beq %42
	bgt %34
	cmp r7, #0x12
	bhs %15
	add r3, pc, #0xC
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
15
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
16
	DCB 0xED, 0x00
17
	DCB 0xCA, 0x00
18
	DCB 0xA8, 0x00
19
	DCB 0x82, 0x00
20
	DCB 0x93, 0x02
21
	DCB 0xB5, 0x02
22
	DCB 0xD7, 0x02
23
	DCB 0xF9, 0x02
24
	DCB 0x9A, 0x03
25
	DCB 0xBB, 0x03
26
	DCB 0xDB, 0x03
27
	DCB 0x3E, 0x01
28
	DCB 0x61, 0x01
29
	DCB 0x84, 0x01
30
	DCB 0xC6, 0x01
31
	DCB 0x1C, 0x03
32
	DCB 0x7C, 0x03
33
	DCB 0xA6, 0x01
34
	cmp r7, #0x1c
	beq %47
	bgt %37
	subs r7, #0x13
	cmp r7, #9
	bhs %35
	add r3, pc, #0x8
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
35
	b %15
	ALIGN

	ALIGN
_08025788 DCDU 0xFF8007FF
_0802578C DCDU 0x0027B000
_08025794 DCDU 0xFF8003FF

	END
