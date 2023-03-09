    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_802EC90
sub_802EC90 ;@ 0x0802EC90
	subs r1, #0x61
	cmp r1, #6
	bhs _0802ECB6
	add r3, pc, #0x8 ;@ =_0802ECA0
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0802ECA0
	DCB 0x03
_0802ECA1
	DCB 0x0C
_0802ECA2
	DCB 0x14
_0802ECA3
	DCB 0x1D
_0802ECA4
	DCB 0x2D
_0802ECA5
	DCB 0x25
loc_802eca6
	movs r1, #0xd9
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
_0802ECB6
	bx lr
loc_802ecb8
	ldr r1, _0802ED10 ;@ =0x00000362
	strh r1, [r0, #0x18]
	adds r1, #3
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecc8
	movs r1, #0x6d
	lsls r1, r1, #3
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecda
	ldr r1, _0802ED14 ;@ =0x00000366
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecea
	ldr r1, _0802ED18 ;@ =0x0000035E
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecfa
	movs r1, #0x1b
	lsls r1, r1, #5
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr

	thumb_func_start nullsub_55
nullsub_55 ;@ 0x0802ED0C
	bx lr
	ALIGN
_0802ED10 DCDU 0x00000362
_0802ED14 DCDU 0x00000366
_0802ED18 DCDU 0x0000035E
