	non_word_aligned_thumb_func_start sub_8025A32
	movs r7, #0x88
	strh r7, [r0, #0xe]
	movs r3, #0x89
	strh r3, [r0, #0xa]
	movs r3, #0x8a
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x89
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C08
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C0C
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025A72
	ldr r3, _08025C10
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C14
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C18
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025AB6
	ldr r3, _08025C1C
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C20
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C24
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025AFA
	ldr r3, _08025C28
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C2C
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C30
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025B3E
	movs r3, #0x7f
	strh r3, [r0, #0xe]
	movs r3, #0x80
	strh r3, [r0, #0xa]
	movs r3, #0x81
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0x7c
	strh r3, [r0, #0x1e]
	movs r3, #0x7d
	strh r3, [r0, #0x1a]
	movs r3, #0x7e
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0xa1
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C34
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025B84
	movs r3, #0x71
	lsls r3, r3, #3
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C38
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C3C
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	b %57
	ALIGN
_08025BC8 DCDU 0x0000050A
_08025BCC DCDU 0x0000050B
_08025BD0 DCDU 0x00442000
_08025BD4 DCDU 0x000002BE
_08025BD8 DCDU 0x0000050D
_08025BDC DCDU 0x00448800
_08025BE0 DCDU 0x00000513
_08025BE4 DCDU 0x0043F800
_08025BE8 DCDU 0x00000514
_08025BEC DCDU 0x0000050C
_08025BF0 DCDU 0x00441800
_08025BF4 DCDU 0x00000511
_08025BF8 DCDU 0x00439000
_08025BFC DCDU 0x00449000
_08025C00 DCDU 0x0000022D
_08025C04 DCDU 0x00000512
_08025C08 DCDU 0x00000517
_08025C0C DCDU 0x0043D800
_08025C10 DCDU 0x000002D6
_08025C14 DCDU 0x00000506
_08025C18 DCDU 0x0044A800
_08025C1C DCDU 0x0000035B
_08025C20 DCDU 0x00000509
_08025C24 DCDU 0x00450800
_08025C28 DCDU 0x000002FB
_08025C2C DCDU 0x00000507
_08025C30 DCDU 0x0044C800
_08025C34 DCDU 0x0043B800
_08025C38 DCDU 0x0000050E
_08025C3C DCDU 0x00452000
57
	strb r0, [r2, #0xc]
	b %15
sub_8025C44
	movs r3, #0xb7
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FAC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB0
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025C80
	movs r7, #0x97
	strh r7, [r0, #0xe]
	movs r3, #0x98
	strh r3, [r0, #0xa]
	movs r3, #0x99
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x98
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x29
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB4
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025CC2
	ldr r7, _08025FB8
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, r7, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	adds r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FBC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC0
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
sub_8025D02
	movs r7, #0xff
	adds r7, #0x7a
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	subs r7, r3, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FC4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC8
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15
58
	movs r3, #0xff
	adds r3, #0xa8
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #3
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FCC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	ldr r3, [r1, #8]
	ands r3, r6
	ldr r6, _08025FD0
	adds r3, r3, r6
	str r3, [r1, #8]
	ldr r3, [r1]
	ands r3, r5
	adds r3, r3, r4
	str r3, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r3, #0x14
	strb r3, [r2, #0xc]
	movs r2, #1
	lsls r3, r4, #0xd
	bics r0, r3
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b %39
59
	movs r2, #0xff
	adds r2, #0xab
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	b %39
60
	movs r3, #0xba
	strh r3, [r0, #0xe]
	movs r3, #0xbb
	strh r3, [r0, #0xa]
	movs r3, #0xbc
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xb7
	strh r3, [r0, #0x1e]
	movs r3, #0xb8
	strh r3, [r0, #0x1a]
	movs r3, #0xb9
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FD4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FD8
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %44
	thumb_func_end sub_8025A32

