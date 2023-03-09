    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_8013B76
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D2
	IMPORT sub_803C124

	thumb_func_start sub_803F904
sub_803F904 ;@ 0x0803F904
	push {r4}
	cmp r3, #0xff
	bne _0803F90C
	ldrb r3, [r0, #9]
_0803F90C
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	pop {r4}
	adds r0, r0, r1
	bx lr
	ALIGN

	thumb_func_start sub_803F928
sub_803F928 ;@ 0x0803F928
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r0, #0x18]
	add r6, sp, #0x2c
	ldm r6!, {r5, r6}
	strh r0, [r5]
	ldrh r0, [r4, #0x1a]
	adds r7, r2, #0
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, [r4, #0x58]
	str r0, [sp]
	ldrh r0, [r0, #0x1c]
	bl sub_803C124
	ldrh r1, [r4, #0x20]
	movs r2, #0
	movs r3, #0
	strh r1, [r7]
	ldrh r1, [r4, #0x1e]
	ldr r4, [sp, #8]
	lsls r0, r0, #0x10
	strh r1, [r4]
	ldr r1, [sp, #0x28]
	lsrs r0, r0, #0x10
	strh r2, [r1]
	ldr r1, [sp, #0x10]
	strh r2, [r1]
	ldrsh r1, [r5, r3]
	ldrsh r4, [r7, r3]
	adds r3, r1, r4
	ldr r4, [sp]
	ldrh r4, [r4, #0x1c]
	cmp r3, r4
	ble _0803F976
	subs r1, r4, r1
	strh r1, [r7]
_0803F976
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r4, [sp, #8]
	ldrsh r4, [r4, r3]
	adds r3, r1, r4
	cmp r3, r0
	ble _0803F98A
	ldr r4, [sp, #8]
	subs r0, r0, r1
	strh r0, [r4]
_0803F98A
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0803F9A4
	ldr r4, [sp, #8]
	ldrh r1, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r6]
	ldr r1, [sp, #0x10]
	NEGS r0, r0
	strh r0, [r1]
	strh r2, [r6]
_0803F9A4
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0803F9BC
	ldrh r1, [r7]
	adds r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r5]
	ldr r1, [sp, #0x28]
	NEGS r0, r0
	strh r0, [r1]
	strh r2, [r5]
_0803F9BC
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803F9C4
sub_803F9C4 ;@ 0x0803F9C4
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x2c
	ldr r2, [r0]
	ldm r7!, {r5, r6, r7}
	ldr r3, [r2, #0x18]
	adds r4, r0, #0
	adds r2, r3, r2
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x10]
	bl sub_803B8CE
	ldr r0, _0803FA38 ;@ =0x0000FFFF
	cmp r5, r0
	beq _0803FA10
	cmp r6, r0
	beq _0803FA10
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r6, #0
	adds r1, r5, #0
	bl sub_803B8CE
_0803FA10
	cmp r7, #0xff
	beq _0803FA2A
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	adds r1, r7, #0
	bl sub_803B8D2
_0803FA2A
	adds r0, r4, #0
	bl sub_8013B76
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803FA38 DCDU 0x0000FFFF
