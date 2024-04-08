    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003520
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_803B8CE
	IMPORT sub_803D46C
	IMPORT sub_8040C38

	thumb_func_start sub_8040708
sub_8040708 ;@ 0x08040708
	push {r4, lr}
	ldrh r2, [r1, #4]
	cmp r2, #0x20
	bhs _0804071A
	add r3, pc, #0x8 ;@ =_0804071C
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0804071A
	b _08040954
_0804071C
	DCB 0x25, 0x00
_0804071E
	DCB 0x20, 0x00
_08040720
	DCB 0x20, 0x00
_08040722
	DCB 0x20, 0x00
_08040724
	DCB 0x28, 0x00
_08040726
	DCB 0x35, 0x00
_08040728
	DCB 0x35, 0x00
_0804072A
	DCB 0x1C, 0x01
_0804072C
	DCB 0x3E, 0x00
_0804072E
	DCB 0x47, 0x00
_08040730
	DCB 0x35, 0x00
_08040732
	DCB 0x5B, 0x00
_08040734
	DCB 0x63, 0x00
_08040736
	DCB 0x6A, 0x00
_08040738
	DCB 0x75, 0x00
_0804073A
	DCB 0xC1, 0x00
_0804073C
	DCB 0xD2, 0x00
_0804073E
	DCB 0xE8, 0x00
_08040740
	DCB 0x1C, 0x01
_08040742
	DCB 0x1C, 0x01
_08040744
	DCB 0xFD, 0x00
_08040746
	DCB 0x0B, 0x01
_08040748
	DCB 0x1C, 0x01
_0804074A
	DCB 0x1C, 0x01
_0804074C
	DCB 0x1C, 0x01
_0804074E
	DCB 0x1C, 0x01
_08040750
	DCB 0x1C, 0x01
_08040752
	DCB 0x0F, 0x01
_08040754
	DCB 0x1C, 0x01
_08040756
	DCB 0x1C, 0x01
_08040758
	DCB 0x1C, 0x01
_0804075A
	DCB 0x1C, 0x01
loc_804075c
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	lsls r1, r1, #3
	strh r1, [r0, #0x16]
_08040766
	pop {r4}
	pop {r3}
	bx r3
loc_804076c
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	lsrs r2, r1, #4
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r2, #0
	beq _0804077E
	strb r2, [r0, #0x19]
_0804077E
	cmp r1, #0
	beq _08040766
	strb r1, [r0, #0x1a]
_08040784
	b _08040766
loc_8040786
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	NEGS r2, r1
	cmp r1, #0x10
	blo _08040794
	lsrs r2, r1, #4
_08040794
	strb r2, [r0, #0x18]
	b _08040766
loc_8040798
	ldrh r1, [r1, #6]
	movs r2, #0x10
	lsrs r1, r1, #1
	adds r1, #0xc0
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
_080407A8
	b _08040766
loc_80407aa
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq _08040766
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	ldr r2, [r0, #0x48]
	lsls r1, r1, #8
	adds r1, r2, r1
	str r1, [r0, #0x48]
	ldr r2, [r0, #0x3c]
	cmp r1, r2
	bls _08040766
	ldr r3, [r0, #0x30]
_080407C6
	ldr r1, [r0, #0x48]
	subs r1, r1, r3
	str r1, [r0, #0x48]
	cmp r1, r2
	bhi _080407C6
	b _08040766
loc_80407d2
	ldrh r1, [r1, #6]
	ldr r0, _08040968 ;@ =gUnknown_03003BC8
	adds r1, #0xff
	strb r1, [r0, #7]
	ldr r1, [r0, #0x28]
	ldr r1, [r1]
	strh r1, [r0, #0xc]
_080407E0
	b _08040766
loc_80407e2
	ldrh r1, [r1, #6]
	movs r2, #0x10
	strb r1, [r0, #0xf]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
loc_80407f0
	ldrh r0, [r1, #6]
	lsrs r1, r0, #4
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	lsls r1, r1, #1
	adds r0, r1, r0
	bl sub_8040C38
	b _08040766
loc_8040806
	ldrh r1, [r1, #6]
	lsrs r4, r1, #4
	cmp r4, #0xf
	bhs _0804088E
	add r3, pc, #0x8 ;@ =_08040818
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08040818
	DCB 0x3B
_08040819
	DCB 0x3B
_0804081A
	DCB 0x3B
_0804081B
	DCB 0x3B
_0804081C
	DCB 0x3B
_0804081D
	DCB 0x08
_0804081E
	DCB 0x3B
_0804081F
	DCB 0x3B
_08040820
	DCB 0x3B
_08040821
	DCB 0x3B
_08040822
	DCB 0x0C
_08040823
	DCB 0x1C
_08040824
	DCB 0x3B
_08040825
	DCB 0x2B
_08040826
	DCB 0x36, 0x00
loc_8040828
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strh r1, [r0, #0x12]
_0804082E
	b _08040766
loc_8040830
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	cmp r1, #0x40
	ble _08040846
	movs r1, #0x40
	strb r1, [r0, #0xf]
_08040846
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
loc_8040850
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	subs r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	bpl _08040864
	movs r1, #0
	strb r1, [r0, #0xf]
_08040864
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
_0804086C
	b _08040766
loc_804086e
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #6]
	beq _08040784
	ldrh r2, [r0, #4]
	movs r3, #1
	orrs r2, r3
	strh r2, [r0, #4]
	adds r1, #0xff
	strb r1, [r0, #6]
	b _08040766
loc_8040884
	lsls r0, r1, #0x1c
	ldr r1, _08040968 ;@ =gUnknown_03003BC8
	lsrs r0, r0, #0x1c
	strb r0, [r1, #5]
	b _08040766
_0804088E
	ldr r0, _08040968 ;@ =gUnknown_03003BC8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080407A8
	adds r0, r2, #0
	bl sub_803B8CE
	b _08040766
loc_804089e
	ldrh r0, [r1, #6]
	cmp r0, #0x10
	bhs _080408AA
	ldr r1, _08040968 ;@ =gUnknown_03003BC8
	strb r0, [r1, #4]
	b _08040766
_080408AA
	ldr r4, _08040968 ;@ =gUnknown_03003BC8
	ldr r3, _0804096C ;@ =0x00333333
	strb r0, [r4, #0xb]
	muls r0, r3
	lsrs r1, r0, #0x17
	ldr r0, _08040970 ;@ =gUnknown_03003520
	ldrh r0, [r0, #0x18]
	bl sub_803D46C
	strh r0, [r4, #0xe]
	b _08040766
loc_80408c0
	ldrh r1, [r1, #6]
	ldr r3, _08040968 ;@ =gUnknown_03003BC8
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r1, [r3, #0x16]
	ldr r1, _08040970 ;@ =gUnknown_03003520
	ldr r0, _08040974 ;@ =gUnknown_030037A0
	adds r1, #0x10
	ldrb r1, [r1, #0xf]
	cmp r1, #0
	beq _080407E0
	movs r3, #0x10
_080408D8
	ldrh r2, [r0, #4]
	lsls r4, r2, #0x1f
	bmi _080408E2
	orrs r2, r3
	strh r2, [r0, #4]
_080408E2
	subs r1, #1
	adds r0, #0x4c
	cmp r1, #0
	bne _080408D8
	b _08040766
loc_80408ec
	ldrh r1, [r1, #6]
	NEGS r0, r1
	cmp r1, #0x10
	blo _080408F6
	lsrs r0, r1, #4
_080408F6
	ldr r2, _08040968 ;@ =gUnknown_03003BC8
	movs r3, #0xff
	ldrh r1, [r2, #0x16]
	adds r3, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r2, #0x16]
	cmp r1, r3
	bls _0804082E
	movs r1, #0
	cmp r0, #0
	blt _08040912
	adds r1, r3, #0
_08040912
	strh r1, [r2, #0x16]
	b _08040766
loc_8040916
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0804092C
	ldrb r1, [r1, #0x14]
	cmp r1, #0
	beq _0804092C
	ldrh r1, [r0, #4]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
_0804092C
	movs r1, #1
	strh r1, [r0, #4]
	b _08040766
loc_8040932
	ldrh r1, [r1, #6]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x20]
	b _08040766
loc_804093a
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #7]
	beq _08040948
	adds r1, #0xff
	strb r1, [r0, #7]
_08040948
	ldr r1, [r0, #8]
	adds r1, #0x7c
	str r1, [r0, #0x48]
	movs r1, #0
	str r1, [r0, #0x40]
	b _08040766
_08040954
	ldr r0, _08040968 ;@ =gUnknown_03003BC8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0804086C
	ldrh r1, [r1, #6]
	adds r0, r2, #0
	bl sub_803B8CE
	b _08040766
	ALIGN
_08040968 DCDU gUnknown_03003BC8
_0804096C DCDU 0x00333333
_08040970 DCDU gUnknown_03003520
_08040974 DCDU gUnknown_030037A0
	END