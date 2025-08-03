    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_030033EC
	IMPORT gUnknown_030033F0
	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003EC4
	IMPORT gInterruptStack
	IMPORT sub_80046EE
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047B6
	IMPORT sub_80047BA
	IMPORT sub_80047BE
	IMPORT sub_80047DA
	IMPORT sub_8005106
	IMPORT sub_80051D6
	IMPORT sub_8005220
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03000000
	IMPORT sub_800A9BC
	IMPORT sub_8008B14
	IMPORT sub_800AD8C
	IMPORT sub_800A270
	IMPORT sub_80081D4
	IMPORT sub_8008EB4
	IMPORT sub_80050C0
	IMPORT __16__rt_memclr

	thumb_func_start sub_803D4A8
sub_803D4A8 ;@ 0x0803D4A8
	push {r4, lr}
	cmp r0, #8
	bhs _0803D57C
	add r3, pc, #0x8 ;@ =_0803D4B8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0803D4B8
	DCB 0x04
_0803D4B9
	DCB 0x08
_0803D4BA
	DCB 0x17
_0803D4BB
	DCB 0x26
_0803D4BC
	DCB 0x35
_0803D4BD
	DCB 0x44
_0803D4BE
	DCB 0x53
_0803D4BF
	DCB 0x63
loc_803d4c0
	movs r0, #0
_0803D4C2
	pop {r4}
	pop {r3}
	bx r3
loc_803d4c8
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x30
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D4E2
	adds r0, r4, #0
	bl sub_800A9BC
_0803D4E2
	adds r0, r4, #0
	b _0803D4C2
loc_803d4e6
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D500
	adds r0, r4, #0
	bl sub_8008B14
_0803D500
	adds r0, r4, #0
	b _0803D4C2
loc_803d504
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D51E
	adds r0, r4, #0
	bl sub_800AD8C
_0803D51E
	adds r0, r4, #0
	b _0803D4C2
loc_803d522
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D53C
	adds r0, r4, #0
	bl sub_800A270
_0803D53C
	adds r0, r4, #0
	b _0803D4C2
loc_803d540
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D55A
	adds r0, r4, #0
	bl sub_80081D4
_0803D55A
	adds r0, r4, #0
	b _0803D4C2
loc_803d55e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0803D5A0 ;@ =0x00005524
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D578
	adds r0, r4, #0
	bl sub_8008EB4
_0803D578
	adds r0, r4, #0
	b _0803D4C2
_0803D57C
	b _0803D59C
loc_803d57e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x5c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D598
	adds r0, r4, #0
	bl gUnknown_03000000
_0803D598
	adds r0, r4, #0
	b _0803D4C2
_0803D59C
	movs r0, #0
	b _0803D4C2
	ALIGN
_0803D5A0 DCDU 0x00005524

	thumb_func_start sub_803D5A4
sub_803D5A4 ;@ 0x0803D5A4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _0803D664 ;@ =0x04000100
	adds r5, r2, #0
	movs r7, #0
	sub sp, #0x1c
	strh r7, [r1, #0xa]
	ldr r1, _0803D668 ;@ =gUnknown_030033F4
	str r7, [r1]
	str r7, [r1, #4]
	bl sub_803D4A8
	adds r4, r0, #0
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0x10]
	NEGS r0, r0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r6, [sp, #4]
	str r5, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	cmp r5, #0
	beq _0803D648
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	ldr r1, [sp, #4]
	bl __call_via_r2
	adds r5, r0, #0
	movs r6, #0
	cmp r0, #0
	beq _0803D61A
	adds r3, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [r4]
	adds r6, r0, #0
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
_0803D61A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	ldr r1, [sp, #0x14]
	bl __call_via_r3
	cmp r5, #0
	beq _0803D648
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_0803D648
	adds r0, r4, #0
	beq _0803D658
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_0803D658
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803D664 DCDU 0x04000100
_0803D668 DCDU gUnknown_030033F4

	thumb_func_start sub_803D66C
sub_803D66C ;@ 0x0803D66C
	ldrh r2, [r0]
	ldr r1, _0803D67C ;@ =0x04000040
	strh r2, [r1, #0x10]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x12]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x14]
	bx lr
	ALIGN
_0803D67C DCDU 0x04000040

	thumb_func_start sub_803D680
sub_803D680 ;@ 0x0803D680
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #4
	add r2, sp, #0x28
	ldm r2!, {r0, r2}
	adds r6, r3, #0
	ldr r3, [r4]
	movs r5, #0x1f
	lsls r5, r5, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r3, r5
	orrs r0, r3
	movs r3, #0x3f
	lsls r3, r3, #0xd
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0xd
	bics r0, r3
	orrs r0, r2
	lsrs r0, r0, #3
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4]
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80046EE
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D758
	add r3, pc, #0x4 ;@ =_0803D6CC
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D6CC
	DCB 0x02
_0803D6CD
	DCB 0x12
_0803D6CE
	DCB 0x24
_0803D6CF
	DCB 0x34
_0803D6D0
	DCB 0x46
_0803D6D1
	DCB 0x59
loc_803d6d2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d6f2
	movs r1, #3
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d716
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D758
loc_803d736
	movs r1, #2
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r6, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047B6
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
_0803D758
	b _0803D7A2
loc_803d75a
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r7, r0, r6
	adds r1, r7, #0
	adds r2, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r7, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
	b _0803D7A2
loc_803d780
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	movs r0, #0x10
	subs r2, r0, r6
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r4]
	movs r1, #0xf8
	bics r0, r1
	lsls r1, r6, #0x1b
	lsrs r1, r1, #0x18
	orrs r0, r1
	str r0, [r4]
_0803D7A2
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D7F8
	add r3, pc, #0x4 ;@ =_0803D7B4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D7B4
	DCB 0x02
_0803D7B5
	DCB 0x14
_0803D7B6
	DCB 0x02
_0803D7B7
	DCB 0x14
_0803D7B8
	DCB 0x14
_0803D7B9
	DCB 0x02
loc_803d7ba
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	adds r2, r0, r2
	cmp r2, #0x10
	bls _0803D7F8
	movs r2, #0x10
	subs r0, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	b _0803D7F8
loc_803d7de
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	subs r2, r0, r2
	bpl _0803D7F8
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r4]
_0803D7F8
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #4
	beq _0803D806
	cmp r0, #5
	bne _0803D812
_0803D806
	adds r0, r5, #0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	bl sub_8004784
	b _0803D81C
_0803D812
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_8004784
_0803D81C
	movs r1, #0x3f
	ldr r0, [r4]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	bics r0, r1
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803D834
sub_803D834 ;@ 0x0803D834
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r1, r0, #5
	bmi _0803D846
	movs r0, #1
_0803D840
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0803D846
	lsls r1, r0, #6
	bpl _0803D84E
	movs r0, #0
	b _0803D840
_0803D84E
	movs r2, #0x3f
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0x13
	lsls r2, r2, #0x13
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #7
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1a
	lsrs r1, r1, #0x1a
	cmp r1, r3
	str r0, [r4]
	bne _0803D8F0
	bics r0, r2
	str r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D8F0
	add r3, pc, #0x8 ;@ =_0803D884
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0803D884
	DCB 0x03
_0803D885
	DCB 0x1D
_0803D886
	DCB 0x03
_0803D887
	DCB 0x1D
_0803D888
	DCB 0x37
_0803D889
	DCB 0x59
loc_803d88a
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne _0803D8AE
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D8AE
	adds r0, r5, #0
	bl sub_80047BA
	adds r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
	b _0803D8F0
loc_803d8be
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047BA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne _0803D8E2
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D8E2
	adds r0, r5, #0
	bl sub_80047BA
	subs r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
_0803D8F0
	b _0803D978
loc_803d8f2
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, r2, r3
	cmp r0, r2
	bne _0803D918
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D918
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	adds r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	subs r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
	b _0803D978
loc_803d936
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_80047DA
	ldr r1, [r4]
	lsls r2, r1, #0x18
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	adds r2, r2, r3
	cmp r0, r2
	bne _0803D95C
	movs r0, #1
	lsls r0, r0, #0x19
	orrs r0, r1
	str r0, [r4]
	movs r0, #0
	b _0803D840
_0803D95C
	movs r1, #0
	adds r0, r5, #0
	bl sub_80047DA
	subs r4, r0, #1
	movs r1, #1
	adds r0, r5, #0
	bl sub_80047DA
	adds r1, r0, #1
	adds r2, r4, #0
	adds r0, r5, #0
	bl sub_80047BE
_0803D978
	movs r0, #1
	b _0803D840

	thumb_func_start sub_803D97C
sub_803D97C ;@ 0x0803D97C
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_803D984
sub_803D984 ;@ 0x0803D984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9A4 ;@ =gUnknown_030033E8
	sub sp, #8
	ldr r0, [r0, #8]
	str r2, [sp]
	movs r2, #3
	adds r3, r1, #0
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9A4 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9A8
sub_803D9A8 ;@ 0x0803D9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9C0 ;@ =gUnknown_030033E8
	adds r3, r2, #0
	adds r2, r1, #0
	adds r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_8005220
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0803D9C0 DCDU gUnknown_030033E8

	thumb_func_start sub_803D9C4
sub_803D9C4 ;@ 0x0803D9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0803D9F4 ;@ =gUnknown_030033E8
	sub sp, #8
	ldr r0, [r0, #8]
	str r3, [sp]
	adds r3, r2, #0
	muls r4, r1
	adds r5, r4, #0
	movs r2, #3
	adds r1, r5, #0
	bl sub_80051D6
	adds r4, r0, #0
	beq _0803D9EA
	adds r1, r5, #0
	adds r0, r4, #0
	bl __16__rt_memclr
_0803D9EA
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0803D9F4 DCDU gUnknown_030033E8

	thumb_func_start maybeMallocEWRAM
maybeMallocEWRAM ;@ 0x0803D9F8
	adds r1, r0, #0
	ldr r0, _0803DA14 ;@ =gUnknown_030033E8
	push {r3, lr}
	ldr r0, [r0, #8]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	movs r2, #1
	bl sub_80051D6
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0803DA14 DCDU gUnknown_030033E8

	thumb_func_start sub_803DA18
sub_803DA18 ;@ 0x0803DA18
	push {lr}
	adds r1, r0, #0
	beq _0803DA42
	ldr r0, _0803DA48 ;@ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA3A
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA38
_0803DA30
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA30
_0803DA38
	ldr r0, [r0, #4]
_0803DA3A
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA42
	pop {r3}
	bx r3
	ALIGN
_0803DA48 DCDU gUnknown_030033E8

	thumb_func_start __da__FPv
__da__FPv ;@ 0x0803DA4C
	push {lr}
	adds r1, r0, #0
	beq _0803DA76
	ldr r0, _0803DA7C ;@ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA6E
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA6C
_0803DA64
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA64
_0803DA6C
	ldr r0, [r0, #4]
_0803DA6E
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA76
	pop {r3}
	bx r3
	ALIGN
_0803DA7C DCDU gUnknown_030033E8

	thumb_func_start sub_803DA80
sub_803DA80 ;@ 0x0803DA80
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #1
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803DA9C
sub_803DA9C ;@ 0x0803DA9C
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #2
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start nullsub_5
nullsub_5 ;@ 0x0803DAB8
	bx lr
	ALIGN

	thumb_func_start sub_803DABC
sub_803DABC ;@ 0x0803DABC
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_803DAC0
sub_803DAC0 ;@ 0x0803DAC0
	adds r0, r1, #0
	bx lr

	arm_func_start __rt_stackheap_init
__rt_stackheap_init ;@ 0x0803DAC4
	LDR sp, _0803DB28 ;@ =gInterruptStack
	LDR sl, _0803DB2C ;@ =gUnknown_03003EC4
	mov r0, #0x2000000
	mov r1, #0x2000000
	add r1, r1, #0x40000
	STMFD SP!, {r0, r1, lr}
	sub r1, r1, r0
	bl sub_80050C0
	LDMFD SP!, {r0, r1, lr}
	LDR r1, _0803DB30 ;@ =gUnknown_030033EC
	STR r0, [r1]
	LDR r1, _0803DB34 ;@ =gUnknown_030033F0
	STR r0, [r1]
	mov pc, lr

	arm_func_start sub_803DAFC
sub_803DAFC ;@ 0x0803DAFC
	LDR r0, _0803DB38 ;@ =0x04000208
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x64
	b _sys_exit

	arm_func_start sub_803DB10
sub_803DB10 ;@ 0x0803DB10
	mov r0, #0
	mov pc, lr

	arm_func_start sub_803DB18
sub_803DB18 ;@ 0x0803DB18
	STMFD SP!, {r0, r1}
	LDMIA sp, {sl, sp}
	mov pc, lr


	arm_func_start _sys_exit
_sys_exit
	b _sys_exit
	ALIGN
_0803DB28 DCDU gInterruptStack
_0803DB2C DCDU gUnknown_03003EC4
_0803DB30 DCDU gUnknown_030033EC
_0803DB34 DCDU gUnknown_030033F0
_0803DB38 DCDU 0x04000208
	END