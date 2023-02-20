.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_8023A70
sub_8023A70: @ 0x08023A70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	bpl _08023A80
	movs r0, #0
	strb r0, [r4, #1]
	b _08023A8C
_08023A80:
	ldrb r1, [r4, #4]
	cmp r1, r0
	bge _08023A8A
	strb r1, [r4, #1]
	b _08023A8C
_08023A8A:
	strb r0, [r4, #1]
_08023A8C:
	ldr r0, _08023CF0 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802416A
	ldr r0, _08023CF4 @ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8023AA2
sub_8023AA2: @ 0x08023AA2
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	bmi _08023AB8
	ldr r1, _08023CE8 @ =gUnknown_03003D28
	ldr r1, [r1, #4]
	adds r1, #0x80
	ldrb r1, [r1, #4]
	cmp r1, #1
	bne _08023ABE
_08023AB8:
	movs r0, #0
	strb r0, [r4, #2]
	b _08023ACA
_08023ABE:
	ldrb r1, [r4, #5]
	cmp r1, r0
	bge _08023AC8
	strb r1, [r4, #2]
	b _08023ACA
_08023AC8:
	strb r0, [r4, #2]
_08023ACA:
	ldr r0, _08023CF0 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8024084
	ldr r0, _08023CF4 @ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	str r0, [r4, #0x18]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8023AE0
sub_8023AE0: @ 0x08023AE0
	push {r3, lr}
	ldrb r2, [r0, #8]
	adds r2, r2, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bpl _08023AF2
	movs r2, #0
	strb r2, [r0, #8]
	b _08023AFE
_08023AF2:
	ldrb r3, [r0, #7]
	cmp r3, r2
	bge _08023AFC
	strb r3, [r0, #8]
	b _08023AFE
_08023AFC:
	strb r2, [r0, #8]
_08023AFE:
	ldrb r2, [r0, #8]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	strb r2, [r0, #3]
	strb r2, [r0]
	movs r0, #1
	cmp r1, #0
	bgt _08023B12
	movs r0, #0
_08023B12:
	adds r1, r0, #0
	ldr r0, _08023CF0 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80244C6
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8023B22
sub_8023B22: @ 0x08023B22
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #6]
	sub sp, #0x2c
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bpl _08023B38
	movs r0, #0
	strb r0, [r4, #6]
	b _08023B44
_08023B38:
	ldrb r1, [r4, #7]
	cmp r1, r0
	bge _08023B42
	strb r1, [r4, #6]
	b _08023B44
_08023B42:
	strb r0, [r4, #6]
_08023B44:
	ldrb r5, [r4, #6]
	adds r0, r5, #0
	bl sub_8040684
	cmp r0, #0
	beq _08023B54
	cmp r5, #1
	bne _08023C3A
_08023B54:
	ldr r7, _08023CE8 @ =gUnknown_03003D28
	movs r0, #0
	ldr r2, [r7, #4]
	add r6, sp, #0x28
_08023B5C:
	adds r1, r2, r0
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	strb r1, [r6, r0]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	blt _08023B5C
	adds r0, r4, #0
	bl sub_80237DA
	movs r0, #0
	add r3, sp, #0x20
	strb r0, [r3, #4]
	strb r0, [r3, #5]
	strb r0, [r3, #6]
	movs r5, #0
	adds r1, r7, #0
	strb r0, [r3, #7]
	ldr r6, [r1, #4]
	add r7, sp, #0x24
_08023B88:
	add r1, sp, #0x28
	ldrb r2, [r1, r0]
	adds r1, r6, r0
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	cmp r2, r1
	beq _08023BAA
	ldr r3, _08023CF8 @ =gUnknown_08051038
	lsls r2, r0, #1
	ldrh r2, [r3, r2]
	adds r3, r5, #0
	adds r1, r2, r1
	adds r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r5, r2, #0
	strb r1, [r7, r3]
_08023BAA:
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	blt _08023B88
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xc8
	bl sub_803DA9C
	str r0, [sp, #0x20]
	add r3, sp, #0x20
	ldrb r1, [r3, #7]
	movs r6, #0xff
	ldr r7, _08023CFC @ =gUnknown_0300344C
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x1c]
	add r3, sp, #0x20
	ldrb r1, [r3, #6]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x18]
	add r3, sp, #0x20
	ldrb r1, [r3, #5]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x14]
	add r3, sp, #0x20
	ldrb r1, [r3, #4]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0xd]
	ldr r0, [r7]
	adds r1, #0x95
	adds r3, r6, #0
	movs r2, #0
	bl sub_803F904
	adds r4, r0, #0
	ldr r0, _08023D00 @ =0x000004E9
	adds r3, r6, #0
	movs r2, #0
	adds r1, r5, r0
	ldr r0, [r7]
	bl sub_803F904
	adds r5, r0, #0
	add r2, sp, #0x14
	ldm r2, {r0, r1, r2}
	str r0, [sp]
	str r2, [sp, #8]
	adds r2, r4, #0
	str r1, [sp, #4]
	ldr r3, [sp, #0x10]
	b _08023C3C
_08023C3A:
	b _08023CE0
_08023C3C:
	adds r1, r5, #0
	ldr r0, [sp, #0x20]
	bl sub_803B860
	ldr r7, _08023D04 @ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r5, #2
	adds r3, r5, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r6, _08023D08 @ =gUnknown_03003454
	movs r1, #1
	ldr r0, [r6]
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r4, #0
	str r4, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #1
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, [sp, #0x20]
	movs r2, #0
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #3
	bl sub_8017A0A
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #3
	bl sub_8017A0A
_08023CE0:
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08023CE8: .4byte gUnknown_03003D28
_08023CEC: .4byte gUnknown_03003464
_08023CF0: .4byte gUnknown_030034F8
_08023CF4: .4byte gUnknown_03003E98
_08023CF8: .4byte gUnknown_08051038
_08023CFC: .4byte gUnknown_0300344C
_08023D00: .4byte 0x000004E9
_08023D04: .4byte gUnknown_03003E88
_08023D08: .4byte gUnknown_03003454

	thumb_func_start sub_8023D0C
sub_8023D0C: @ 0x08023D0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08023D26
	movs r0, #0xff
	adds r0, #0x95
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08023D26
	adds r0, r4, #0
_08023D20:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08023D26:
	movs r5, #0
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc0
	strb r5, [r4, #0xd]
	str r5, [r0, #8]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	adds r0, #0x5c
	bl sub_80143E0
	movs r0, #0
	adds r1, r5, #0
_08023D40:
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	str r1, [r2, #0x1c]
	blo _08023D40
	movs r0, #0
_08023D54:
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo _08023D54
	movs r0, #0
_08023D68:
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #6
	str r1, [r2, #0x10]
	blo _08023D68
	movs r0, #0
_08023D7A:
	lsls r3, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r3, r3, r4
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	str r1, [r3, #0x28]
	blo _08023D7A
	movs r0, #0
_08023D8E:
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x48]
	str r2, [r1, #0x60]
	cmp r0, #6
	blo _08023D8E
	movs r0, #0
_08023DA2:
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x80
	lsrs r0, r0, #0x18
	cmp r0, #4
	str r2, [r1, #8]
	blo _08023DA2
	movs r0, #0
_08023DB8:
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r1, #0x80
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x18]
	str r2, [r1, #0x30]
	cmp r0, #6
	blo _08023DB8
	adds r0, r4, #0
	b _08023D20

	thumb_func_start sub_8023DD0
sub_8023DD0: @ 0x08023DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xff
	adds r0, #0x1d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r5, #0
	movs r7, #0
_08023DE6:
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _08023DFE
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x10]
_08023DFE:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023DE6
	movs r5, #0
_08023E0A:
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08023E22
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
_08023E22:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08023E0A
	movs r5, #0
_08023E2E:
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _08023E46
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x48]
_08023E46:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E2E
	movs r5, #0
_08023E52:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _08023E6E
	adds r1, r0, #0
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, #0x98
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x18]
_08023E6E:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E52
	movs r5, #0
_08023E7A:
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq _08023E92
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x78]
_08023E92:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023E7A
	movs r5, #0
_08023E9E:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x30]
	cmp r1, #0
	beq _08023EBA
	adds r1, r0, #0
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, #0xb0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
_08023EBA:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E9E
	movs r5, #0
_08023EC6:
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq _08023EDE
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x60]
_08023EDE:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023EC6
	movs r5, #0
_08023EEA:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _08023F06
	adds r1, r0, #0
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, #0x88
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
_08023F06:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023EEA
	movs r5, #0
_08023F12:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _08023F2E
	adds r1, r0, #0
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, #0xd4
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x14]
_08023F2E:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08023F12
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _08023F50
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0x10]
_08023F50:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08023F64
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #8]
_08023F64:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08023F78
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0xc]
_08023F78:
	ldr r0, _08024070 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xc0
	bl sub_80268AC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023F88
sub_8023F88: @ 0x08023F88
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #4
	cmp r0, #0
	beq _08023F9A
	adds r0, r5, #0
	bl sub_8023DD0
_08023F9A:
	movs r4, #0
	movs r7, #0
_08023F9E:
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _08023FBA
	adds r1, r0, #0
	ldr r0, _0802406C @ =gUnknown_03003448
	adds r1, #0xdc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x1c]
_08023FBA:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x10
	blo _08023F9E
	adds r0, r5, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x1d
	bl sub_8014436
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08023FDC
	adds r0, r5, #0
	bl sub_803DA18
_08023FDC:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023FE4
sub_8023FE4: @ 0x08023FE4
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _08024074 @ =gUnknown_03003D2C
	movs r3, #8
	ldr r0, [r0]
	sub sp, #8
	adds r0, #0xa0
	ldrsb r1, [r0, r3]
	lsls r1, r1, #6
	movs r3, #9
	ldrsb r0, [r0, r3]
	bl sub_803C04C
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r4, #2
_08024002:
	lsls r0, r4, #4
	subs r0, #0x20
	cmp r0, r6
	bge _08024012
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08024014
_08024012:
	movs r0, #0
_08024014:
	ldr r2, _08024078 @ =0x0000087D
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _08024020
	ldr r1, _0802407C @ =0x0000086D
	adds r1, r0, r1
_08024020:
	subs r0, r2, r1
	ldr r1, _0802407C @ =0x0000086D
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r7, r0, r1
	lsrs r5, r5, #0x10
	adds r7, #0x80
	ldr r1, [r7, #0x30]
	ldr r0, _08024080 @ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _08024058
	adds r1, r5, #0
	ldr r0, [r7, #0x30]
	bl sub_800065C
_08024058:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _08024002
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802406C: .4byte gUnknown_03003448
_08024070: .4byte gUnknown_0300345C
_08024074: .4byte gUnknown_03003D2C
_08024078: .4byte 0x0000087D
_0802407C: .4byte 0x0000086D
_08024080: .4byte gUnknown_03003EA0

	thumb_func_start sub_8024084
sub_8024084: @ 0x08024084
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
_0802408A:
	ldr r1, _0802446C @ =gUnknown_03003D2C
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xe]
	cmp r0, r1
	bhs _080240A0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080240A2
_080240A0:
	movs r0, #0
_080240A2:
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _080240B2
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
_080240B2:
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r6, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r5, r0, r1
	adds r7, r5, #0
	lsrs r6, r6, #0x10
	adds r7, #0x80
	ldr r1, [r7, #8]
	ldr r0, _08024470 @ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq _080240EE
	adds r1, r6, #0
	ldr r0, [r7, #8]
	bl sub_800065C
_080240EE:
	ldr r1, _0802446C @ =gUnknown_03003D2C
	ldr r7, [r5, #0x78]
	ldr r0, [r1]
	ldr r1, _08024474 @ =gUnknown_0805104C
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r6, [r1, r0]
	ldr r0, _08024470 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq _08024120
	adds r1, r6, #0
	ldr r0, [r5, #0x78]
	bl sub_800065C
_08024120:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	blo _0802408A
	ldr r0, _0802446C @ =gUnknown_03003D2C
	ldr r1, _08024474 @ =gUnknown_0805104C
	ldr r0, [r0]
	adds r1, #0xa
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r4, [r1, r0]
	ldr r6, [sp, #8]
	ldr r0, _08024470 @ =gUnknown_03003EA0
	adds r6, #0xc0
	ldr r5, [r6, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq _08024162
	adds r1, r4, #0
	ldr r0, [r6, #0xc]
	bl sub_800065C
_08024162:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802416A
sub_802416A: @ 0x0802416A
	push {r0, r4, r5, r6, r7, lr}
	movs r4, #0
_0802416E:
	ldr r1, _0802446C @ =gUnknown_03003D2C
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	bhs _08024184
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08024186
_08024184:
	movs r0, #0
_08024186:
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _08024196
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
_08024196:
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp]
	lsrs r5, r5, #0x10
	lsls r0, r4, #2
	adds r7, r0, r1
	ldr r0, _08024470 @ =gUnknown_03003EA0
	ldr r6, [r7, #0x60]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080241CA
	adds r1, r5, #0
	ldr r0, [r7, #0x60]
	bl sub_800065C
_080241CA:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _0802416E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80241DA
sub_80241DA: @ 0x080241DA
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	sub sp, #0x14
	beq _08024210
	ldr r1, _08024478 @ =gUnknown_03003E98
	ldr r1, [r1]
	ldr r2, [r1, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	cmp r2, r0
	blo _080241FA
	movs r1, #1
	str r7, [r4]
_080241FA:
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	cmp r2, r1
	beq _08024210
	bl sub_80401E4
_08024210:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0802421A
	cmp r0, #3
	bne _080242E4
_0802421A:
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5, r0
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802447C @ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x11
	lsls r0, r0, #2
	lsls r1, r1, #0x14
	bl sub_803B92C
	add r2, pc, #0x234 @ =_08024480
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	movs r0, #0xf0
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	movs r5, #0
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08024268:
	lsls r0, r5, #5
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #8]
	cmp r1, r6
	ble _080242A0
	ldr r0, [sp, #0xc]
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
	b _080242CC
_080242A0:
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r1, [sp, #8]
	movs r0, #0xf0
	subs r0, r0, r1
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
_080242CC:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024268
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r1, #1
	bne _080242E6
	adds r0, #2
	strb r0, [r4, #0xd]
	b _080242EA
_080242E4:
	b _080244B4
_080242E6:
	adds r0, #0xfe
	strb r0, [r4, #0xd]
_080242EA:
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	cmp r0, #0
	bgt _080243D6
	cmp r1, #3
	bne _080243D6
	movs r0, #0
	ldr r7, _08024488 @ =gUnknown_03003448
	strb r0, [r4, #0xc]
	movs r5, #0
_080242FE:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _0802431A
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r6, #0x1c]
_0802431A:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x10
	blo _080242FE
	movs r5, #0
_08024326:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0802433C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802433C
	movs r1, #1
	bl sub_80401E4
_0802433C:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024326
	movs r5, #0
_08024348:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0802435E
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802435E
	movs r1, #1
	bl sub_80401E4
_0802435E:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024348
	movs r5, #0
_0802436A:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _08024380
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024380
	movs r1, #1
	bl sub_80401E4
_08024380:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _0802436A
	movs r5, #0
_0802438C:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq _080243A2
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243A2
	movs r1, #1
	bl sub_80401E4
_080243A2:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0802438C
	movs r5, #0
_080243AE:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080243C6
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243C6
	movs r1, #1
	bl sub_80401E4
_080243C6:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _080243AE
	movs r5, #0
_080243D2:
	lsls r0, r5, #2
	b _080243D8
_080243D6:
	b _080244BC
_080243D8:
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080243EE
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243EE
	movs r1, #1
	bl sub_80401E4
_080243EE:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080243D2
	movs r5, #0
_080243FA:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _08024412
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024412
	movs r1, #1
	bl sub_80401E4
_08024412:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080243FA
	ldr r6, _0802446C @ =gUnknown_03003D2C
	movs r5, #0
_08024420:
	ldr r0, [r6]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r5
	bls _0802443A
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_80401E4
_0802443A:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024420
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0802445A
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802445A
	movs r1, #1
	bl sub_80401E4
_0802445A:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08024490
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024490
	movs r1, #1
	b _0802448C
	.align 2, 0
_0802446C: .4byte gUnknown_03003D2C
_08024470: .4byte gUnknown_03003EA0
_08024474: .4byte gUnknown_0805104C
_08024478: .4byte gUnknown_03003E98
_0802447C: .4byte gUnknown_080414B8
_08024480: .4byte 0x00010000
_08024484: .4byte 0x00000000
_08024488: .4byte gUnknown_03003448
_0802448C:
	bl sub_80401E4
_08024490:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0802449C
	adds r0, r4, #0
	bl sub_802416A
_0802449C:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _080244A8
	adds r0, r4, #0
	bl sub_8024084
_080244A8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080244B4
	adds r0, r4, #0
	bl sub_8023FE4
_080244B4:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080244BC:
	cmp r0, #0x5a
	blt _080244B4
	movs r0, #2
	strb r0, [r4, #0xc]
	b _080244B4

	non_word_aligned_thumb_func_start sub_80244C6
sub_80244C6: @ 0x080244C6
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	sub sp, #4
_080244CE:
	ldr r1, _08024788 @ =gUnknown_03003D2C
	lsls r0, r5, #1
	ldr r1, [r1]
	adds r0, r0, r5
	adds r1, #0xa0
	ldrb r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r0, r1
	bhs _080244E8
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080244EA
_080244E8:
	movs r0, #0
_080244EA:
	ldr r1, _0802478C @ =0x000008A4
	cmp r0, #6
	bhs _080244F4
	subs r7, r1, #6
	adds r1, r0, r7
_080244F4:
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r1, [r6, #0x28]
	ldr r0, _08024790 @ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _08024522
	adds r1, r7, #0
	ldr r0, [r6, #0x28]
	bl sub_800065C
_08024522:
	ldr r1, _08024788 @ =gUnknown_03003D2C
	ldr r0, [r1]
	adds r0, #0xb0
	ldrb r0, [r0, #4]
	cmp r0, r5
	bls _0802453C
	ldr r0, [r6, #0x28]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802453C
	movs r1, #1
	bl sub_80401E4
_0802453C:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _080244CE
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08024596
	ldr r0, _08024794 @ =gUnknown_03003E98
	ldr r5, _08024790 @ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r7, _08024798 @ =0x0000089E
	ldr r0, [r0, #8]
	adds r0, #0x78
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #4]
	b _0802456E
_08024560:
	ldrb r0, [r4, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	cmp r0, #8
	bhs _0802458C
_0802456E:
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bne _08024560
_0802458C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08024596
	adds r0, #0xff
	strb r0, [r4, #4]
_08024596:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802459E
sub_802459E: @ 0x0802459E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xc0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	cmp r1, #0
	beq _08024692
	cmp r0, #0
	bne _08024692
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r6, #0
_080245BA:
	ldr r0, _0802479C @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x1c]
	ldr r1, _080247A0 @ =0x00000892
	bl sub_800065C
	movs r0, #0x1f
	mvns r0, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x1c]
	bl sub_80401C0
	movs r1, #1
	cmp r6, #8
	ldr r5, [r7, #0x1c]
	bhs _080245F4
	movs r1, #0
_080245F4:
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r2, r3
	lsls r1, r1, #0xd
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8000324
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _08024614
	adds r0, r5, #0
	bl sub_804025C
_08024614:
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x1c]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x10
	blo _080245BA
	movs r5, #0
_08024630:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08024646
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024646
	movs r1, #0
	bl sub_80401E4
_08024646:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024630
	movs r5, #0
_08024652:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _08024668
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024668
	movs r1, #0
	bl sub_80401E4
_08024668:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024652
	movs r5, #0
_08024674:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0802468A
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802468A
	movs r1, #0
	bl sub_80401E4
_0802468A:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	b _08024694
_08024692:
	b _08024778
_08024694:
	cmp r5, #6
	blo _08024674
	movs r5, #0
_0802469A:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq _080246B0
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246B0
	movs r1, #0
	bl sub_80401E4
_080246B0:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0802469A
	movs r5, #0
_080246BC:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080246D4
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246D4
	movs r1, #0
	bl sub_80401E4
_080246D4:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _080246BC
	movs r5, #0
_080246E0:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080246F8
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246F8
	movs r1, #0
	bl sub_80401E4
_080246F8:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080246E0
	movs r5, #0
_08024704:
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0802471C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802471C
	movs r1, #0
	bl sub_80401E4
_0802471C:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024704
	movs r5, #0
_08024728:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0802473E
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802473E
	movs r1, #0
	bl sub_80401E4
_0802473E:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024728
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0802475C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802475C
	movs r1, #0
	bl sub_80401E4
_0802475C:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08024770
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024770
	movs r1, #0
	bl sub_80401E4
_08024770:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08024778:
	cmp r0, #0
	beq _08024770
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x59
	strb r0, [r4, #0xd]
	b _08024770
	.align 2, 0
_08024788: .4byte gUnknown_03003D2C
_0802478C: .4byte 0x000008A4
_08024790: .4byte gUnknown_03003EA0
_08024794: .4byte gUnknown_03003E98
_08024798: .4byte 0x0000089E
_0802479C: .4byte gUnknown_03003448
_080247A0: .4byte 0x00000892

	thumb_func_start sub_80247A4
sub_80247A4: @ 0x080247A4
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #0x14
	cmp r0, #0
	beq _080247B6
	adds r0, r4, #0
	bl sub_8023DD0
_080247B6:
	adds r5, r4, #0
	ldr r1, [sp, #0x18]
	adds r5, #0xc0
	cmp r1, #0
	beq _080248A6
	movs r6, #0
_080247C2:
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BA4 @ =0x00000893
	str r0, [r7, #0x10]
	adds r1, r6, r1
	bl sub_800065C
	lsls r0, r6, #5
	movs r1, #0x78
	subs r0, r1, r0
	movs r1, #0xd0
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x10]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x10]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x10]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #6
	blo _080247C2
	movs r0, #0xb0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r1, #0x58
	strh r1, [r3, #6]
	ldr r0, [r4, #0x24]
	add r1, sp, #4
	bl sub_8040034
	movs r7, #0
_0802481C:
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r7, #2
	adds r6, r1, r4
	ldr r1, _08024BA8 @ =0x000008AA
	str r0, [r6, #0x48]
	adds r1, r7, r1
	bl sub_800065C
	lsls r0, r7, #4
	movs r1, #0x68
	subs r0, r1, r0
	str r0, [sp, #0x10]
	movs r1, #0xe2
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6, #0x48]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r6, #0x48]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x48]
	bl sub_80401E4
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0x8b
	lsls r1, r1, #4
	str r0, [r6, #0x60]
	bl sub_800065C
	movs r1, #0xe2
	add r3, sp, #0
	ldr r0, [sp, #0x10]
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6, #0x60]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, [r6, #0x60]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r6, #0x60]
	movs r1, #0x13
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x60]
	b _080248A8
_080248A6:
	b _08024A8C
_080248A8:
	bl sub_80401E4
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #6
	blo _0802481C
	movs r6, #0
_080248B8:
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BAC @ =gUnknown_0805104C
	str r0, [r7, #0x78]
	ldrh r1, [r1]
	bl sub_800065C
	lsls r0, r6, #4
	movs r1, #0x58
	subs r0, r1, r0
	str r0, [sp, #0xc]
	movs r1, #0xda
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x78]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x78]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x78]
	bl sub_80401E4
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r7, #0x80
	movs r1, #0x8b
	lsls r1, r1, #4
	str r0, [r7, #8]
	bl sub_800065C
	movs r1, #0xda
	add r3, sp, #0
	ldr r0, [sp, #0xc]
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x13
	ldr r0, [r7, #8]
	bl sub_80401C0
	ldr r0, [r7, #8]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #4
	blo _080248B8
	movs r6, #0
_08024952:
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0x80
	adds r1, r6, #1
	str r0, [r7, #0x18]
	str r1, [sp, #8]
	cmp r1, #6
	bhs _08024980
	ldr r1, _08024BB0 @ =gUnknown_03003D2C
	ldr r2, _08024BAC @ =gUnknown_0805104C
	ldr r1, [r1]
	adds r2, #0x14
	adds r1, #0x80
	ldrb r1, [r1, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	b _08024996
_08024980:
	ldr r1, _08024BB0 @ =gUnknown_03003D2C
	ldr r2, _08024BAC @ =gUnknown_0805104C
	ldr r1, [r1]
	adds r2, #0x14
	adds r1, #0x80
	ldrb r1, [r1, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	adds r1, #1
_08024996:
	bl sub_800065C
	lsls r6, r6, #4
	add r3, sp, #0
	strh r6, [r3, #4]
	movs r0, #0x97
	strh r0, [r3, #6]
	ldr r0, [r7, #0x18]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x18]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x18]
	bl sub_80401E4
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08024BB4 @ =0x0000086D
	str r0, [r7, #0x30]
	bl sub_800065C
	subs r0, r6, #1
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x98
	strh r0, [r3, #6]
	ldr r0, [r7, #0x30]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x13
	ldr r0, [r7, #0x30]
	bl sub_80401C0
	ldr r0, [r7, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl sub_80401E4
	ldr r1, [sp, #8]
	lsls r6, r1, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #6
	blo _08024952
	ldr r6, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r6]
	bl sub_800116A
	ldr r1, _08024BAC @ =gUnknown_0805104C
	str r0, [r5, #0xc]
	adds r1, #0xa
	ldrh r1, [r1]
	bl sub_800065C
	movs r0, #0xce
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r1, #0x68
	strh r1, [r3, #6]
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #0xc]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r5, #0xc]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	ldr r1, _08024BB0 @ =gUnknown_03003D2C
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r2, _08024BAC @ =gUnknown_0805104C
	adds r1, #0x80
	ldrb r1, [r1, #4]
	adds r2, #0x14
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	adds r1, #2
	bl sub_800065C
	movs r0, #0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x7e
	strh r0, [r3, #6]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #8]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r5, #8]
	bl sub_80401E4
_08024A8C:
	movs r6, #0
_08024A8E:
	ldr r0, _08024BA0 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	str r0, [r7, #0x28]
	ldr r1, _08024BB8 @ =0x0000089E
	bl sub_800065C
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #5
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r7, #0x28]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x28]
	bl sub_80401C0
	ldr r0, _08024BB0 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r6
	bls _08024ADA
	movs r1, #1
	ldr r0, [r7, #0x28]
	bl sub_80401E4
_08024ADA:
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _08024A8E
	ldr r0, _08024BBC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x48
	str r0, [r5, #0x10]
	bl sub_80007A0
	movs r7, #0xe0
	add r3, sp, #0
	strh r7, [r3, #4]
	movs r0, #2
	strh r0, [r3, #6]
	ldr r0, [r5, #0x10]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #0x10]
	bl sub_80401C0
	ldr r0, [r5, #0x10]
	bl sub_8000914
	movs r6, #0
_08024B1A:
	ldr r0, _08024BBC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x14]
	ldr r1, _08024BC0 @ =0x0000088D
	bl sub_800065C
	lsls r0, r6, #6
	movs r1, #0xe0
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #3
	strh r0, [r3, #6]
	ldr r0, [r7, #0x14]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x14]
	bl sub_80401C0
	cmp r6, #0
	bne _08024B7A
	ldr r7, [r5, #0x14]
	movs r2, #1
	ldrh r1, [r7, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r7, #0x28]
	adds r0, r7, #0
	bl sub_80003F4
	ldr r0, [r7]
	lsls r0, r0, #0x1e
	bmi _08024B72
	adds r0, r7, #0
	bl sub_804025C
_08024B72:
	ldr r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7]
_08024B7A:
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08024B1A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0x1d
	ldr r0, [r5]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	b _08024BC4
	.align 2, 0
_08024BA0: .4byte gUnknown_03003448
_08024BA4: .4byte 0x00000893
_08024BA8: .4byte 0x000008AA
_08024BAC: .4byte gUnknown_0805104C
_08024BB0: .4byte gUnknown_03003D2C
_08024BB4: .4byte 0x0000086D
_08024BB8: .4byte 0x0000089E
_08024BBC: .4byte gUnknown_03003EB8
_08024BC0: .4byte 0x0000088D
_08024BC4:
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	movs r2, #2
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xa1
	adds r0, r5, #0
	bl sub_803B8CE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x10
	movs r1, #0x40
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x20]
	movs r6, #0
	adds r7, r2, r1
	movs r2, #0xff
	adds r3, r6, #0
	movs r1, #4
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	movs r1, #0x13
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20C @ =_08024E24
	bl _080137F8
	str r6, [r4]
	ldr r1, [sp, #0x18]
	ldr r5, _08024E28 @ =gUnknown_03003478
	str r1, [r4, #8]
	ldr r1, [r5]
	movs r6, #1
	movs r0, #4
	ands r1, r0
	beq _08024C32
	movs r1, #1
	b _08024C34
_08024C32:
	movs r1, #0
_08024C34:
	ldr r0, _08024E2C @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802459E
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08024C70
	adds r0, r4, #0
	bl sub_802416A
	adds r0, r4, #0
	bl sub_8024084
	adds r0, r4, #0
	bl sub_8023FE4
	ldr r0, _08024E30 @ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08024C70
	bl sub_800B6A8
	cmp r0, #1
	beq _08024C70
	ldr r0, _08024E34 @ =gUnknown_0300345C
	movs r2, #1
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
_08024C70:
	ldr r0, _08024E38 @ =gUnknown_03003458
	ldr r2, _08024E3C @ =gUnknown_03003D20
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	strb r1, [r2]
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	cmp r1, #0
	bne _08024C84
	movs r2, #0
_08024C84:
	movs r1, #0x10
	cmp r2, #0
	ldr r2, [r5]
	beq _08024C92
	orrs r1, r2
	str r1, [r5]
	b _08024C96
_08024C92:
	bics r2, r1
	str r2, [r5]
_08024C96:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08024D1A
	ldr r5, [r0, #0x20]
	movs r0, #0x38
	strh r0, [r5, #0xe]
	movs r0, #0x39
	strh r0, [r5, #0xa]
	movs r0, #0x3a
	strh r0, [r5, #0xc]
	strh r0, [r5, #8]
	movs r0, #0x3e
	strh r0, [r5, #0x1e]
	movs r0, #0x3f
	strh r0, [r5, #0x1a]
	movs r0, #0x40
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _08024D1A
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08024D1A
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08024E40 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, _08024E44 @ =gUnknown_03003EA0
	ldr r5, [r5, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0x144 @ =_08024E48
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
_08024D1A:
	movs r1, #0
	adds r0, r4, #0
	bl sub_80244C6
	adds r0, r4, #0
	bl sub_80241DA
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8024D30
sub_8024D30: @ 0x08024D30
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024E38 @ =gUnknown_03003458
	ldr r1, [sp, #8]
	adds r6, r0, #0
	movs r0, #5
	ldr r4, [r4]
	lsls r0, r0, #8
	ldr r2, _08024E50 @ =0x0000FFFE
	adds r0, r4, r0
	cmp r1, r2
	beq _08024D54
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _08024D54
	movs r5, #1
	b _08024D56
_08024D54:
	movs r5, #0
_08024D56:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08024D68
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne _08024D68
	movs r4, #1
	b _08024D6A
_08024D68:
	movs r4, #0
_08024D6A:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08024E1C
	ldr r7, _08024E34 @ =gUnknown_0300345C
	ldr r0, [r7]
	adds r0, #0xc0
	cmp r5, #0
	beq _08024DB6
	movs r2, #0x40
	adds r1, r2, #0
	cmp r3, #0x40
	bhi _08024D84
	adds r1, r3, #0
_08024D84:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r1, r2, r1
	movs r3, #0x64
	muls r1, r3, r1
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1a
	adds r1, r2, r1
	asrs r1, r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028BE4
	cmp r0, #0
	bne _08024DBA
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028C2E
	b _08024DBA
_08024DB6:
	bl sub_80268AC
_08024DBA:
	adds r7, r6, #0
	adds r7, #0xc0
	ldr r0, [r7, #0x10]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r5
	beq _08024DD0
	adds r1, r5, #0
	bl sub_80401E4
_08024DD0:
	ldr r0, [r7, #0x14]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r4
	beq _08024E1C
	adds r1, r4, #0
	bl sub_80401E4
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_80401E4
	adds r5, r6, #0
	adds r5, #0xff
	adds r5, #0x1d
	cmp r4, #0
	beq _08024DFC
	ldr r2, _08024E50 @ =0x0000FFFE
	ldr r1, [sp, #8]
	cmp r1, r2
	bne _08024E08
_08024DFC:
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20 @ =_08024E24
	bl _080137F8
	b _08024E14
_08024E08:
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_80138E2
_08024E14:
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
_08024E1C:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08024E24: .4byte 0x00000020
_08024E28: .4byte gUnknown_03003478
_08024E2C: .4byte gUnknown_030034F8
_08024E30: .4byte gUnknown_03003460
_08024E34: .4byte gUnknown_0300345C
_08024E38: .4byte gUnknown_03003458
_08024E3C: .4byte gUnknown_03003D20
_08024E40: .4byte gUnknown_03003EB8
_08024E44: .4byte gUnknown_03003EA0
_08024E48: .4byte 0x0010BE20
_08024E4C: .4byte 0x00000000
_08024E50: .4byte 0x0000FFFE

	thumb_func_start sub_8024E54
sub_8024E54: @ 0x08024E54
	push {r4, lr}
	adds r4, r0, #0
	bne _08024E6C
	movs r0, #0x44
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08024E6C
	adds r0, r4, #0
_08024E66:
	pop {r4}
	pop {r3}
	bx r3
_08024E6C:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080250D0 @ =_0803ECF8
	ldr r1, _080250D4 @ =0xFFFE0001
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _08024E66

	non_word_aligned_thumb_func_start sub_8024E8A
sub_8024E8A: @ 0x08024E8A
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EA8
	ldr r0, _080250D8 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EA8:
	ldr r0, _080250DC @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8024EBC
sub_8024EBC: @ 0x08024EBC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080250D0 @ =_0803ECF8
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EE2
	ldr r0, _080250D8 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EE2:
	ldr r0, _080250DC @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08024F02
	adds r0, r4, #0
	bl sub_803DA18
_08024F02:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8024F08
sub_8024F08: @ 0x08024F08
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _08024F4E
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08024F5C
_08024F4E:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08024F5C:
	cmp r2, #0
	bne _08024F68
	movs r0, #0xff
	adds r0, #0xba
	str r0, [r4, #0x38]
	b _08024F6E
_08024F68:
	movs r0, #0xff
	adds r0, #0xbc
	str r0, [r4, #0x38]
_08024F6E:
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x40]
	ldr r2, _080250D4 @ =0xFFFE0001
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ands r1, r2
	str r1, [r4, #0x40]
	ldr r1, _080250E0 @ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0 @ =gUnknown_0805107A
	adds r1, #4
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0 @ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #4]
	subs r3, #8
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08024FE4
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08024FEA
_08024FE4:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08024FEA:
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r7, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802500C
	orrs r1, r7
	str r1, [r0]
_0802500C:
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	ldr r1, _080250E0 @ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #8
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0 @ =gUnknown_0805107A
	adds r1, #0xc
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0 @ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08025086
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _0802508C
_08025086:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_0802508C:
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080250AA
	orrs r1, r7
	str r1, [r0]
_080250AA:
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _080250DC @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080250D0: .4byte _0803ECF8
_080250D4: .4byte 0xFFFE0001
_080250D8: .4byte gUnknown_03003EB8
_080250DC: .4byte gUnknown_0300345C
_080250E0: .4byte gUnknown_0805107A

	thumb_func_start sub_80250E4
sub_80250E4: @ 0x080250E4
	push {r4, r5, r6, lr}
	ldr r1, _0802538C @ =gUnknown_03003478
	adds r4, r0, #0
	ldr r1, [r1]
	movs r0, #0x10
	movs r5, #1
	ands r1, r0
	sub sp, #8
	beq _08025154
	ldr r0, [r4, #0x34]
	ldr r1, _08025390 @ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08025390 @ =gUnknown_0805107A
	ldrsb r1, [r1, r0]
	ldr r3, [r4, #0x14]
	adds r2, #4
	ldrsb r0, [r2, r0]
	adds r3, #0x2c
	ldr r6, [r3]
	ldr r3, [r3, #4]
	subs r0, #4
	lsls r2, r0, #0x10
	lsls r1, r1, #0x10
	adds r0, r6, r1
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r1, r3, r2
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 @ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 @ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	subs r1, #4
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
_08025154:
	ldr r1, _08025394 @ =0xFFFE0001
	ldr r0, [r4, #0x40]
	ldr r2, _08025398 @ =0x0001FFFE
	ands r1, r0
	adds r0, #2
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x40]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08025190
	ldr r0, [r4, #0x38]
	subs r0, #0xff
	subs r0, #0xba
	bne _08025190
	movs r0, #0xff
	adds r0, #0xbc
	adds r1, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
_08025190:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080251C2
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r0, [r4, #0x40]
	orrs r0, r5
	str r0, [r4, #0x40]
_080251C2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80251CA
sub_80251CA: @ 0x080251CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080251EC
	ldrh r0, [r0, #0x28]
	movs r2, #1
	lsls r2, r2, #0x1b
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
_080251EC:
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _0802520E
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802520E
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802539C @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802520E:
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8025214
sub_8025214: @ 0x08025214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802530A
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 @ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 @ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	adds r2, #4
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r5, _08025390 @ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r0, #5]
	subs r5, #8
	ldrb r2, [r5, r2]
	cmp r3, r2
	beq _08025268
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	adds r3, #1
	b _0802526E
_08025268:
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	subs r3, #1
_0802526E:
	cmp r3, #0
	beq _080252A4
	cmp r2, #0
	beq _0802527E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025284
_0802527E:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025284:
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080252A4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080252A4:
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 @ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 @ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0802539C @ =gUnknown_03003EB8
	lsls r7, r1, #0x10
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080253A0 @ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080253A4 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	b _0802530C
_0802530A:
	b _08025382
_0802530C:
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	str r0, [sp]
	adds r1, r1, r7
	str r1, [sp, #4]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _08025390 @ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _0802534E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025354
_0802534E:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025354:
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08025374
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08025374:
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_08025382:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802538C: .4byte gUnknown_03003478
_08025390: .4byte gUnknown_0805107A
_08025394: .4byte 0xFFFE0001
_08025398: .4byte 0x0001FFFE
_0802539C: .4byte gUnknown_03003EB8
_080253A0: .4byte gUnknown_03003EA0
_080253A4: .4byte 0x0010BE20

	thumb_func_start sub_80253A8
sub_80253A8: @ 0x080253A8
	push {r4, lr}
	adds r4, r0, #0
	bne _080253C0
	movs r0, #0xa0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080253C0
	adds r0, r4, #0
_080253BA:
	pop {r4}
	pop {r3}
	bx r3
_080253C0:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802576C @ =_0803E2C4
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3A0 @ =_08025770
	str r0, [r4, #0x4c]
	movs r0, #8
	strh r0, [r4, #4]
	movs r0, #4
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	movs r3, #0x3c
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0, #4]
	ldr r3, _08025784 @ =0xF000FFFF
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #4]
	ldr r1, [r0]
	ldr r3, _08025788 @ =0xFF8007FF
	ands r1, r3
	ldr r3, _0802578C @ =0x0027B000
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _08025790 @ =0x0000052A
	lsls r1, r1, #0xc
	adds r1, r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _080253BA

	non_word_aligned_thumb_func_start sub_802541E
sub_802541E: @ 0x0802541E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802576C @ =_0803E2C4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802543A
	adds r0, r4, #0
	bl sub_803DA18
_0802543A:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8025440
sub_8025440: @ 0x08025440
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802544C
sub_802544C: @ 0x0802544C
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8025458
sub_8025458: @ 0x08025458
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_8025478
sub_8025478: @ 0x08025478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	sub sp, #8
	subs r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080254A2
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_080254A2:
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80254AA
sub_80254AA: @ 0x080254AA
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	adds r0, r0, r2
	cmp r0, #8
	bhs _080254F2
	add r3, pc, #0x4 @ =_080254C0
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_080254C0:
	.byte 0x03
_080254C1:
	.byte 0x03
_080254C2:
	.byte 0x0A
_080254C3:
	.byte 0x0A
_080254C4:
	.byte 0x11
_080254C5:
	.byte 0x1E
_080254C6:
	.byte 0x11
_080254C7:
	.byte 0x1E
loc_80254c8:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
loc_80254d6:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
loc_80254e4:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
_080254F2:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
_080254FE:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_8025512
sub_8025512: @ 0x08025512
	push {r3, lr}
	bl sub_801EBCA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802551E
sub_802551E: @ 0x0802551E
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
	ldr r6, _08025794 @ =0xFF8003FF
	ldr r5, _08025788 @ =0xFF8007FF
	ldr r4, _0802578C @ =0x0027B000
	beq _08025620
	bgt _08025574
	cmp r7, #0x12
	bhs _0802554A
	add r3, pc, #0xC @ =_08025550
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802554A:
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08025550:
	.byte 0xED, 0x00
_08025552:
	.byte 0xCA, 0x00
_08025554:
	.byte 0xA8, 0x00
_08025556:
	.byte 0x82, 0x00
_08025558:
	.byte 0x93, 0x02
_0802555A:
	.byte 0xB5, 0x02
_0802555C:
	.byte 0xD7, 0x02
_0802555E:
	.byte 0xF9, 0x02
_08025560:
	.byte 0x9A, 0x03
_08025562:
	.byte 0xBB, 0x03
_08025564:
	.byte 0xDB, 0x03
_08025566:
	.byte 0x3E, 0x01
_08025568:
	.byte 0x61, 0x01
_0802556A:
	.byte 0x84, 0x01
_0802556C:
	.byte 0xC6, 0x01
_0802556E:
	.byte 0x1C, 0x03
_08025570:
	.byte 0x7C, 0x03
_08025572:
	.byte 0xA6, 0x01
_08025574:
	cmp r7, #0x1c
	beq _0802564E
	bgt _0802559E
	subs r7, #0x13
	cmp r7, #9
	bhs _0802558A
	add r3, pc, #0x8 @ =_0802558C
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802558A:
	b _0802554A
	.align 2, 0
_0802558C: .4byte 0x01EA01C7
_08025590: .4byte gUnknown_0230020C
_08025594: .4byte 0x043104D5
_08025598: .4byte gUnknown_02530452
_0802559C:
	.byte 0xB5, 0x04
_0802559E:
	cmp r7, #0x21
	bne _080255A6
	bl sub_8025F7C
_080255A6:
	bgt _080255D2
	cmp r7, #0x1d
	beq _08025690
	cmp r7, #0x1e
	beq _08025692
	cmp r7, #0x1f
	beq _08025694
	cmp r7, #0x20
	bne _0802554A
	movs r2, #7
	lsls r2, r2, #7
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
_080255D0:
	b _0802554A
_080255D2:
	cmp r7, #0x22
	bne _080255DA
	bl sub_8025F94
_080255DA:
	cmp r7, #0x42
	beq _08025638
	cmp r7, #0x4c
	bne _0802554A
	movs r3, #0xe1
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r3, [r1, #0xc]
	ldr r7, _08025798 @ =0x0000052D
	lsrs r3, r3, #0xc
	lsls r3, r3, #0xc
	adds r3, r3, r7
	ldr r7, [r1, #8]
	ands r7, r6
	ldr r6, _0802579C @ =0x00451800
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1]
	ands r6, r5
	adds r4, r6, r4
	str r4, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r4, #0x1e
	strb r4, [r2, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	b _08025622
_08025620:
	b _08025D44
_08025622:
	orrs r2, r3
	lsls r3, r4, #0xe
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	movs r3, #8
	adds r0, #0x90
	str r2, [r1, #0xc]
	strb r3, [r0, #7]
_08025636:
	b _0802554A
_08025638:
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
_0802564C:
	b _0802554A
_0802564E:
	b _08025D90
loc_8025650:
	ldr r3, _080257A0 @ =0x0000030A
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
	ldr r3, _080257A4 @ =0x00000501
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257A8 @ =0x0044E000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	b _08025696
_08025690:
	b _08025DAA
_08025692:
	b _08025E70
_08025694:
	b _08025E72
_08025696:
	movs r0, #0x14
	strb r0, [r2, #0xc]
_0802569A:
	b _0802554A
sub_802569C:
	ldr r3, _080257AC @ =0x00000355
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
	ldr r3, _080257B0 @ =0x00000504
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257B4 @ =0x0044F800
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
_080256DE:
	b _0802554A
sub_80256E0:
	movs r3, #0x43
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
	ldr r3, _080257B8 @ =0x00000503
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257BC @ =0x00447000
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
_08025724:
	b _0802554A
sub_8025726:
	movs r3, #0xed
	strh r3, [r0, #0xe]
	movs r3, #0xee
	strh r3, [r0, #0xa]
	movs r3, #0xef
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xea
	strh r3, [r0, #0x1e]
	movs r3, #0xeb
	strh r3, [r0, #0x1a]
	movs r3, #0xec
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257C0 @ =0x00000502
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257C4 @ =0x00440800
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
_08025768:
	b _0802554A
	.align 2, 0
_0802576C: .4byte _0803E2C4
_08025770: .4byte 0x2063704E
_08025774: .4byte 0x69726353
_08025778: .4byte 0x47207470
_0802577C: .4byte 0x70756F72
_08025780: .4byte 0x00000000
_08025784: .4byte 0xF000FFFF
_08025788: .4byte 0xFF8007FF
_0802578C: .4byte 0x0027B000
_08025790: .4byte 0x0000052A
_08025794: .4byte 0xFF8003FF
_08025798: .4byte 0x0000052D
_0802579C: .4byte 0x00451800
_080257A0: .4byte 0x0000030A
_080257A4: .4byte 0x00000501
_080257A8: .4byte 0x0044E000
_080257AC: .4byte 0x00000355
_080257B0: .4byte 0x00000504
_080257B4: .4byte 0x0044F800
_080257B8: .4byte 0x00000503
_080257BC: .4byte 0x00447000
_080257C0: .4byte 0x00000502
_080257C4: .4byte 0x00440800
sub_80257C8:
	movs r3, #0xcc
	strh r3, [r0, #0xe]
	movs r3, #0xcd
	strh r3, [r0, #0xa]
	movs r3, #0xce
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xc9
	strh r3, [r0, #0x1e]
	movs r3, #0xca
	strh r3, [r0, #0x1a]
	movs r3, #0xcb
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BC8 @ =0x0000050A
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x11
	lsls r3, r3, #0x12
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
_0802580C:
	b _0802554A
sub_802580E:
	movs r3, #0xff
	adds r3, #0x12
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
	ldr r3, _08025BCC @ =0x0000050B
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BD0 @ =0x00442000
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
	b _0802554A
sub_8025854:
	ldr r3, _08025BD4 @ =0x000002BE
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
	ldr r3, _08025BD8 @ =0x0000050D
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BDC @ =0x00448800
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
	b _0802554A
sub_8025898:
	movs r7, #0xc6
	strh r7, [r0, #0xe]
	movs r3, #0xc7
	strh r3, [r0, #0xa]
	movs r3, #0xc8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0xc7
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BE0 @ =0x00000513
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BE4 @ =0x0043F800
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
	b _0802554A
sub_80258D8:
	movs r3, #0xff
	adds r3, #0x18
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
	ldr r3, _08025BE8 @ =0x00000514
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ands r0, r6
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	non_word_aligned_thumb_func_start sub_802591A
sub_802591A: @ 0x0802591A
	movs r3, #0x83
	lsls r3, r3, #2
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
	ldr r3, _08025BEC @ =0x0000050C
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF0 @ =0x00441800
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
	b _0802554A

	thumb_func_start sub_8025960
sub_8025960: @ 0x08025960
	movs r3, #6
	strh r3, [r0, #0xe]
	movs r3, #7
	strh r3, [r0, #0xa]
	movs r3, #8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #3
	strh r3, [r0, #0x1e]
	movs r3, #4
	strh r3, [r0, #0x1a]
	movs r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BF4 @ =0x00000511
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF8 @ =0x00439000
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
	b _0802554A

	thumb_func_start sub_80259A4
sub_80259A4: @ 0x080259A4
	movs r3, #0xb1
	lsls r3, r3, #2
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
	movs r3, #0x51
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BFC @ =0x00449000
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
	b _0802554A

	thumb_func_start sub_80259EC
sub_80259EC: @ 0x080259EC
	ldr r3, _08025C00 @ =0x0000022D
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
	ldr r3, _08025C04 @ =0x00000512
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x89
	lsls r3, r3, #0xf
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
	b _0802554A

	non_word_aligned_thumb_func_start sub_8025A32
sub_8025A32: @ 0x08025A32
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
	ldr r3, _08025C08 @ =0x00000517
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C0C @ =0x0043D800
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
	b _0802554A
sub_8025A72:
	ldr r3, _08025C10 @ =0x000002D6
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
	ldr r3, _08025C14 @ =0x00000506
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C18 @ =0x0044A800
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
	b _0802554A
sub_8025AB6:
	ldr r3, _08025C1C @ =0x0000035B
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
	ldr r3, _08025C20 @ =0x00000509
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C24 @ =0x00450800
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
	b _0802554A
sub_8025AFA:
	ldr r3, _08025C28 @ =0x000002FB
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
	ldr r3, _08025C2C @ =0x00000507
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C30 @ =0x0044C800
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
	b _0802554A
sub_8025B3E:
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
	ldr r3, _08025C34 @ =0x0043B800
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
	b _0802554A
sub_8025B84:
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
	ldr r3, _08025C38 @ =0x0000050E
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C3C @ =0x00452000
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
	b _08025C40
	.align 2, 0
_08025BC8: .4byte 0x0000050A
_08025BCC: .4byte 0x0000050B
_08025BD0: .4byte 0x00442000
_08025BD4: .4byte 0x000002BE
_08025BD8: .4byte 0x0000050D
_08025BDC: .4byte 0x00448800
_08025BE0: .4byte 0x00000513
_08025BE4: .4byte 0x0043F800
_08025BE8: .4byte 0x00000514
_08025BEC: .4byte 0x0000050C
_08025BF0: .4byte 0x00441800
_08025BF4: .4byte 0x00000511
_08025BF8: .4byte 0x00439000
_08025BFC: .4byte 0x00449000
_08025C00: .4byte 0x0000022D
_08025C04: .4byte 0x00000512
_08025C08: .4byte 0x00000517
_08025C0C: .4byte 0x0043D800
_08025C10: .4byte 0x000002D6
_08025C14: .4byte 0x00000506
_08025C18: .4byte 0x0044A800
_08025C1C: .4byte 0x0000035B
_08025C20: .4byte 0x00000509
_08025C24: .4byte 0x00450800
_08025C28: .4byte 0x000002FB
_08025C2C: .4byte 0x00000507
_08025C30: .4byte 0x0044C800
_08025C34: .4byte 0x0043B800
_08025C38: .4byte 0x0000050E
_08025C3C: .4byte 0x00452000
_08025C40:
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025C44:
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
	ldr r3, _08025FAC @ =0x0000051A
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB0 @ =0x0044B800
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
	b _0802554A
sub_8025C80:
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
	ldr r3, _08025FB4 @ =0x0043E000
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
	b _0802554A
sub_8025CC2:
	ldr r7, _08025FB8 @ =0x0000032E
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
	ldr r3, _08025FBC @ =0x00000521
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC0 @ =0x0044F000
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
	b _0802554A
sub_8025D02:
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
	ldr r3, _08025FC4 @ =0x0000051F
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC8 @ =0x00443000
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
	b _0802554A
_08025D44:
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
	ldr r3, _08025FCC @ =0x0000051D
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	ldr r3, [r1, #8]
	ands r3, r6
	ldr r6, _08025FD0 @ =0x00445000
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
	b _080255D0
_08025D90:
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
	b _080255D0
_08025DAA:
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
	ldr r3, _08025FD4 @ =0x0000051E
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FD8 @ =0x0043E800
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
	b _08025636

	non_word_aligned_thumb_func_start sub_8025DEE
sub_8025DEE: @ 0x08025DEE
	movs r7, #0xff
	adds r7, #0xd6
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
	ldr r3, _08025FDC @ =0x0000051B
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE0 @ =0x00445800
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
	b _0802564C

	thumb_func_start sub_8025E30
sub_8025E30: @ 0x08025E30
	movs r7, #0x82
	strh r7, [r0, #0xe]
	movs r3, #0x83
	strh r3, [r0, #0xa]
	movs r3, #0x84
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x83
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FE4 @ =0x00000516
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE8 @ =0x0043C800
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
	b _0802569A
_08025E70:
	b _08025E74
_08025E72:
	b _08025EB6
_08025E74:
	movs r7, #0
	strh r7, [r0, #0xe]
	movs r3, #1
	strh r3, [r0, #0xa]
	movs r3, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x53
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FEC @ =0x00438800
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
	b _080256DE
_08025EB6:
	ldr r7, _08025FF0 @ =0x000002D9
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
	ldr r3, _08025FF4 @ =0x00000519
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FF8 @ =0x0044B000
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
	b _08025724

	non_word_aligned_thumb_func_start sub_8025EF6
sub_8025EF6: @ 0x08025EF6
	movs r7, #0x85
	strh r7, [r0, #0xe]
	movs r3, #0x86
	strh r3, [r0, #0xa]
	movs r3, #0x87
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x86
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FFC @ =0x0000050F
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026000 @ =0x0043D000
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
	b _08025768

	non_word_aligned_thumb_func_start sub_8025F36
sub_8025F36: @ 0x08025F36
	movs r3, #0xff
	adds r3, #0x12
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
	ldr r3, _08026004 @ =0x00000501
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026008 @ =0x0044E000
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
	b _0802580C

	thumb_func_start sub_8025F7C
sub_8025F7C: @ 0x08025F7C
	ldr r2, _0802600C @ =0x0000037A
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
	b _0802580C

	thumb_func_start sub_8025F94
sub_8025F94: @ 0x08025F94
	ldr r2, _08026010 @ =0x000002FE
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
	b _0802580C
	.align 2, 0
_08025FAC: .4byte 0x0000051A
_08025FB0: .4byte 0x0044B800
_08025FB4: .4byte 0x0043E000
_08025FB8: .4byte 0x0000032E
_08025FBC: .4byte 0x00000521
_08025FC0: .4byte 0x0044F000
_08025FC4: .4byte 0x0000051F
_08025FC8: .4byte 0x00443000
_08025FCC: .4byte 0x0000051D
_08025FD0: .4byte 0x00445000
_08025FD4: .4byte 0x0000051E
_08025FD8: .4byte 0x0043E800
_08025FDC: .4byte 0x0000051B
_08025FE0: .4byte 0x00445800
_08025FE4: .4byte 0x00000516
_08025FE8: .4byte 0x0043C800
_08025FEC: .4byte 0x00438800
_08025FF0: .4byte 0x000002D9
_08025FF4: .4byte 0x00000519
_08025FF8: .4byte 0x0044B000
_08025FFC: .4byte 0x0000050F
_08026000: .4byte 0x0043D000
_08026004: .4byte 0x00000501
_08026008: .4byte 0x0044E000
_0802600C: .4byte 0x0000037A
_08026010: .4byte 0x000002FE

	thumb_func_start sub_8026014
sub_8026014: @ 0x08026014
	push {r3, lr}
	movs r0, #0x10
	bl sub_8018386
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_8026024
sub_8026024: @ 0x08026024
	push {r4, lr}
	adds r4, r0, #0
	bne _0802603C
	movs r0, #0xa4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802603C
	adds r0, r4, #0
_08026036:
	pop {r4}
	pop {r3}
	bx r3
_0802603C:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _080262AC @ =_0803EA18
	movs r1, #0x3c
	str r0, [r4]
	add r0, pc, #0x264 @ =_080262B0
	str r0, [r4, #0x4c]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	adds r0, #0x10
	ldr r1, [r0, #4]
	ldr r2, _080262C8 @ =0xF000FFFF
	ands r1, r2
	str r1, [r0, #4]
	ldr r1, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x11
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	movs r0, #8
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xcf
	movs r1, #0xa0
	strh r0, [r1, r4]
	adds r0, r4, #0
	b _08026036

	thumb_func_start sub_802608C
sub_802608C: @ 0x0802608C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080262AC @ =_0803EA18
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _080260A8
	adds r0, r4, #0
	bl sub_803DA18
_080260A8:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80260AE
sub_80260AE: @ 0x080260AE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _080260C2
	movs r0, #0x13
	str r0, [r4, #0x1c]
_080260C2:
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80260C8
sub_80260C8: @ 0x080260C8
	push {r4}
	ldr r1, [r1]
	movs r3, #0
	ldrb r2, [r1, #5]
	lsls r2, r2, #0x10
	str r2, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x80
	str r3, [r2, #0x1c]
	ldrb r4, [r1, #4]
	cmp r4, #0xc
	bhs _08026166
	add r3, pc, #0x4 @ =_080260E8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
_080260E8:
	.byte 0x05
_080260E9:
	.byte 0x05
_080260EA:
	.byte 0x05
_080260EB:
	.byte 0x05
_080260EC:
	.byte 0x12
_080260ED:
	.byte 0x1B
_080260EE:
	.byte 0x27
_080260EF:
	.byte 0x33
_080260F0:
	.byte 0x3F
_080260F1:
	.byte 0x48
_080260F2:
	.byte 0x54
_080260F3:
	.byte 0x60
loc_80260f4:
	ldrb r1, [r1, #4]
	movs r4, #0xf
	ldr r3, [r0, #0x7c]
	lsls r4, r4, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0xff
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_802610e:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026120:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026138:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026150:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
_08026166:
	b _080261C0
loc_8026168:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_802617a:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_8026192:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_80261aa:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
_080261C0:
	movs r0, #0x13
	str r0, [r2, #0x1c]
	pop {r4}
	bx lr

	thumb_func_start sub_80261C8
sub_80261C8: @ 0x080261C8
	push {r3, lr}
	ldr r1, [r1]
	movs r3, #0xf
	ldrh r1, [r1, #4]
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r0, #0x2c]
	movs r2, #0
	bl sub_80007A0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80261F6
sub_80261F6: @ 0x080261F6
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	cmp r2, #0x1c
	beq _08026234
	cmp r2, #0x1f
	beq _0802623C
	cmp r2, #0x26
	bne _08026250
	ldrh r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
_0802622E:
	pop {r4}
	pop {r3}
	bx r3
_08026234:
	adds r0, r4, #0
	bl sub_80260C8
	b _0802622E
_0802623C:
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0802622E
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b _0802622E
_08026250:
	adds r0, r4, #0
	bl sub_801DD40
	b _0802622E

	thumb_func_start sub_8026258
sub_8026258: @ 0x08026258
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08026276
	cmp r0, #0x1f
	beq _08026282
	cmp r0, #0x26
	bne _080262A2
	movs r0, #1
_08026270:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08026276:
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_08026282:
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _08026296
	movs r1, #0x13
	str r1, [r0, #0x1c]
_08026296:
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_080262A2:
	adds r0, r4, #0
	bl sub_801DF50
	b _08026270
	.align 2, 0
_080262AC: .4byte _0803EA18
_080262B0: .4byte 0x656E6547
_080262B4: .4byte 0x20636972
_080262B8: .4byte 0x656A624F
_080262BC: .4byte 0x47207463
_080262C0: .4byte 0x70756F72
_080262C4: .4byte 0x00000000
_080262C8: .4byte 0xF000FFFF

	thumb_func_start sub_80262CC
sub_80262CC: @ 0x080262CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #0x1a]
	adds r6, r4, #0
	adds r6, #0x80
	cmp r0, #0
	ldr r7, _08026684 @ =gUnknown_03003EA0
	beq _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	bne _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026312
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026312:
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802632E
	bl sub_803BE1C
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne _0802632E
	movs r0, #0x12
	str r0, [r6, #0x1c]
	b _08026360
_0802632E:
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026348
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026348:
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _08026360
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08026360
	movs r0, #0x11
	str r0, [r6, #0x1c]
_08026360:
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802636C
sub_802636C: @ 0x0802636C
	subs r1, #0x42
	cmp r1, #0x14
	push {r4, lr}
	bhs _0802637E
	add r3, pc, #0xC @ =_08026384
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_0802637E:
	pop {r4}
	pop {r3}
	bx r3
_08026384:
	.byte 0x16, 0x00
_08026386:
	.byte 0x20, 0x00
_08026388:
	.byte 0x85, 0x00
_0802638A:
	.byte 0x42, 0x00
_0802638C:
	.byte 0xA8, 0x00
_0802638E:
	.byte 0xBC, 0x00
_08026390:
	.byte 0xDB, 0x00
_08026392:
	.byte 0xFA, 0x00
_08026394:
	.byte 0x0F, 0x01
_08026396:
	.byte 0x21, 0x01
_08026398:
	.byte 0x57, 0x01
_0802639A:
	.byte 0xB0, 0x01
_0802639C:
	.byte 0xD0, 0x01
_0802639E:
	.byte 0x63, 0x00
_080263A0:
	.byte 0x4D, 0x02
_080263A2:
	.byte 0x3D, 0x02
_080263A4:
	.byte 0x45, 0x02
_080263A6:
	.byte 0x56, 0x02
_080263A8:
	.byte 0x17, 0x02
_080263AA:
	.byte 0xF1, 0x01
loc_80263ac:
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	b _0802637E
loc_80263c0:
	ldr r1, _08026688 @ =0x00000289
	ldr r3, _0802668C @ =0x00000522
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 @ =0xFF8003FF
	ands r2, r3
	ldr r3, _08026694 @ =0x0044A000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C @ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026404:
	ldr r1, _080266A0 @ =0x000002B5
	ldr r3, _0802668C @ =0x00000522
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 @ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266A4 @ =0x0043B000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C @ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026446:
	ldr r1, _080266A8 @ =0x00000239
	ldr r3, _080266AC @ =0x00000527
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 @ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266B0 @ =0x0043C000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C @ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x23
	strb r1, [r0, #0xc]
	b _0802637E
loc_802648a:
	movs r1, #0xab
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266B4 @ =0x00000523
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 @ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266B8 @ =0x0044C000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266BC @ =0x0027D800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_80264d0:
	ldr r1, _080266C0 @ =0x00000237
	movs r2, #4
	strh r1, [r0, #0x18]
	movs r1, #0
	strh r1, [r0, #0x1a]
	movs r1, #0x47
	lsls r1, r1, #3
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #1
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r0, [r1]
	bics r0, r2
	str r0, [r1]
	b _0802637E
loc_80264f8:
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690 @ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266C4 @ =0x0027E800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
_08026534:
	b _0802637E
loc_8026536:
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690 @ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266C4 @ =0x0027E800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026574:
	ldr r1, _080266C8 @ =0x000002AE
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #3
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r0, #0x80
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_802659e:
	ldr r1, _080266CC @ =0x0000024D
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_80265c2:
	ldr r1, _080266D0 @ =0x0000026E
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r1, #0x14]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _080265F6
	cmp r2, #2
	beq _080265F6
	movs r2, #1
	b _080265F8
_080265F6:
	movs r2, #0
_080265F8:
	movs r4, #1
	ldr r3, [r1, #0xc]
	lsls r4, r4, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r4
	orrs r2, r3
	str r2, [r1, #0xc]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _08026534
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsrs r3, r4, #3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbf
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08026534
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	b _0802637E
loc_802662e:
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266D4 @ =0x0000052D
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	ldr r3, [r1, #8]
	ldr r4, _08026690 @ =0xFF8003FF
	adds r0, #0x70
	ands r3, r4
	ldr r4, _080266D8 @ =0x00451800
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r3, [r1]
	ldr r4, _08026698 @ =0xFF8007FF
	ands r3, r4
	ldr r4, _080266DC @ =0x0027B000
	adds r3, r3, r4
	str r3, [r1]
	movs r3, #0x3c
	strb r3, [r0, #0xd]
	movs r3, #0x1e
	strb r3, [r0, #0xc]
	movs r0, #1
	lsls r0, r0, #0xc
	orrs r0, r2
	lsls r2, r3, #0xe
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b _0802637E
	.align 2, 0
_08026684: .4byte gUnknown_03003EA0
_08026688: .4byte 0x00000289
_0802668C: .4byte 0x00000522
_08026690: .4byte 0xFF8003FF
_08026694: .4byte 0x0044A000
_08026698: .4byte 0xFF8007FF
_0802669C: .4byte 0x0027B800
_080266A0: .4byte 0x000002B5
_080266A4: .4byte 0x0043B000
_080266A8: .4byte 0x00000239
_080266AC: .4byte 0x00000527
_080266B0: .4byte 0x0043C000
_080266B4: .4byte 0x00000523
_080266B8: .4byte 0x0044C000
_080266BC: .4byte 0x0027D800
_080266C0: .4byte 0x00000237
_080266C4: .4byte 0x0027E800
_080266C8: .4byte 0x000002AE
_080266CC: .4byte 0x0000024D
_080266D0: .4byte 0x0000026E
_080266D4: .4byte 0x0000052D
_080266D8: .4byte 0x00451800
_080266DC: .4byte 0x0027B000
loc_80266e0:
	ldr r1, _08026874 @ =0x00000297
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878 @ =0x00000526
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C @ =0xFF8003FF
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026884 @ =0x0027C800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026720:
	movs r1, #0xa5
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878 @ =0x00000526
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C @ =0xFF8003FF
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026884 @ =0x0027C800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026762:
	ldr r1, _08026888 @ =0x0000024E
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C @ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802688C @ =0x0027F000
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r1, #0x14]
	movs r1, #0x28
	strb r1, [r0, #0xc]
	b _0802637E
loc_80267ae:
	ldr r1, _08026890 @ =0x0000026B
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C @ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026894 @ =0x0027F800
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	movs r2, #0x14
	strb r2, [r0, #0xc]
	movs r2, #3
	ldr r0, [r1, #0x14]
	lsls r2, r2, #0xf
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r1, #0x14]
	b _0802637E
loc_80267fa:
	ldr r1, _08026898 @ =0x00000286
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802680a:
	ldr r1, _0802689C @ =0x00000287
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802681a:
	movs r1, #0x51
	lsls r1, r1, #3
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802682c:
	ldr r1, _080268A0 @ =0x00000285
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	movs r3, #0xa5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C @ =0xFF8003FF
	ands r2, r3
	ldr r3, _080268A4 @ =0x00449800
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 @ =0xFF8007FF
	ands r2, r3
	ldr r3, _080268A8 @ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
	.align 2, 0
_08026874: .4byte 0x00000297
_08026878: .4byte 0x00000526
_0802687C: .4byte 0xFF8003FF
_08026880: .4byte 0xFF8007FF
_08026884: .4byte 0x0027C800
_08026888: .4byte 0x0000024E
_0802688C: .4byte 0x0027F000
_08026890: .4byte 0x0000026B
_08026894: .4byte 0x0027F800
_08026898: .4byte 0x00000286
_0802689C: .4byte 0x00000287
_080268A0: .4byte 0x00000285
_080268A4: .4byte 0x00449800
_080268A8: .4byte 0x0027B800

	thumb_func_start sub_80268AC
sub_80268AC: @ 0x080268AC
	push {r3, lr}
	adds r0, #4
	bl sub_8012334
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80268BA
sub_80268BA: @ 0x080268BA
	push {r3, lr}
	adds r0, #4
	bl sub_801228C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80268C8
sub_80268C8: @ 0x080268C8
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _080268D8
	movs r0, #0x20
	bl sub_803D9F8
	cmp r0, #0
	beq _08026902
_080268D8:
	movs r4, #0
	str r4, [r0]
	adds r5, r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	movs r1, #0x98
	str r1, [r0, #8]
	mvns r1, r2
	str r1, [r0, #0x10]
	movs r1, #0xff
	adds r1, #1
	str r1, [r0, #0x14]
	movs r1, #5
	str r1, [r0, #0xc]
	ldr r1, _08026CDC @ =0x00002B11
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
_08026902:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8026908
sub_8026908: @ 0x08026908
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08026920
	ldr r0, _08026CE0 @ =0x00001308
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08026920
	adds r0, r4, #0
_0802691A:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08026920:
	movs r0, #0x13
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r5, r1, #0
	movs r2, #0x20
	adds r0, r4, #0
	ldr r3, _08026CE4 @ =sub_80268C8
	bl sub_803C3A4
	movs r0, #0
	strb r0, [r5, #5]
	adds r0, r4, #0
	b _0802691A

	non_word_aligned_thumb_func_start sub_802693A
sub_802693A: @ 0x0802693A
	push {r3, r4, r5, lr}
	movs r2, #0x1f
	mvns r2, r2
	adds r5, r1, #0
	adds r1, r0, r2
	adds r4, r0, #0
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	ldr r3, _08026CE8 @ =sub_80403A4
	bl sub_803C3C8
	cmp r5, #0
	beq _0802695C
	adds r0, r4, #0
	bl sub_803DA18
_0802695C:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8026962
sub_8026962: @ 0x08026962
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08026CEC @ =gUnknown_03003460
	sub sp, #0x164
	ldr r0, [r0]
	cmp r0, #0
	beq _08026A54
	movs r0, #0
	str r0, [r4, #8]
	ldr r5, _08026CDC @ =0x00002B11
	adds r0, r4, #4
	adds r7, r0, #0
	str r5, [r4, #0x1c]
	bl sub_801228C
	movs r6, #0x80
	str r6, [r4, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #1
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x160]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x3c]
	bl sub_801228C
	ldr r0, [sp, #0x160]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x160]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x160]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #2
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x40
	str r0, [sp, #0x15c]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x5c]
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x15c]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #3
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [sp, #0x158]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x7c]
	bl sub_801228C
	ldr r0, [sp, #0x158]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x158]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x158]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	adds r7, r4, r6
	movs r0, #4
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, r0
	b _08026A56
_08026A54:
	b _0802723A
_08026A56:
	str r0, [sp, #0x154]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	adds r7, r4, #0
	adds r7, #0xa0
	movs r0, #5
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x150]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	adds r7, #0x40
	movs r0, #7
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x14c]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #8
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x148]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #9
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	adds r5, r0, #0
	bl sub_801228C
	adds r0, r5, #0
	str r6, [r7, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r6, #0x10
	str r6, [r7, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r4, #0
	adds r0, #0xc0
	str r0, [sp, #0x144]
	adds r1, r0, #0
	movs r0, #6
	str r0, [r1, #8]
	ldr r0, [sp, #0x144]
	ldr r1, _08026CDC @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x144]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	adds r5, #0x1c
	movs r0, #0xa
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xb
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xc
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xd
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xe
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xf
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	lsls r0, r6, #5
	adds r5, r4, r0
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	str r6, [r5, #8]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x11
	str r0, [r5, #8]
	ldr r0, _08026CDC @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	b _08026CF0
	.align 2, 0
_08026CDC: .4byte 0x00002B11
_08026CE0: .4byte 0x00001308
_08026CE4: .4byte sub_80268C8
_08026CE8: .4byte sub_80403A4
_08026CEC: .4byte gUnknown_03003460
_08026CF0:
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x12
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x13
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x14
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x15
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x16
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x17
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x18
	str r0, [r6, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r7, #0x80
	str r7, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x19
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1a
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1b
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x1c
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1d
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1e
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1f
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xa
	adds r5, r4, r0
	movs r0, #0x20
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x21
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x22
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x23
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x24
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x26
	str r0, [r5, #8]
	ldr r0, _080270F8 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	b _080270FC
	.align 2, 0
_080270F8: .4byte 0x00002B11
_080270FC:
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x25
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x27
	str r0, [r6, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r4, r0
	movs r0, #0x28
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x29
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x2a
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2b
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b _0802723C
_0802723A:
	b _08027938
_0802723C:
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x2c
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2d
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x13c]
	adds r1, r0, #0
	movs r0, #0x2e
	str r0, [r1, #8]
	ldr r0, [sp, #0x13c]
	ldr r1, _08027538 @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	movs r1, #0x33
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x13c]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2f
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x30
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x31
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x134]
	adds r1, r0, #0
	movs r0, #0x32
	str r0, [r1, #8]
	ldr r0, [sp, #0x134]
	ldr r1, _08027538 @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x134]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x33
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x34
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x35
	str r0, [r5, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r7, r4, r0
	movs r0, #0x36
	str r0, [r7, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r7, #0x1c]
	adds r0, r7, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r5, #0x80
	str r5, [r7, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r7, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x37
	str r0, [r6, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x38
	str r0, [r6, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x39
	str r0, [r6, #8]
	ldr r0, _08027538 @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	b _0802753C
	.align 2, 0
_08027538: .4byte 0x00002B11
_0802753C:
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x3a
	str r0, [r6, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x3b
	str r0, [r6, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x3c
	str r0, [r6, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x12c]
	adds r1, r0, #0
	movs r0, #0x3d
	str r0, [r1, #8]
	ldr r0, [sp, #0x12c]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r5, [r0, #0x14]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r7, #0
	ldr r0, [sp, #0x12c]
	mvns r7, r7
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r1, [sp, #0x12c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x124]
	adds r1, r0, #0
	movs r0, #0x3e
	str r0, [r1, #8]
	ldr r0, [sp, #0x124]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r1, [sp, #0x124]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x11c]
	adds r1, r0, #0
	movs r0, #0x3f
	str r0, [r1, #8]
	ldr r1, [sp, #0x11c]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x11c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	lsls r0, r5, #4
	adds r1, r4, r0
	str r1, [sp, #0x114]
	movs r0, #0x40
	str r0, [r1, #8]
	ldr r1, [sp, #0x114]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #5
	adds r1, r4, r0
	str r1, [sp, #0x10c]
	movs r0, #0x41
	str r0, [r1, #8]
	ldr r1, [sp, #0x10c]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x42
	str r0, [r5, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x43
	str r0, [r5, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x44
	str r0, [r5, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x45
	str r0, [r6, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x104]
	adds r1, r0, #0
	movs r0, #0x46
	str r0, [r1, #8]
	ldr r0, [sp, #0x104]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x104]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xfc]
	adds r1, r0, #0
	movs r0, #0x47
	str r0, [r1, #8]
	ldr r0, [sp, #0xfc]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xfc]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #8
	adds r0, r4, r0
	str r0, [sp, #0xf4]
	adds r1, r0, #0
	movs r0, #0x48
	str r0, [r1, #8]
	ldr r0, [sp, #0xf4]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xf4]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xec]
	adds r1, r0, #0
	movs r0, #0x49
	str r0, [r1, #8]
	ldr r0, [sp, #0xec]
	ldr r1, _0802793C @ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xec]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4a
	str r0, [r5, #8]
	ldr r0, _08027940 @ =0x00002B12
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4b
	str r0, [r5, #8]
	ldr r0, _0802793C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b _08027944
_08027938:
	b _0802811E
	.align 2, 0
_0802793C: .4byte 0x00002B11
_08027940: .4byte 0x00002B12
_08027944:
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x4c
	str r0, [r6, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4d
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4e
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4f
	str r0, [r5, #8]
	movs r7, #0x7d
	lsls r7, r7, #7
	adds r0, r5, #4
	adds r6, r0, #0
	str r7, [r5, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x50
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x51
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x51
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x52
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x53
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x53
	str r0, [r5, #8]
	ldr r0, _08027D4C @ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	str r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x54
	str r0, [r6, #8]
	str r7, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x55
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x55
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x56
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x57
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x58
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x59
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x59
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5a
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x5b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x5b
	str r0, [r6, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5c
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r0, #0x5d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5d
	str r0, [r1, #8]
	ldr r1, _08027D4C @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #6
	b _08027D50
	.align 2, 0
_08027D4C: .4byte 0x00002B11
_08027D50:
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5e
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r0, #0x5f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5f
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #0xa
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x60
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r0, #0x61
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x61
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x62
	str r0, [r6, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r0, #0x63
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x63
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x64
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r0, #0x65
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x65
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x66
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r0, #0x67
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x67
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x68
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r0, #0x69
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x69
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x6a
	str r0, [r6, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r0, #0x6b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6b
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6c
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r0, #0x6d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6d
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6e
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r0, #0x6f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6f
	str r0, [r1, #8]
	ldr r1, _08028138 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x94]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	b _08028120
_0802811E:
	b _08028906
_08028120:
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x70
	b _0802813C
	.align 2, 0
_08028138: .4byte 0x00002B11
_0802813C:
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r0, #0x71
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x71
	str r0, [r6, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x72
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x73
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x73
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x74
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r0, #0x75
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x75
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x76
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r0, #0x77
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x77
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x78
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r0, #0x79
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x79
	str r0, [r6, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7a
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r0, #0x7b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7b
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7c
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r0, #0x7d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7d
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7e
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r0, #0x7f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7f
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xc
	adds r6, r4, r0
	movs r1, #0x80
	str r1, [r6, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r0, #0x81
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x81
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x82
	str r0, [r1, #8]
	ldr r1, _08028520 @ =0x00002B11
	b _08028524
	.align 2, 0
_08028520: .4byte 0x00002B11
_08028524:
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r0, #0x83
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x83
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x84
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r0, #0x85
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x85
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x86
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r0, #0x87
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x87
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x88
	str r0, [r6, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r0, #0x89
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x89
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8a
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r0, #0x8b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8b
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8c
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r0, #0x8d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8d
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8e
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r0, #0x8f
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x8f
	str r0, [r6, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x90
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x91
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x91
	str r0, [r6, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x92
	str r0, [r6, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x93
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x93
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x94
	str r0, [r1, #8]
	ldr r1, _08028938 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	b _08028908
_08028906:
	b _08028A74
_08028908:
	str r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x95
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	b _0802893C
	.align 2, 0
_08028938: .4byte 0x00002B11
_0802893C:
	adds r1, r0, #0
	movs r0, #0x95
	str r0, [r1, #8]
	ldr r1, _08028BD8 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x96
	str r0, [r1, #8]
	ldr r1, _08028BD8 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x97
	str r0, [r1, #8]
	ldr r1, _08028BD8 @ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #4]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r7, #0
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r0, [sp, #0x10c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	str r7, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	strb r7, [r0, #4]
_08028A74:
	add sp, #0x164
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8028A7C
sub_8028A7C: @ 0x08028A7C
	push {r3, r4, r5, r6, r7, lr}
_08028A7E:
	adds r6, r0, #0
	ldr r0, _08028BDC @ =gUnknown_03003460
	adds r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _08028AC4
	movs r2, #0x13
	lsls r2, r2, #8
	adds r5, r6, r2
	strb r1, [r5, #5]
	cmp r1, #7
	bhs _08028AC4
	add r3, pc, #0x8 @ =_08028AA0
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_08028AA0:
	.byte 0x12
_08028AA1:
	.byte 0x04
_08028AA2:
	.byte 0x15
_08028AA3:
	.byte 0x1A
_08028AA4:
	.byte 0x2A
_08028AA5:
	.byte 0x3F
_08028AA6:
	.byte 0x2F, 0x00
loc_8028aa8:
	cmp r4, #0xff
	beq _08028ABA
	ldr r5, _08028BDC @ =gUnknown_03003460
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
_08028ABA:
	ldr r0, _08028BDC @ =gUnknown_03003460
	movs r1, #0x40
	ldr r0, [r0]
	bl sub_800B6EC
_08028AC4:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8028aca:
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b _08028AC4
loc_8028ad4:
	cmp r4, #0xff
	beq _08028AE6
	ldr r5, _08028BDC @ =gUnknown_03003460
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
_08028AE6:
	ldr r0, _08028BDC @ =gUnknown_03003460
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r0]
	bl sub_800B6EC
	b _08028AC4
loc_8028af4:
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b _08028AC4
loc_8028afe:
	ldr r7, _08028BDC @ =gUnknown_03003460
	bl sub_800B72A
	cmp r0, #0
	beq _08028B16
	movs r1, #0xff
	mvns r1, r1
	ldr r0, [r7]
	bl sub_800B6EC
	strb r4, [r5]
	b _08028AC4
_08028B16:
	adds r2, r4, #0
	movs r1, #3
	adds r0, r6, #0
	b _08028A7E
loc_8028b1e:
	ldr r0, _08028BE0 @ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B764
	strb r0, [r5, #6]
	strb r4, [r5]
	b _08028AC4

	thumb_func_start sub_8028B2C
sub_8028B2C: @ 0x08028B2C
	ldr r1, _08028BDC @ =gUnknown_03003460
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	cmp r1, #0
	beq _08028B62
	movs r2, #0x13
	lsls r2, r2, #8
	adds r4, r0, r2
	ldrb r0, [r4, #5]
	cmp r0, #7
	bhs _08028B62
	add r3, pc, #0x8 @ =_08028B4C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_08028B4C:
	.byte 0x0B
_08028B4D:
	.byte 0x04
_08028B4E:
	.byte 0x0E
_08028B4F:
	.byte 0x04
_08028B50:
	.byte 0x0E
_08028B51:
	.byte 0x32
_08028B52:
	.byte 0x1C, 0x00
loc_8028b54:
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	strb r0, [r4, #4]
	strb r0, [r4, #5]
_08028B62:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8028b68:
	ldr r5, _08028BDC @ =gUnknown_03003460
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	movs r0, #1
	strb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #5]
	ldr r0, [r5]
	bl sub_800B6AC
	b _08028B62
loc_8028b84:
	ldr r5, _08028BDC @ =gUnknown_03003460
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	ldr r0, [r5]
	bl sub_800B6AC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r5]
	bl sub_800B6EC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	b _08028B62
loc_8028bb0:
	ldr r0, _08028BE0 @ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B764
	ldrb r1, [r4, #6]
	cmp r0, r1
	beq _08028B62
	ldr r5, _08028BDC @ =gUnknown_03003460
	ldr r0, [r5]
	bl sub_800B6AC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	strb r0, [r4, #5]
	b _08028B62
	.align 2, 0
_08028BD8: .4byte 0x00002B11
_08028BDC: .4byte gUnknown_03003460
_08028BE0: .4byte gUnknown_03003E94

	thumb_func_start sub_8028BE4
sub_8028BE4: @ 0x08028BE4
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_80121C4
	cmp r0, #0
	beq _08028BF8
	movs r0, #1
_08028BF2:
	add sp, #4
	pop {r3}
	bx r3
_08028BF8:
	movs r0, #0
	b _08028BF2

	thumb_func_start sub_8028BFC
sub_8028BFC: @ 0x08028BFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028C78 @ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08028C28
	movs r4, #0
_08028C0A:
	lsls r0, r4, #5
	adds r5, r0, r6
	ldr r0, [r5, #8]
	bl sub_80121C4
	cmp r0, #0
	beq _08028C1E
	adds r0, r5, #4
	bl sub_8012334
_08028C1E:
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x98
	blo _08028C0A
_08028C28:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C2E
sub_8028C2E: @ 0x08028C2E
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #4
	bl sub_801220C
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C42
sub_8028C42: @ 0x08028C42
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028C56
	adds r0, r4, #4
	bl sub_80122F0
	movs r0, #1
	strb r0, [r4]
_08028C56:
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8028C5C
sub_8028C5C: @ 0x08028C5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028C70
	adds r0, r4, #4
	bl sub_801230C
	movs r0, #0
	strb r0, [r4]
_08028C70:
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_08028C78: .4byte gUnknown_03003460

	thumb_func_start sub_8028C7C
sub_8028C7C: @ 0x08028C7C
	push {r4, lr}
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028C9A
	adds r0, r4, #0
	bl sub_8023D0C
_08028C9A:
	ldr r0, _08028CDC @ =gUnknown_030034F8
	ldr r1, _08028CE0 @ =gUnknown_03003478
	str r4, [r0]
	ldr r1, [r1]
	movs r0, #0x10
	ands r1, r0
	beq _08028CAC
	movs r1, #1
	b _08028CAE
_08028CAC:
	movs r1, #0
_08028CAE:
	adds r0, r4, #0
	bl sub_80247A4
	ldr r4, _08028CE4 @ =gUnknown_03003458
	ldr r0, [r4]
	bl sub_801CCA8
	ldr r0, [r4]
	bl sub_801B56C
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_801C7D2
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_08028CDC: .4byte gUnknown_030034F8
_08028CE0: .4byte gUnknown_03003478
_08028CE4: .4byte gUnknown_03003458

	thumb_func_start sub_8028CE8
sub_8028CE8: @ 0x08028CE8
	push {r4, lr}
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r3, _08028D50 @ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r3]
	ldr r1, _08028D58 @ =gUnknown_03003D20
	bics r2, r0
	ldr r0, _08028D54 @ =gUnknown_03003458
	str r2, [r3]
	ldr r0, [r0]
	movs r4, #0
	strb r4, [r1]
	movs r1, #0x10
	bics r2, r1
	str r2, [r3]
	bl sub_801BEA0
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028D30
	adds r0, r4, #0
	bl sub_8023D0C
_08028D30:
	ldr r0, _08028D5C @ =gUnknown_030034F8
	movs r1, #0
	str r4, [r0]
	adds r0, r4, #0
	bl sub_80247A4
	bl sub_800EF2A
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_08028D50: .4byte gUnknown_03003478
_08028D54: .4byte gUnknown_03003458
_08028D58: .4byte gUnknown_03003D20
_08028D5C: .4byte gUnknown_030034F8

	thumb_func_start sub_8028D60
sub_8028D60: @ 0x08028D60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	add r6, sp, #8
	adds r0, r6, #0
	bl sub_802B288
	ldr r0, _08028F44 @ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r2, _08028F48 @ =gUnknown_03003478
	ldr r5, [r0, #0x1c]
	ldr r1, [r2]
	movs r0, #8
	orrs r0, r1
	str r0, [r2]
	mov r0, sp
	mov r4, sp
	bl sub_80046F8
	movs r1, #1
	adds r0, r4, #0
	bl sub_800476C
	ldr r7, _08028F4C @ =gUnknown_03003458
	movs r2, #0x3f
	ldr r0, [r7]
	ldrh r0, [r0, #0x1c]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_8004784
	ldr r0, [r7]
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	movs r0, #0x10
	subs r2, r0, r1
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	orrs r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #0x12
	bne _08028E76
_08028DD6:
	ldr r0, _08028F44 @ =gUnknown_03003454
	movs r1, #0xff
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _08028F50 @ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	lsls r3, r0, #0x1c
	bmi _08028DEE
	ldrh r2, [r1, #6]
_08028DEE:
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x1c
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq _08028E06
	adds r0, r5, #0
	bl sub_8016108
	b _08028E5C
_08028E06:
	adds r0, r6, #0
	bl sub_802B382
	cmp r0, #0
	beq _08028E18
	adds r0, r6, #0
	bl sub_802BA20
	b _08028E5C
_08028E18:
	movs r1, #5
	ldr r0, [r7]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _08028E34
	lsls r2, r4, #0x1c
	bpl _08028E34
	adds r0, r6, #0
	bl sub_802B3D6
	b _08028E5C
_08028E34:
	cmp r1, #0
	bne _08028E44
	lsls r1, r4, #0x1d
	bpl _08028E44
	movs r0, #4
	bl sub_8018386
	b _08028E5C
_08028E44:
	adds r4, r7, #0
	bl sub_801C7D2
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	cmp r0, #0x10
	bne _08028E5C
	movs r0, #0x16
	bl sub_8018386
_08028E5C:
	ldr r0, [r7]
	bl sub_801CB4E
	ldr r0, _08028F54 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80241DA
	bl sub_800EF2A
	bl sub_8018390
	cmp r0, #0x12
	beq _08028DD6
_08028E76:
	ldr r2, _08028F48 @ =gUnknown_03003478
	movs r1, #0
	ldr r1, [r2]
	movs r0, #8
	bics r1, r0
	ldr r4, _08028F58 @ =gUnknown_0300345C
	str r1, [r2]
	ldr r0, [r4]
	bl sub_8028BFC
	ldr r5, _08028F54 @ =gUnknown_030034F8
	ldr r0, [r5]
	cmp r0, #0
	beq _08028E98
	movs r1, #1
	bl sub_8023F88
_08028E98:
	movs r0, #0
	str r0, [r5]
	bl sub_800EF2A
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	bics r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #4
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x15
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0xd
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x14
	beq _08028EE6
	bl sub_801810E
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	ldr r0, [r7]
	bl sub_801B170
	b _08028F18
_08028EE6:
	bl sub_8018390
	cmp r0, #0x15
	bne _08028EFE
	bl sub_801810E
	movs r2, #0xff
	movs r1, #2
	ldr r0, [r4]
	bl sub_8028A7C
	b _08028F0C
_08028EFE:
	bl _080180BE
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
_08028F0C:
	ldr r0, [r7]
	bl sub_801CC3C
	ldr r0, [r7]
	bl sub_801CC72
_08028F18:
	ldr r0, _08028F5C @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _08028F60 @ =gUnknown_03003450
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r1, #0
	adds r0, r6, #0
	bl sub_802B390
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08028F44: .4byte gUnknown_03003454
_08028F48: .4byte gUnknown_03003478
_08028F4C: .4byte gUnknown_03003458
_08028F50: .4byte gUnknown_03003444
_08028F54: .4byte gUnknown_030034F8
_08028F58: .4byte gUnknown_0300345C
_08028F5C: .4byte gUnknown_03003468
_08028F60: .4byte gUnknown_03003450

	thumb_func_start sub_8028F64
sub_8028F64: @ 0x08028F64
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _08029040 @ =gUnknown_03003E98
	ldr r1, _08029044 @ =gUnknown_03003D2C
	ldr r0, [r5]
	ldr r4, [r1]
	movs r1, #0x88
	ldr r0, [r0, #8]
	ldr r1, [r1, r4]
	subs r0, r0, r1
	bl sub_80406C4
	ldr r0, [r4]
	adds r0, r1, r0
	str r0, [r4]
	movs r0, #0
	bl sub_800E53C
	ldr r4, _08029048 @ =gUnknown_03003454
	ldr r0, [r4]
	bl sub_8017B9A
	bl sub_800EF2A
	movs r1, #3
	ldr r0, [r5]
	bl sub_800B058
	ldr r0, _0802904C @ =gUnknown_03003EB4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r7, #0
	cmp r0, #0
	beq _08028FBA
	movs r0, #0
	ldr r2, _08029050 @ =0x05000020
	str r0, [sp]
	adds r1, r2, #0
	subs r1, #0x20
	mov r0, sp
	bl sub_803D468
	b _08028FCC
_08028FBA:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08029054 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08029058 @ =0x85000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08028FCC:
	add r0, pc, #0x8C @ =_0802905C
	bl sub_800EF60
	bl sub_8018070
	ldr r5, _08029064 @ =gUnknown_03003468
	ldr r0, [r5]
	bl sub_803DA4C
	ldr r6, _08029068 @ =gUnknown_03003C58
	movs r1, #0
	ldrh r0, [r6]
	bl sub_800ED7C
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r7, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	str r0, [r5]
	movs r0, #0
	bl sub_800E71C
	ldr r0, [r4]
	bl sub_8017CA0
	ldr r0, _08029040 @ =gUnknown_03003E98
	ldr r1, _08029044 @ =gUnknown_03003D2C
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #8]
	adds r1, #0x80
	str r0, [r1, #8]
	ldrh r0, [r6]
	cmp r0, #6
	bne _08029038
	ldr r0, _0802906C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_801B170
	movs r0, #0x17
	bl sub_8018386
_08029032:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08029038:
	movs r0, #0x11
	bl sub_8018386
	b _08029032
	.align 2, 0
_08029040: .4byte gUnknown_03003E98
_08029044: .4byte gUnknown_03003D2C
_08029048: .4byte gUnknown_03003454
_0802904C: .4byte gUnknown_03003EB4
_08029050: .4byte 0x05000020
_08029054: .4byte 0x040000D4
_08029058: .4byte 0x85000020
_0802905C: .4byte 0x6F4D6742
_08029060: .4byte 0x00656976
_08029064: .4byte gUnknown_03003468
_08029068: .4byte gUnknown_03003C58
_0802906C: .4byte gUnknown_03003458

	thumb_func_start sub_8029070
sub_8029070: @ 0x08029070
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08029088
	movs r0, #0xe0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08029088
	adds r0, r4, #0
_08029082:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08029088:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08029354 @ =_0803E5F4
	movs r2, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	str r2, [r0, #0x20]
	adds r1, r4, #0
	adds r1, #0xa0
	str r2, [r0, #0x24]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x2c]
	movs r3, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r3
	ldr r3, _08029358 @ =0xFFFF000F
	adds r5, r4, #0
	ands r1, r3
	movs r3, #0x33
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #1
	lsls r3, r3, #0x10
	orrs r1, r3
	lsls r3, r3, #1
	bics r1, r3
	ldr r3, _0802935C @ =0xF803FFFF
	adds r5, #0xb8
	ands r1, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	movs r3, #7
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r3, r3, #0x10
	bics r1, r3
	movs r3, #0xff
	lsls r3, r3, #0x13
	bics r1, r3
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x34]
	movs r3, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r3, r3, #8
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0xe
	bics r1, r3
	str r1, [r0, #0x34]
	movs r1, #0xb6
	strb r2, [r1, r4]
	movs r1, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	ldr r1, _08029360 @ =gUnknown_0300327E
	movs r3, #0xf
	ldrb r1, [r1, #3]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x34]
	adds r0, r4, #0
	b _08029082

	thumb_func_start sub_802911C
sub_802911C: @ 0x0802911C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08029354 @ =_0803E5F4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08029138
	adds r0, r4, #0
	bl sub_803DA18
_08029138:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802913E
sub_802913E: @ 0x0802913E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x80
	mov lr, r2
	ldr r2, [r1, #0x30]
	add r6, sp, #0x30
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	ldr r3, [r2]
	ldm r6, {r4, r5, r6}
	lsrs r7, r3, #1
	mov r3, ip
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x1f
	lsls r7, r7, #1
	orrs r3, r7
	str r3, [r2]
	movs r7, #0xe
	bics r3, r7
	ldr r2, [r1, #0x30]
	mov r7, lr
	lsls r7, r7, #0x1d
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r7, r7, #0x1c
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0xff
	lsls r7, r7, #4
	bics r3, r7
	ldr r7, [sp, #0xc]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x14
	lsls r2, r2, #3
	adds r2, r2, r0
	orrs r3, r7
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, _08029364 @ =0xFFC00FFF
	lsls r2, r2, #0xd
	ands r3, r7
	ldr r7, [sp, #0x24]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	lsls r7, r7, #0x16
	lsrs r7, r7, #0xa
	adds r2, r2, r0
	adds r2, #0xb8
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x3f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	ldr r3, [r2]
	lsls r7, r7, #8
	bics r3, r7
	ldr r7, [sp, #0x28]
	lsls r4, r4, #0x1b
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, [sp, #0x2c]
	lsrs r3, r3, #8
	lsls r2, r2, #0xd
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	lsrs r2, r2, #0x1d
	lsls r3, r3, #8
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0xe
	bics r3, r7
	lsls r2, r2, #3
	lsrs r4, r4, #0xd
	orrs r3, r4
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	lsls r4, r7, #5
	bics r3, r4
	lsls r4, r5, #0x1b
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r4, r4, #8
	orrs r3, r4
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r3, #0x7f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r0, r2, r0
	adds r0, #0xb8
	ldr r2, [r0]
	lsls r3, r3, #0x17
	bics r2, r3
	lsls r3, r6, #0x19
	lsrs r3, r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x30]
	movs r2, #7
	lsls r2, r2, #0x10
	movs r4, #1
	adds r3, r0, #0
	lsls r4, r4, #0x10
	adds r0, r0, r4
	ands r0, r2
	bics r3, r2
	orrs r0, r3
	str r0, [r1, #0x30]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802925C
sub_802925C: @ 0x0802925C
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	sub sp, #0x18
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8029290
sub_8029290: @ 0x08029290
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r0, [r3]
	sub sp, #0x18
	cmp r0, #0x22
	beq _080292CE
	cmp r0, #0x24
	bne _080292DC
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
_080292C6:
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
_080292CE:
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _080292C6
_080292DC:
	adds r0, r4, #0
	bl sub_801DD40
	b _080292C6

	thumb_func_start sub_80292E4
sub_80292E4: @ 0x080292E4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	beq _080292FA
	cmp r2, #0x24
	bne _0802934E
	movs r0, #1
_080292F4:
	add sp, #4
	pop {r3}
	bx r3
_080292FA:
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x1c]
	cmp r2, #4
	bne _0802934A
	ldr r2, [r1, #0x2c]
	movs r3, #8
	bics r2, r3
	str r2, [r1, #0x2c]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	adds r1, #0x80
	ldr r2, [r1, #0x38]
	lsls r1, r2, #0x1f
	bmi _08029346
	adds r1, r0, #0
	adds r1, #0x90
	ldrb r3, [r1, #9]
	cmp r3, #0
	beq _08029346
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne _08029330
	ldr r2, [r0, #0x74]
	str r2, [r0, #0x70]
_08029330:
	ldr r0, _08029368 @ =gUnknown_03003458
	movs r2, #0x29
	ldr r0, [r0]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrb r2, [r0, #2]
	adds r2, #0xff
	strb r2, [r0, #2]
	ldrb r0, [r1, #9]
	adds r0, #0xff
	strb r0, [r1, #9]
_08029346:
	movs r0, #1
	b _080292F4
_0802934A:
	movs r0, #0
	b _080292F4
_0802934E:
	bl sub_801DF50
	b _080292F4
	.align 2, 0
_08029354: .4byte _0803E5F4
_08029358: .4byte 0xFFFF000F
_0802935C: .4byte 0xF803FFFF
_08029360: .4byte gUnknown_0300327E
_08029364: .4byte 0xFFC00FFF
_08029368: .4byte gUnknown_03003458

	thumb_func_start sub_802936C
sub_802936C: @ 0x0802936C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r5, [r4, #0x30]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _08029390
	ldr r0, _080296BC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_08029390:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	beq _080293C6
	lsrs r0, r0, #0x1c
	ldr r1, _080296C0 @ =gUnknown_08050FD4
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #0x20
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080293C0:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080293C6:
	ldr r1, _080296C4 @ =0x000011EF
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _080293C0

	thumb_func_start sub_80293D0
sub_80293D0: @ 0x080293D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	beq _080293E8
	adds r0, r5, #0
	bl sub_802936C
_080293E8:
	ldr r1, _080296C8 @ =0xF803FFFF
	ldr r0, [r4, #0x2c]
	movs r2, #7
	ands r0, r1
	lsls r1, r6, #0x17
	lsrs r1, r1, #5
	orrs r1, r0
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	lsls r2, r2, #0x10
	bics r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r5]
	adds r0, r5, #0
	ldr r3, [r2, #0x40]
	lsls r1, r1, #6
	adds r2, r3, r2
	lsrs r1, r1, #0x18
	bl sub_803B8CC
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	adds r5, #0xb0
	strb r0, [r5, #6]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8029420
sub_8029420: @ 0x08029420
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0x80
	cmp r4, #0xd
	beq _0802947A
	bgt _0802945C
	cmp r4, #2
	beq _080294A6
	cmp r4, #3
	beq _08029456
	cmp r4, #4
	bne _080294E8
	ldr r1, [r3, #4]
	movs r0, #1
	lsls r1, r1, #0x10
	bne _08029446
	movs r0, #0
_08029446:
	movs r3, #1
	lsls r3, r3, #0xe
	ldr r1, [r2, #0x34]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x11
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x34]
_08029456:
	pop {r4}
	pop {r3}
	bx r3
_0802945C:
	cmp r4, #0xe
	beq _08029494
	cmp r4, #0x13
	beq _080294AE
	cmp r4, #0x18
	bne _080294E8
	ldr r0, [r3, #4]
	ldr r3, _080296CC @ =0xFFFF000F
	ldr r1, [r2, #0x2c]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ands r1, r3
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _08029456
_0802947A:
	ldr r1, [r3, #4]
	ldr r3, [r2, #0x30]
	ldr r4, _080296D0 @ =0xFFFF007F
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x10
	ands r3, r4
	orrs r1, r3
	str r1, [r2, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	adds r0, #0xb0
	strb r1, [r0, #6]
	b _08029456
_08029494:
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08029456
_080294A6:
	ldr r1, [r3, #4]
	bl sub_80293D0
	b _08029456
_080294AE:
	ldr r0, _080296D4 @ =gUnknown_03003458
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r3, #4]
	adds r2, r0, r2
	ldr r3, [r2, #0x1c]
	movs r4, #0x7f
	lsls r4, r4, #0x14
	lsls r1, r1, #0x19
	lsrs r1, r1, #5
	bics r3, r4
	orrs r1, r3
	movs r3, #1
	lsls r3, r3, #9
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	str r1, [r2, #0x1c]
	movs r2, #0x29
	lsls r2, r2, #5
	movs r1, #0
	adds r0, r0, r2
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	b _08029456
_080294E8:
	bl sub_801E2DA
	b _08029456

	non_word_aligned_thumb_func_start sub_80294EE
sub_80294EE: @ 0x080294EE
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r0, [r0, #4]
	ldr r1, [r4, #0x2c]
	lsrs r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #0xb
	bhs _0802959C
	add r3, pc, #0x4 @ =_08029518
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08029518:
	.byte 0x05
_08029519:
	.byte 0x05
_0802951A:
	.byte 0x1E
_0802951B:
	.byte 0x1E
_0802951C:
	.byte 0x1E
_0802951D:
	.byte 0x1E
_0802951E:
	.byte 0x41
_0802951F:
	.byte 0x30
_08029520:
	.byte 0x30
_08029521:
	.byte 0x30
_08029522:
	.byte 0x30, 0x00
loc_8029524:
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	bl sub_803C04C
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r0, r0, #3
	lsls r0, r0, #3
	lsrs r1, r1, #0x1d
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	movs r2, #1
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_8029556:
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #6
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_802957a:
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #1
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r0]
_0802959C:
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0x1f
	bmi _080295BE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl sub_803B8CA
_080295B8:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080295BE:
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080295B8

	thumb_func_start sub_80295CC
sub_80295CC: @ 0x080295CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080296D4 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldm r0!, {r6, r7}
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
	beq _080296B8
	ldr r0, _080296D8 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802960E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802960E:
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	lsrs r2, r0, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x10]
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne _080296B8
	ldr r1, [r4, #0x30]
	ldr r2, _080296DC @ =gUnknown_03003D24
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x1c
	beq _0802964E
	cmp r0, #1
	beq _0802965C
	cmp r0, #2
	beq _08029668
	cmp r0, #3
	bne _080296B8
	ldr r0, [r2]
	ldr r2, [r4, #0x5c]
	subs r0, r7, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
	b _08029674
_0802964E:
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	subs r0, r6, r0
	adds r1, r2, r1
	cmp r0, r1
	blt _080296B8
	b _08029674
_0802965C:
	ldr r0, [r2]
	ldr r1, [r4, #0x5c]
	subs r0, r7, r0
	cmp r0, r1
	blt _080296B8
	b _08029674
_08029668:
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	adds r0, r6, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
_08029674:
	ldr r0, _080296D8 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	ldr r1, [sp]
	asrs r0, r0, #2
	ldr r1, [r1, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0xd
	lsrs r2, r2, #0x1b
	cmp r2, r0
	bhi _080296B8
	lsls r2, r1, #8
	lsrs r2, r2, #0x1b
	cmp r2, r0
	blo _080296B8
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1a
_080296B2:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080296B8:
	movs r0, #0
	b _080296B2
	.align 2, 0
_080296BC: .4byte gUnknown_03003EB8
_080296C0: .4byte gUnknown_08050FD4
_080296C4: .4byte 0x000011EF
_080296C8: .4byte 0xF803FFFF
_080296CC: .4byte 0xFFFF000F
_080296D0: .4byte 0xFFFF007F
_080296D4: .4byte gUnknown_03003458
_080296D8: .4byte gUnknown_03003EA0
_080296DC: .4byte gUnknown_03003D24

	thumb_func_start sub_80296E0
sub_80296E0: @ 0x080296E0
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _080296F8
	movs r1, #0
_080296F8:
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802970A
	movs r1, #0
_0802970A:
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802971C
	movs r1, #0
_0802971C:
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0802972A
	movs r0, #1
	bx lr
_0802972A:
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_802972E
sub_802972E: @ 0x0802972E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #0xe
	bmi _08029822
	adds r0, r4, #0
	bl sub_801EBCA
	movs r6, #0
	ldr r1, [r5, #0x1c]
	mvns r6, r6
	movs r7, #0
	cmp r1, #0xe
	ldr r0, _08029B28 @ =gUnknown_03003EA0
	bne _08029824
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r1, [r7, #0x44]
	cmp r1, #0
	beq _08029768
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r6, r0, #3
_08029768:
	ldr r0, [r4, #0x7c]
	lsls r1, r6, #0x10
	lsls r2, r0, #4
	lsrs r2, r2, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x18]
	lsrs r1, r1, #0x10
	cmp r1, r2
	beq _080297C4
	ldr r1, _08029B2C @ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0x18]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080297C4
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080297C4:
	ldr r6, [r4, #0x2c]
	ldrh r0, [r6, #0x28]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne _080297E0
	ldr r2, [r5]
	lsls r2, r2, #0x1d
	bpl _080297E0
	movs r2, #1
	b _080297E2
_080297E0:
	movs r2, #0
_080297E2:
	cmp r0, r2
	beq _080298C6
	cmp r1, #2
	bne _080297F4
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl _080297F4
	movs r1, #1
	b _080297F6
_080297F4:
	movs r1, #0
_080297F6:
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _080298AC
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt _0802983A
	movs r2, #0xf
	lsls r2, r2, #0x14
	ldr r1, [r6, #0x34]
	b _08029826
_08029822:
	b _080298F0
_08029824:
	b _080298F8
_08029826:
	cmp r1, r2
	bge _0802983A
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt _0802983A
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _08029856
_0802983A:
	lsls r0, r0, #0x16
	bmi _080298AC
	ldr r0, _08029B28 @ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r6]
	b _080298AC
_08029856:
	lsls r0, r0, #0x16
	bpl _08029876
	ldr r0, _08029B28 @ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
_08029876:
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
_080298AC:
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080298C6
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080298C6:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080298F0
	ldr r1, _08029B2C @ =gUnknown_03003454
	movs r2, #2
	ldr r0, [r1]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0xb
	lsls r0, r0, #7
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	bics r0, r2
	strh r0, [r1, #0x18]
	movs r0, #4
	str r0, [r5, #0x1c]
_080298F0:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080298F8:
	cmp r1, #0x10
	bne _080299E2
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08029B30 @ =0x00000F42
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080298F0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	lsrs r1, r0, #0x17
	beq _08029948
	ldr r6, _08029B34 @ =gUnknown_0300345C
	lsls r0, r0, #1
	lsrs r0, r0, #0x18
	ldr r1, [r6]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq _08029948
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08029948:
	ldr r1, _08029B38 @ =0xE00FFFFF
	ldr r0, [r5, #0x10]
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq _080298F0
	ldr r0, _08029B2C @ =gUnknown_03003454
	movs r6, #4
	ldr r2, [r0]
	add r0, pc, #0x1DC @ =_08029B3C
	str r0, [sp, #8]
	str r2, [sp, #4]
	b _08029970
_08029966:
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs _0802997C
_08029970:
	ldr r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08029966
_0802997C:
	ldr r0, _08029B58 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r6, #2
	adds r1, r1, r2
	adds r7, r1, #0
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0xfd
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	ldr r0, [sp, #8]
	adds r1, r7, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	b _080299E4
_080299E2:
	b _08029A08
_080299E4:
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08029B2C @ =gUnknown_03003454
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _08029B5C @ =0xFFFF000F
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b _080298F0
_08029A08:
	cmp r1, #9
	beq _08029A10
_08029A0C:
	bl sub_802AC4E
_08029A10:
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bpl _08029A0C
	ldr r1, [r4, #0x2c]
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo _08029A0C
	lsls r1, r0, #0xf
	bpl _08029A0C
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq _08029A6C
_08029A68:
	bl _0802A990
_08029A6C:
	lsls r1, r0, #5
	lsrs r1, r1, #0x17
	subs r1, #0x27
	cmp r1, #0x17
	bhs _08029A80
	add r3, pc, #0xC @ =_08029A84
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08029A80:
	b _08029A68
	.align 2, 0
_08029A84:
	.byte 0x18, 0x00
_08029A86:
	.byte 0x7D, 0x00
_08029A88:
	.byte 0xC0, 0x00
_08029A8A:
	.byte 0xC0, 0x00
_08029A8C:
	.byte 0x87, 0x07
_08029A8E:
	.byte 0x87, 0x07
_08029A90:
	.byte 0x87, 0x07
_08029A92:
	.byte 0x46, 0x01
_08029A94:
	.byte 0x87, 0x07
_08029A96:
	.byte 0x87, 0x07
_08029A98:
	.byte 0x87, 0x07
_08029A9A:
	.byte 0xB5, 0x03
_08029A9C:
	.byte 0x87, 0x07
_08029A9E:
	.byte 0x03, 0x01
_08029AA0:
	.byte 0x89, 0x01
_08029AA2:
	.byte 0xE3, 0x02
_08029AA4:
	.byte 0x87, 0x07
_08029AA6:
	.byte 0x87, 0x07
_08029AA8:
	.byte 0x87, 0x07
_08029AAA:
	.byte 0xF8, 0x03
_08029AAC:
	.byte 0x88, 0x04
_08029AAE:
	.byte 0x13, 0x05
_08029AB0:
	.byte 0x6F, 0x06
loc_8029ab2:
	ldr r0, _08029B60 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029AD4
	adds r0, r7, #0
	bl sub_8031D00
_08029AD4:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029B64 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]

	thumb_func_start sub_8029B18
sub_8029B18: @ 0x08029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b _08029B68
	.align 2, 0
_08029B28: .4byte gUnknown_03003EA0
_08029B2C: .4byte gUnknown_03003454
_08029B30: .4byte 0x00000F42
_08029B34: .4byte gUnknown_0300345C
_08029B38: .4byte 0xE00FFFFF
_08029B3C: .4byte 0x6D656E45
_08029B40: .4byte 0x65442079
_08029B44: .4byte 0x20687461
_08029B48: .4byte 0x69726353
_08029B4C: .4byte 0x47207470
_08029B50: .4byte 0x70756F72
_08029B54: .4byte 0x00000000
_08029B58: .4byte gUnknown_03003468
_08029B5C: .4byte 0xFFFF000F
_08029B60: .4byte gUnknown_0300346C
_08029B64: .4byte gUnknown_03003458
_08029B68:
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029A80
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029A68
loc_8029b7c:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029B9E
	adds r0, r7, #0
	bl sub_802D2E8
_08029B9E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029C86
loc_8029c02:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029C24
	adds r0, r7, #0
	bl sub_802C884
_08029C24:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
_08029C86:
	b _08029D92
loc_8029c88:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029CAA
	adds r0, r7, #0
	bl sub_8031D00
_08029CAA:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029D92
loc_8029d0e:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029D30
	adds r0, r7, #0
	bl sub_803772C
_08029D30:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
_08029D92:
	b _08029EFC
loc_8029d94:
	lsls r0, r0, #0x1d
	bne _08029E1E
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029DBA
	adds r0, r7, #0
	bl sub_8031D00
_08029DBA:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029EFC
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029EFC
_08029E1E:
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _08029EFC
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029E4A
	adds r0, r6, #0
	bl sub_8031D00
_08029E4A:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029EB2
	bics r0, r2
	str r0, [r4, #0x7c]
_08029EB2:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029ED4
	adds r0, r6, #0
	bl sub_8031D00
_08029ED4:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r3, #1
	b _08029EFE
_08029EFC:
	b _0802A0DA
_08029EFE:
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _08029F60 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029F38
	bics r0, r2
	str r0, [r4, #0x7c]
_08029F38:
	ldr r0, _08029F5C @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029F64
	adds r0, r6, #0
	bl sub_8031D00
	b _08029F64
	.align 2, 0
_08029F5C: .4byte gUnknown_0300346C
_08029F60: .4byte gUnknown_03003458
_08029F64:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029FC4
	bics r0, r2
	str r0, [r4, #0x7c]
_08029FC4:
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029FE6
	adds r0, r6, #0
	bl sub_8031D00
_08029FE6:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A0DA
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A0DA
loc_802a048:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A0DC
	cmp r0, #1
	beq _0802A136
	cmp r0, #2
	bne _0802A0DA
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A078
	adds r0, r7, #0
	bl sub_802C884
_0802A078:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A0DA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A0DA:
	b _0802A1EA
_0802A0DC:
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A0FE
	adds r0, r7, #0
	bl sub_8031D00
_0802A0FE:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A138
_0802A136:
	b _0802A166
_0802A138:
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A1EA
_0802A166:
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A188
	adds r0, r7, #0
	bl sub_802C884
_0802A188:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A1EA:
	b _0802A300
loc_802a1ec:
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A20E
	adds r0, r7, #0
	bl sub_802D2E8
_0802A20E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A300
loc_802a272:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A302
	cmp r0, #1
	bne _0802A300
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A29E
	adds r0, r7, #0
	bl sub_802DFF4
_0802A29E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A300:
	b _0802A420
_0802A302:
	ldr r0, _0802A374 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A324
	adds r0, r7, #0
	bl sub_802BFBC
_0802A324:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	bics r1, r0
	b _0802A378
	.align 2, 0
_0802A370: .4byte gUnknown_03003458
_0802A374: .4byte gUnknown_0300346C
_0802A378:
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r2, r2, r3
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A420
loc_802a392:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A422
	cmp r0, #1
	bne _0802A420
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A3BE
	adds r0, r7, #0
	bl sub_803AE68
_0802A3BE:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A420:
	b _0802A536
_0802A422:
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A444
	adds r0, r7, #0
	bl sub_802C884
_0802A444:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #5
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A536
loc_802a4a8:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A538
	cmp r0, #1
	bne _0802A536
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A4D4
	adds r0, r7, #0
	bl sub_802C884
_0802A4D4:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #6
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A536:
	b _0802A626
_0802A538:
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A626
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A564
	adds r0, r6, #0
	bl sub_802BA4C
_0802A564:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x14]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A5CC
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A5CC:
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A5EE
	adds r0, r6, #0
	bl sub_802BA4C
_0802A5EE:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A628
_0802A626:
	b _0802A838
_0802A628:
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A652
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A652:
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A674
	adds r0, r6, #0
	bl sub_802BA4C
_0802A674:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A6D4
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A6D4:
	ldr r0, _0802A758 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A6F6
	adds r0, r6, #0
	bl sub_802BA4C
_0802A6F6:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A838
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A838
	.align 2, 0
_0802A758: .4byte gUnknown_0300346C
_0802A75C: .4byte gUnknown_03003458
loc_802a760:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A83A
	cmp r0, #1
	beq _0802A83C
	cmp r0, #2
	bne _0802A838
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A838
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A79A
	adds r0, r6, #0
	bl sub_803AB80
_0802A79A:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0xc]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A802
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A802:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A824
	adds r0, r6, #0
	bl sub_803AB80
_0802A824:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0802A83E
_0802A838:
	b _0802A990
_0802A83A:
	b _0802A99E
_0802A83C:
	b _0802AA24
_0802A83E:
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A88C
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A88C:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A8AE
	adds r0, r6, #0
	bl sub_803AB80
_0802A8AE:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A90E
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A90E:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A930
	adds r0, r6, #0
	bl sub_803AB80
_0802A930:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A990
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A990:
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_0802A99A:
	bl _080298F0
_0802A99E:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A9C0
	adds r0, r7, #0
	bl sub_802C884
_0802A9C0:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #7
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A990
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A990
_0802AA24:
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A990
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AA50
	adds r0, r6, #0
	bl sub_802BA4C
_0802AA50:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x10]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AAB8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AAB8:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AADA
	adds r0, r6, #0
	bl sub_802BA4C
_0802AADA:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AB3A
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AB3A:
	ldr r0, _0802AB58 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	b _0802AB60
	.align 2, 0
_0802AB58: .4byte gUnknown_0300346C
_0802AB5C: .4byte gUnknown_03003458
_0802AB60:
	beq _0802AB68
	adds r0, r6, #0
	bl sub_802BA4C
_0802AB68:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AF70 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802ABC8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802ABC8:
	ldr r0, _0802AF74 @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802ABEA
	adds r0, r6, #0
	bl sub_802BA4C
_0802ABEA:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AF70 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	beq _0802AC48
	b _0802A990
_0802AC48:
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A990

	non_word_aligned_thumb_func_start sub_802AC4E
sub_802AC4E: @ 0x0802AC4E
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	bne _0802AC56
_0802AC54:
	b _0802A99A
_0802AC56:
	ldr r1, _0802AF78 @ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _0802AC54
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl _0802AC54
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0802A99A

	thumb_func_start sub_802AC74
sub_802AC74: @ 0x0802AC74
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	rsbs r4, r2, #0
	subs r3, r1, r3
	cmp r2, #0
	blt _0802AC8A
	adds r4, r2, #0
_0802AC8A:
	rsbs r5, r3, #0
	cmp r3, #0
	blt _0802AC92
	adds r5, r3, #0
_0802AC92:
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble _0802ACB4
	cmp r2, #0
	ble _0802ACAE
	str r1, [r0, #0x7c]
_0802ACAA:
	pop {r4, r5, r6, r7}
	bx lr
_0802ACAE:
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACB4:
	cmp r5, r4
	ble _0802ACD0
	cmp r3, #0
	ble _0802ACC6
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACC6:
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD0:
	cmp r2, #0
	ble _0802ACD8
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD8:
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA

	non_word_aligned_thumb_func_start sub_802ACDE
sub_802ACDE: @ 0x0802ACDE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	movs r7, #0
	movs r6, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0802AD50
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bne _0802AD50
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1e
	beq _0802AD30
	adds r0, r4, #0
	ldr r1, _0802AF70 @ =gUnknown_03003458
	adds r0, #0x58
	cmp r2, #1
	ldr r1, [r1]
	beq _0802ADD8
	cmp r2, #2
	bne _0802AD50
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x3c
	bhs _0802ADF4
	movs r6, #1
	b _0802AEBC
_0802AD30:
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AD58
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r5, #0x34]
_0802AD50:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802AD58:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	ble _0802AD64
	movs r0, #0
	b _0802AD6A
_0802AD64:
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0802AD6A:
	ldr r1, [r5, #0x34]
	lsls r2, r1, #0x12
	lsrs r2, r2, #0x1c
	adds r0, r2, r0
	bpl _0802AD78
	adds r0, #0xc
	b _0802AD7E
_0802AD78:
	cmp r0, #0xc
	blt _0802AD7E
	subs r0, #0xc
_0802AD7E:
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r3
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	beq _0802AD50
	lsrs r2, r1, #0x18
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C @ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802ADA8
	ldr r0, _0802AF80 @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802ADA8:
	ldr r0, _0802AF84 @ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802ADD6:
	b _0802AD50
_0802ADD8:
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x32
	bls _0802ADF6
	movs r0, #1
	str r0, [sp, #8]
	b _0802AE26
_0802ADF4:
	b _0802AEA8
_0802ADF6:
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AE0C
	movs r7, #1
	b _0802AE26
_0802AE0C:
	cmp r0, #0x75
	ble _0802AE22
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	subs r1, #0xff
	subs r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x34]
	b _0802AE26
_0802AE22:
	movs r0, #1
	str r0, [sp, #8]
_0802AE26:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0802AEBC
	ldr r0, _0802AF70 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802ADD6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C @ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AE78
	ldr r0, _0802AF80 @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AE78:
	ldr r0, _0802AF84 @ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AEA6:
	b _0802AD50
_0802AEA8:
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AEBE
	movs r7, #1
_0802AEBC:
	b _0802AED0
_0802AEBE:
	cmp r0, #0x75
	ble _0802AECE
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r5, #0x34]
	b _0802AED0
_0802AECE:
	movs r6, #1
_0802AED0:
	cmp r6, #0
	beq _0802AF88
	ldr r1, _0802AF70 @ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #4
	lsrs r0, r0, #0x1c
	adds r0, #2
	bpl _0802AEFA
	adds r0, #4
	b _0802AF00
_0802AEFA:
	cmp r0, #4
	blt _0802AF00
	subs r0, #4
_0802AF00:
	movs r2, #0xf
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	str r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802AEA6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C @ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AF40
	ldr r0, _0802AF80 @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AF40:
	ldr r0, _0802AF84 @ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AF6E:
	b _0802AD50
	.align 2, 0
_0802AF70: .4byte gUnknown_03003458
_0802AF74: .4byte gUnknown_0300346C
_0802AF78: .4byte gUnknown_03003478
_0802AF7C: .4byte gUnknown_0300327E
_0802AF80: .4byte gUnknown_03003454
_0802AF84: .4byte gUnknown_03003E88
_0802AF88:
	cmp r7, #0
	beq _0802AEA6
	ldr r1, _0802B268 @ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0802AF6E
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0802AFB8
	ldr r0, _0802B26C @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AFB8:
	ldr r0, _0802B270 @ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x21
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802B26C @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0802AD50

	non_word_aligned_thumb_func_start sub_802AFEA
sub_802AFEA: @ 0x0802AFEA
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0802B016
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_0802B016:
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl _0802B036
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r2, r2, #0xa
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x34]
_0802B036:
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B03E
sub_802B03E: @ 0x0802B03E
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x2c]
	bx lr

	non_word_aligned_thumb_func_start sub_802B04A
sub_802B04A: @ 0x0802B04A
	adds r0, #0x80
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_802B054
sub_802B054: @ 0x0802B054
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_801E124
	ldr r1, _0802B274 @ =gUnknown_03003478
	movs r0, #0x10
	ldr r1, [r1]
	ands r1, r0
	beq _0802B070
	ldr r0, _0802B278 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
_0802B070:
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq _0802B098
	cmp r0, #0x10
	beq _0802B098
	adds r0, r4, #0
	bl sub_802936C
_0802B098:
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_52
nullsub_52: @ 0x0802B0A0
	bx lr

	non_word_aligned_thumb_func_start sub_802B0A2
sub_802B0A2: @ 0x0802B0A2
	ldr r0, _0802B27C @ =gUnknown_03003E98
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0802B0B4
	movs r0, #0
_0802B0B4:
	ldr r1, _0802B280 @ =gUnknown_0300345C
	adds r0, #0x42
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B0CA
sub_802B0CA: @ 0x0802B0CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F65C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _0802B284 @ =0x8007FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x1c]
	cmp r1, #9
	bne _0802B10A
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bmi _0802B10A
	ldr r1, _0802B268 @ =gUnknown_03003458
	movs r2, #0x29
	ldr r1, [r1]
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r2, [r1, #2]
	adds r2, #0xff
	strb r2, [r1, #2]
_0802B10A:
	movs r1, #0xf
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802B114
sub_802B114: @ 0x0802B114
	push {r4, r5, r6, lr}
	ldr r6, _0802B268 @ =gUnknown_03003458
	adds r4, r0, #0
	ldr r0, [r6]
	sub sp, #8
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	bhi _0802B150
	lsls r0, r1, #9
	bpl _0802B1C4
_0802B150:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r1, [r0, #0x38]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _0802B198
	movs r2, #7
	ldr r1, [r5, #0x14]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x70]
	asrs r2, r1, #1
	str r1, [r4, #0x74]
	adds r1, r1, r2
	str r1, [r4, #0x70]
_0802B198:
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6]
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r4, #0x90
	adds r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0802B1C4:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802B1CC
sub_802B1CC: @ 0x0802B1CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802B268 @ =gUnknown_03003458
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x1c]
	cmp r1, #9
	beq _0802B25E
	ldr r1, [r4, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne _0802B25E
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _0802B25E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r5, #0x2c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r2, r0, #1
	strh r2, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x14]
_0802B25E:
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0802B268: .4byte gUnknown_03003458
_0802B26C: .4byte gUnknown_03003454
_0802B270: .4byte gUnknown_03003E88
_0802B274: .4byte gUnknown_03003478
_0802B278: .4byte gUnknown_030034F8
_0802B27C: .4byte gUnknown_03003E98
_0802B280: .4byte gUnknown_0300345C
_0802B284: .4byte 0x8007FFFF

	thumb_func_start sub_802B288
sub_802B288: @ 0x0802B288
	push {r4, lr}
	adds r4, r0, #0
	bne _0802B2A2
	movs r0, #0xff
	adds r0, #0xfd
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802B2A2
	adds r0, r4, #0
_0802B29C:
	pop {r4}
	pop {r3}
	bx r3
_0802B2A2:
	adds r0, r4, #4
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0x7c
	bl sub_80143E0
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r3, _0802B640 @ =sub_80143E0
	bl sub_803C3A4
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #2]
	movs r0, #0
_0802B2CA:
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x24]
	blo _0802B2CA
	movs r0, #0
_0802B2E0:
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x30]
	blo _0802B2E0
	adds r0, r4, #0
	b _0802B29C

	thumb_func_start sub_802B2F8
sub_802B2F8: @ 0x0802B2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
_0802B300:
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0802B31E
	ldr r0, _0802B644 @ =gUnknown_03003EB8
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x24]
_0802B31E:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0802B300
	movs r4, #0
_0802B32A:
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0802B348
	ldr r0, _0802B644 @ =gUnknown_03003EB8
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
_0802B348:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0802B32A
	ldr r1, [r5, #4]
	adds r0, r5, #4
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B382
sub_802B382: @ 0x0802B382
	adds r1, r0, #0
	ldrb r1, [r1, #2]
	movs r0, #1
	cmp r1, #0
	bne _0802B38E
	movs r0, #0
_0802B38E:
	bx lr

	thumb_func_start sub_802B390
sub_802B390: @ 0x0802B390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #0
	beq _0802B3A2
	adds r0, r4, #0
	bl sub_802B2F8
_0802B3A2:
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r3, _0802B648 @ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #4
	bl sub_8014436
	cmp r6, #0
	beq _0802B3D0
	adds r0, r4, #0
	bl sub_803DA18
_0802B3D0:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B3D6
sub_802B3D6: @ 0x0802B3D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	sub sp, #0x14
	strb r0, [r6, #2]
	movs r0, #0
	adds r1, r6, #0
	adds r1, #0xff
	movs r5, #0
	adds r1, #0xc9
	strb r0, [r6, #1]
	str r1, [sp, #0x10]
_0802B3EE:
	ldr r0, _0802B644 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r6
	adds r7, #0xff
	adds r7, #0xc1
	ldr r2, _0802B64C @ =gUnknown_0805108A
	str r0, [r7, #0x24]
	lsls r1, r5, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x24]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r7, #0x24]
	movs r1, #3
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xa
	movs r3, #0
	bics r2, r1
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x14
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B43C
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B43C:
	cmp r5, #2
	bne _0802B468
	ldr r0, [sp, #0x10]
	lsls r2, r5, #0xb
	ldr r4, [r0, #0x24]
	ldrh r1, [r4, #0x28]
	bics r1, r2
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi _0802B460
	adds r0, r4, #0
	bl sub_804025C
_0802B460:
	ldr r0, [r4]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r4]
_0802B468:
	movs r1, #1
	ldr r0, [r7, #0x24]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B3EE
	movs r4, #0
	movs r7, #0xf0
_0802B47E:
	ldr r0, _0802B644 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r4, #2
	adds r5, r1, r6
	adds r5, #0xff
	adds r5, #0xc1
	ldr r1, _0802B650 @ =0x00000CAE
	str r0, [r5, #0x30]
	adds r1, r4, r1
	bl sub_800065C
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #0x13
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B4C8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B4C8:
	movs r1, #1
	ldr r0, [r5, #0x30]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0802B47E
	ldr r0, _0802B644 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r6, #0
	adds r4, #0xff
	adds r4, #0xc1
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x38]
	bl sub_80007A0
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r4, #0x38]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r4, #0x38]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B522
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B522:
	ldr r0, [r4, #0x38]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80401E4
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	adds r0, r6, #4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r5, #0xff
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B654 @ =0x000004DA
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0xa0
	str r2, [sp]
	adds r0, r6, #0
	str r1, [sp, #8]
	movs r1, #0
	adds r0, #0x7c
	movs r2, #0
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B658 @ =0x000004DB
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C @ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r6, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0xf4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C @ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r4, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0x78
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B660 @ =0x000004D9
	bl sub_80138E2
	ldr r0, _0802B664 @ =gUnknown_030034F8
	movs r1, #1
	ldr r0, [r0]
	bl sub_802459E
	ldr r0, _0802B668 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r0, _0802B66C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl _08020AB6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802B640: .4byte sub_80143E0
_0802B644: .4byte gUnknown_03003EB8
_0802B648: .4byte sub_8014436
_0802B64C: .4byte gUnknown_0805108A
_0802B650: .4byte 0x00000CAE
_0802B654: .4byte 0x000004DA
_0802B658: .4byte 0x000004DB
_0802B65C: .4byte 0x0000FFFF
_0802B660: .4byte 0x000004D9
_0802B664: .4byte gUnknown_030034F8
_0802B668: .4byte gUnknown_0300345C
_0802B66C: .4byte gUnknown_03003458

	thumb_func_start sub_802B670
sub_802B670: @ 0x0802B670
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BA04 @ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	adds r3, r2, #0
	ldr r0, [r1, #0x14]
	lsls r5, r0, #0x1c
	bmi _0802B684
	ldrh r3, [r1, #6]
_0802B684:
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x1c
	lsls r1, r5, #0x1e
	movs r3, #3
	cmp r1, #0
	ldr r0, _0802BA08 @ =gUnknown_030034F8
	bge _0802B6A4
	strb r2, [r4, #1]
	strb r2, [r4]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
	b _0802B6B4
_0802B6A4:
	lsls r1, r5, #0x1f
	bpl _0802B6B4
	strb r2, [r4, #1]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
_0802B6B4:
	lsls r0, r5, #0x1a
	bmi _0802B6BC
	lsls r0, r5, #0x1b
	bpl _0802B6EE
_0802B6BC:
	ldr r0, _0802BA0C @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strb r0, [r4]
	ldrb r0, [r4]
	adds r4, #0xff
	muls r0, r3, r0
	lsrs r0, r0, #1
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	adds r4, #0xc1
	ldr r0, [r4, #0x38]
	bl sub_8040034
_0802B6EE:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802B6F4
sub_802B6F4: @ 0x0802B6F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	lsls r0, r0, #0x12
	sub sp, #0x1c
	str r0, [sp, #8]
	ldrb r6, [r4, #1]
	movs r5, #0xd
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 @ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	adds r1, r5, #0
	bl sub_803B92C
	add r2, pc, #0x2E4 @ =_0802BA14
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r1, #0xa0
	subs r0, r1, r0
	subs r0, #0x38
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r0, #0x38
	lsls r1, r0, #0x10
	movs r5, #0
	asrs r1, r1, #0x10
	ldr r7, _0802BA1C @ =gUnknown_08051090
	str r1, [sp, #0x18]
_0802B74E:
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B74E
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	adds r0, r6, #0
	adds r0, #0x4d
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xc1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x38]
	mov r1, sp
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x3c
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x46
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	adds r6, #0x50
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r5, r2, #0
	movs r1, #0x90
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r2, r5, #0
	movs r1, #0xbb
	bl sub_803B8CE
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x21C @ =_0802BA14
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x10
	movs r5, #0
	movs r6, #0x28
	str r1, [sp, #0x10]
_0802B804:
	ldr r1, [sp, #0x10]
	lsls r0, r5, #6
	adds r0, r0, r1
	subs r0, #0x60
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B804
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B8A8
	movs r0, #2
	strb r0, [r4, #2]
	movs r5, #0
	mov r7, sp
_0802B842:
	ldr r1, _0802BA1C @ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B842
	movs r5, #0
	mov r7, sp
_0802B870:
	lsls r0, r5, #6
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B870
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	ldr r0, [sp, #0x14]
	mov r1, sp
	ldr r0, [r0, #0x38]
	bl sub_8040034
_0802B8A8:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802B8B0
sub_802B8B0: @ 0x0802B8B0
	push {r4, r5, r6, r7, lr}
	movs r6, #0x1d
	lsls r6, r6, #0x12
	sub sp, #0xc
	str r6, [sp, #8]
	ldrb r5, [r0, #1]
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5, r0
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 @ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	lsls r7, r0, #2
	adds r0, r7, #0
	bl sub_803B92C
	add r2, pc, #0x12C @ =_0802BA14
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	movs r5, #0
_0802B8F0:
	ldr r1, _0802BA1C @ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	mov r1, sp
	adds r0, r0, r6
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B8F0
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	muls r0, r3, r0
	lsrs r0, r0, #1
	adds r0, r0, r6
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	movs r0, #0xff
	adds r0, #0xf9
	ldr r0, [r0, r4]
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x7c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	adds r5, r1, #0
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	movs r2, #0x46
	adds r1, r5, #0
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x90
	lsls r1, r1, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r6, #0xbb
	lsls r1, r6, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r7, #0
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x74 @ =_0802BA14
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r5, #0
	movs r1, #0x14
	subs r6, r1, r0
	mov r7, sp
_0802B9B0:
	lsls r0, r5, #6
	adds r0, r6, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x28
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B9B0
	ldrb r0, [r4, #1]
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B9FA
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0802B9F4
	movs r0, #2
	bl sub_8018386
_0802B9F4:
	adds r0, r4, #0
	bl sub_802B2F8
_0802B9FA:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802BA04: .4byte gUnknown_03003444
_0802BA08: .4byte gUnknown_030034F8
_0802BA0C: .4byte gUnknown_0300345C
_0802BA10: .4byte gUnknown_080414B8
_0802BA14: .4byte 0x00010000
_0802BA18: .4byte 0x00000000
_0802BA1C: .4byte gUnknown_08051090

	thumb_func_start sub_802BA20
sub_802BA20: @ 0x0802BA20
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _0802BA38
	cmp r1, #1
	beq _0802BA3E
	cmp r1, #2
	beq _0802BA44
	cmp r1, #3
	bne _0802BA38
	bl sub_802B8B0
_0802BA38:
	add sp, #4
	pop {r3}
	bx r3
_0802BA3E:
	bl sub_802B6F4
	b _0802BA38
_0802BA44:
	bl sub_802B670
	b _0802BA38
	.align 2, 0

	thumb_func_start sub_802BA4C
sub_802BA4C: @ 0x0802BA4C
	push {r4, lr}
	adds r4, r0, #0
	bne _0802BA64
	movs r0, #0x40
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802BA64
	adds r0, r4, #0
_0802BA5E:
	pop {r4}
	pop {r3}
	bx r3
_0802BA64:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802BCD4 @ =_0803E32C
	str r0, [r4]
	adds r0, r4, #0
	b _0802BA5E

	non_word_aligned_thumb_func_start sub_802BA72
sub_802BA72: @ 0x0802BA72
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BCD4 @ =_0803E32C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802BA8E
	adds r0, r4, #0
	bl sub_803DA18
_0802BA8E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BA94
sub_802BA94: @ 0x0802BA94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r6, r4, #0
	str r3, [r4, #0x20]
	adds r6, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne _0802BADE
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802BAEC
_0802BADE:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802BAEC:
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802BB80
	add r3, pc, #0x4 @ =_0802BB0C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802BB0C:
	.byte 0x02
_0802BB0D:
	.byte 0x1E
_0802BB0E:
	.byte 0x3A
_0802BB0F:
	.byte 0x56
_0802BB10:
	.byte 0x71, 0x00
loc_802bb12:
	movs r1, #0xf
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #7
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xa
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xca
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BB80
	ldr r0, _0802BCDC @ =gUnknown_03003D2C
	movs r1, #0xc
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802BB80
loc_802bb4a:
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xf
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xd0
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BB80
	ldr r0, _0802BCDC @ =gUnknown_03003D2C
	movs r1, #0x11
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
_0802BB80:
	b _0802BC12
loc_802bb82:
	movs r1, #5
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0x14
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xcd
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC12
	ldr r0, _0802BCDC @ =gUnknown_03003D2C
	movs r1, #0x15
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802BC12
loc_802bbba:
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #0x15
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #5
	movs r1, #0x3c
	strb r0, [r1, r4]
	ldr r0, _0802BCE0 @ =0x00000337
	movs r2, #0xff
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802BC12
loc_802bbf0:
	movs r0, #3
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0x84
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	movs r2, #0xff
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802BC12:
	ldr r0, _0802BCE4 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802BC5A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802BC5A:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802BC98
	ldr r0, _0802BCE4 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802BC88
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802BC88
	ldr r0, _0802BCE8 @ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800CD58
_0802BC88:
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802BC98
	orrs r0, r7
	str r0, [r5]
_0802BC98:
	ldr r1, [r4, #0x34]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0802BCC4
	ldr r0, _0802BCEC @ =gUnknown_0300345C
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
_0802BCBC:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802BCC4:
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b _0802BCBC
	.align 2, 0
_0802BCD4: .4byte _0803E32C
_0802BCD8: .4byte gUnknown_03003D20
_0802BCDC: .4byte gUnknown_03003D2C
_0802BCE0: .4byte 0x00000337
_0802BCE4: .4byte gUnknown_03003EB8
_0802BCE8: .4byte gUnknown_03003EA0
_0802BCEC: .4byte gUnknown_0300345C

	thumb_func_start sub_802BCF0
sub_802BCF0: @ 0x0802BCF0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	ldr r7, _0802BF98 @ =gUnknown_03003EB8
	beq _0802BD72
	adds r6, r4, #4
	cmp r0, #1
	beq _0802BDD4
	cmp r0, #2
	bne _0802BD6A
	ldr r0, _0802BF9C @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802BD2C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802BD2C:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802BE20
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802BD52
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8001338
_0802BD52:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BD6A
	bl sub_8000914
_0802BD6A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802BD72:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0802BD6A
	lsls r0, r1, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802BDEA
	add r3, pc, #0x4 @ =_0802BD8C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802BD8C:
	.byte 0x02
_0802BD8D:
	.byte 0x2E
_0802BD8E:
	.byte 0x0D
_0802BD8F:
	.byte 0x18
_0802BD90:
	.byte 0x24, 0x00
loc_802bd92:
	movs r2, #0x11
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bda8:
	movs r2, #7
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bdbe:
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
_0802BDD4:
	b _0802BEA2
loc_802bdd6:
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
_0802BDEA:
	lsls r1, r1, #0x18
	ldr r2, _0802BFA0 @ =gUnknown_0300328A
	lsrs r1, r1, #0x18
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	ldr r2, _0802BFA4 @ =gUnknown_0300328E
	str r0, [r4, #0x1c]
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x20]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	ldr r0, _0802BFA8 @ =gUnknown_03003292
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, _0802BFAC @ =gUnknown_03003296
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	b _0802BE22
_0802BE20:
	b _0802BEE2
_0802BE22:
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r2, #4
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802BE82
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802BE82:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_0802BEA0:
	b _0802BD6A
_0802BEA2:
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802BEDA
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A
_0802BEDA:
	adds r1, r5, #0
	bl sub_803FF24
	b _0802BD6A
_0802BEE2:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BEA0
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A

	thumb_func_start sub_802BEFC
sub_802BEFC: @ 0x0802BEFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r5, _0802BFB0 @ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802BF2E
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802BF2E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BF34
sub_802BF34: @ 0x0802BF34
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802BF90
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _0802BF90
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0, r4
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4, r0
	lsrs r2, r4, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_0802BF90:
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0802BF98: .4byte gUnknown_03003EB8
_0802BF9C: .4byte gUnknown_03003EA0
_0802BFA0: .4byte gUnknown_0300328A
_0802BFA4: .4byte gUnknown_0300328E
_0802BFA8: .4byte gUnknown_03003292
_0802BFAC: .4byte gUnknown_03003296
_0802BFB0: .4byte gUnknown_0300345C

	thumb_func_start sub_802BFB4
sub_802BFB4: @ 0x0802BFB4
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_802BFBC
sub_802BFBC: @ 0x0802BFBC
	push {r4, lr}
	adds r4, r0, #0
	bne _0802BFD4
	movs r0, #0x4c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802BFD4
	adds r0, r4, #0
_0802BFCE:
	pop {r4}
	pop {r3}
	bx r3
_0802BFD4:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802C3BC @ =_0803E658
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	b _0802BFCE

	non_word_aligned_thumb_func_start sub_802BFEA
sub_802BFEA: @ 0x0802BFEA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802C3BC @ =_0803E658
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C00A
	ldr r0, _0802C3C0 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_0802C00A:
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C01C
	adds r0, r4, #0
	bl sub_803DA18
_0802C01C:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C022
sub_802C022: @ 0x0802C022
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r5, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r6, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r6, r6, #0xb
	orrs r6, r7
	str r6, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	adds r3, r5, #1
	bne _0802C064
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _0802C072
_0802C064:
	ldr r1, [r4, #0x34]
	lsls r3, r5, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_0802C072:
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r2, r1
	lsls r1, r2, #6
	lsrs r3, r1, #0x1c
	ldr r5, _0802C3C4 @ =gUnknown_0300329A
	lsls r3, r3, #1
	str r2, [r4, #0x34]
	ldrh r3, [r5, r3]
	lsrs r7, r1, #0x1c
	ldr r1, _0802C3C8 @ =gUnknown_03003D20
	str r3, [r4, #0x38]
	ldrb r1, [r1]
	movs r3, #1
	movs r5, #7
	adds r6, r4, #0
	adds r6, #0x40
	lsls r5, r5, #0x11
	lsls r3, r3, #0xb
	cmp r7, #0
	mov ip, r1
	beq _0802C0E2
	cmp r7, #1
	beq _0802C17E
	cmp r7, #2
	bne _0802C17C
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1A4
	cmp r7, #1
	beq _0802C1A6
	cmp r7, #2
	beq _0802C1A8
	cmp r7, #3
	bne _0802C1AA
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC @ =0xFFFE0000
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C1AA
_0802C0E2:
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	adds r7, r1, #0
	str r1, [r4, #0x44]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	beq _0802C14C
	cmp r1, #1
	beq _0802C118
	cmp r1, #2
	beq _0802C132
	cmp r1, #3
	bne _0802C166
	subs r1, r7, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC @ =0xFFFE0000
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C118:
	adds r1, r7, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C132:
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC @ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C14C:
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C166:
	movs r0, #3
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C17C
	subs r1, r0, #5
	ldr r0, _0802C3D0 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802C17C:
	b _0802C276
_0802C17E:
	b _0802C180
_0802C180:
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1F2
	cmp r7, #1
	beq _0802C1BE
	cmp r7, #2
	beq _0802C1D8
	cmp r7, #3
	bne _0802C20C
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC @ =0xFFFE0000
	b _0802C1AC
_0802C1A4:
	b _0802C258
_0802C1A6:
	b _0802C224
_0802C1A8:
	b _0802C23E
_0802C1AA:
	b _0802C272
_0802C1AC:
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1BE:
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1D8:
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC @ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1F2:
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C20C:
	movs r0, #2
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C276
	rsbs r1, r0, #0
	ldr r0, _0802C3D0 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b _0802C276
_0802C224:
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C23E:
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC @ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C258:
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C272:
	movs r0, #3
	strb r0, [r6, #8]
_0802C276:
	ldr r5, _0802C3C0 @ =gUnknown_03003EB8
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi _0802C2D4
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_80012F0
_0802C2D4:
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7, r0
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802C336
	orrs r1, r6
	str r1, [r0]
_0802C336:
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7, r0
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #0xd
	b _0802C3D4
	.align 2, 0
_0802C3BC: .4byte _0803E658
_0802C3C0: .4byte gUnknown_03003EB8
_0802C3C4: .4byte gUnknown_0300329A
_0802C3C8: .4byte gUnknown_03003D20
_0802C3CC: .4byte 0xFFFE0000
_0802C3D0: .4byte gUnknown_03003D2C
_0802C3D4:
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsrs r1, r1, #0x18
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802C3F4
	orrs r1, r6
	str r1, [r0]
_0802C3F4:
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _0802C6C4 @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C41E
sub_802C41E: @ 0x0802C41E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802C434
	movs r1, #0
	bl sub_80401E4
	b _0802C43A
_0802C434:
	movs r1, #1
	bl sub_80401E4
_0802C43A:
	ldr r0, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq _0802C4D4
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq _0802C51C
	cmp r0, #2
	bne _0802C4CC
	ldr r0, _0802C6C8 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C472
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C472:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802C566
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C494
	bl sub_8000914
_0802C494:
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C4AE
	bl sub_8000914
_0802C4AE:
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _0802C4C2
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802C4C2:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
_0802C4CC:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802C4D4:
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802C51E
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
_0802C51A:
	b _0802C4CC
_0802C51C:
	b _0802C56C
_0802C51E:
	ldr r1, [r4, #0x38]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C548
	bl sub_8000914
_0802C548:
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	b _0802C568
_0802C566:
	b _0802C5CA
_0802C568:
	str r0, [r4, #0x34]
	b _0802C4CC
_0802C56C:
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802C5BA
	cmp r0, #0
	beq _0802C5A4
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5A4:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C4CC
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC
_0802C5BA:
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b _0802C4CC
_0802C5CA:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C51A
	cmp r0, #0
	beq _0802C5E4
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5E4:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C51A
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC

	non_word_aligned_thumb_func_start sub_802C5FA
sub_802C5FA: @ 0x0802C5FA
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C6BC
	ldr r6, _0802C6C8 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C624
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C624:
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r1, r0
	str r1, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r0, #3]
	lsls r3, r3, #0x12
	bics r1, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r1, r3
	lsls r2, r2, #0x1c
	orrs r2, r1
	str r2, [r4, #0x30]
	ldr r1, [r0]
	lsrs r3, r3, #4
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsls r2, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r1, r2
	orrs r0, r1
	lsls r1, r2, #4
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802C6BC
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802C6CC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802C6BC:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	.align 2, 0
_0802C6C4: .4byte gUnknown_0300345C
_0802C6C8: .4byte gUnknown_03003EA0
_0802C6CC: .4byte gUnknown_03003EB8

	thumb_func_start sub_802C6D0
sub_802C6D0: @ 0x0802C6D0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C6EE
	ldr r0, _0802C874 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_0802C6EE:
	ldr r5, _0802C878 @ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802C718
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802C718:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C71E
sub_802C71E: @ 0x0802C71E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802C772
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_0802C772:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _0802C85C
	ldr r0, _0802C874 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _0802C87C @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _0802C880 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _0802C7D8
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _0802C7DE
_0802C7D8:
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_0802C7DE:
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802C810
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802C810:
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _0802C854
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_0802C854:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0802C85C
	b _0802C85E
_0802C85C:
	b _0802C866
_0802C85E:
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_0802C866:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C86E
sub_802C86E: @ 0x0802C86E
	adds r0, #0x40
	ldrb r0, [r0, #8]
	bx lr
	.align 2, 0
_0802C874: .4byte gUnknown_03003EB8
_0802C878: .4byte gUnknown_0300345C
_0802C87C: .4byte gUnknown_03003EA0
_0802C880: .4byte 0x0010BE20

	thumb_func_start sub_802C884
sub_802C884: @ 0x0802C884
	push {r4, lr}
	adds r4, r0, #0
	bne _0802C89C
	movs r0, #0x48
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802C89C
	adds r0, r4, #0
_0802C896:
	pop {r4}
	pop {r3}
	bx r3
_0802C89C:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802CC68 @ =_0803E578
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _0802C896

	thumb_func_start sub_802C8B0
sub_802C8B0: @ 0x0802C8B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802CC68 @ =_0803E578
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C8CC
	adds r0, r4, #0
	bl sub_803DA18
_0802C8CC:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C8D2
sub_802C8D2: @ 0x0802C8D2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _0802C914
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802C922
_0802C914:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802C922:
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _0802CC6C @ =gUnknown_030032A0
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #8
	str r1, [r4, #0x38]
	bhs _0802C94C
	add r3, pc, #0xC @ =_0802C950
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802C94C:
	b _0802CAF8
	.align 2, 0
_0802C950:
	.byte 0x09, 0x00
_0802C952:
	.byte 0x75, 0x00
_0802C954:
	.byte 0xD6, 0x00
_0802C956:
	.byte 0x41, 0x01
_0802C958:
	.byte 0xB2, 0x01
_0802C95A:
	.byte 0x1D, 0x02
_0802C95C:
	.byte 0x7E, 0x02
_0802C95E:
	.byte 0xDF, 0x02
loc_802c960:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802C9EC
	cmp r1, #1
	beq _0802C998
	cmp r1, #2
	beq _0802C9BE
	cmp r1, #3
	bne _0802CA1A
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C998:
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9BE:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9EC:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CA1A:
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	ldr r0, _0802CC74 @ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CAF8
	ldr r0, _0802CC78 @ =gUnknown_03003D2C
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802CAF8
loc_802ca38:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CAC4
	cmp r1, #1
	beq _0802CA70
	cmp r1, #2
	beq _0802CA96
	cmp r1, #3
	bne _0802CAF2
	movs r2, #0x1d
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA70:
	movs r2, #7
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA96:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CAC4:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CAF2:
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CAF8:
	b _0802CF0A
loc_802cafa:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CB9A
	cmp r1, #1
	beq _0802CB3C
	cmp r1, #2
	beq _0802CB6C
	cmp r1, #3
	bne _0802CB98
	movs r2, #0x15
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB3C:
	movs r2, #5
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #7
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB6C:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CB98:
	b _0802CBC8
_0802CB9A:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CBC8:
	movs r0, #3
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cbd0:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CC7C
	cmp r1, #1
	beq _0802CC12
	cmp r1, #2
	beq _0802CC38
	cmp r1, #3
	bne _0802CC64
	movs r2, #3
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC12:
	movs r2, #0x19
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC38:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CC64:
	b _0802CCAA
	.align 2, 0
_0802CC68: .4byte _0803E578
_0802CC6C: .4byte gUnknown_030032A0
_0802CC70: .4byte 0xFFFE0000
_0802CC74: .4byte gUnknown_03003D20
_0802CC78: .4byte gUnknown_03003D2C
_0802CC7C:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CCAA:
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ccb2:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CD52
	cmp r1, #1
	beq _0802CCF4
	cmp r1, #2
	beq _0802CD24
	cmp r1, #3
	bne _0802CD50
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CCF4:
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x15
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CD24:
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD50:
	b _0802CD80
_0802CD52:
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD80:
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cd88:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CE14
	cmp r1, #1
	beq _0802CDC0
	cmp r1, #2
	beq _0802CDE6
	cmp r1, #3
	bne _0802CE42
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDC0:
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDE6:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CE14:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CE42:
	movs r0, #1
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ce4a:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CED6
	cmp r1, #1
	beq _0802CE82
	cmp r1, #2
	beq _0802CEA8
	cmp r1, #3
	bne _0802CF04
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CE82:
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CEA8:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CED6:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CF04:
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CF0A:
	b _0802CFCC
loc_802cf0c:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CF98
	cmp r1, #1
	beq _0802CF44
	cmp r1, #2
	beq _0802CF6A
	cmp r1, #3
	bne _0802CFC6
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF44:
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF6A:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF98:
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CFC6:
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CFCC:
	ldr r7, _0802D0BC @ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r6, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D02C
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D02C:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D08C
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D08C:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	movs r6, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802D0DA
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802D0C8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802D0C8
	ldr r0, _0802D0C0 @ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	b _0802D0C4
	.align 2, 0
_0802D0B8: .4byte 0xFFFE0000
_0802D0BC: .4byte gUnknown_03003EB8
_0802D0C0: .4byte gUnknown_03003EA0
_0802D0C4:
	bl sub_800CD58
_0802D0C8:
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802D0DA
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r5]
_0802D0DA:
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 @ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _0802D0F8
	ldr r1, _0802D2DC @ =gUnknown_0300345C
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_0802D0F8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D100
sub_802D100: @ 0x0802D100
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	beq _0802D180
	adds r6, r4, #4
	movs r7, #0
	cmp r0, #1
	beq _0802D1E0
	cmp r0, #2
	bne _0802D178
	ldr r0, _0802D2E0 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq _0802D13A
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802D13A:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802D218
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802D160
	ldr r0, _0802D2E4 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802D160:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	bl sub_8000914
_0802D178:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802D180:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802D1B0
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b _0802D178
_0802D1B0:
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r5]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0802D178
_0802D1E0:
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802D21A
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178
_0802D218:
	b _0802D222
_0802D21A:
	adds r1, r5, #0
	bl sub_803FF24
	b _0802D178
_0802D222:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178

	thumb_func_start sub_802D23C
sub_802D23C: @ 0x0802D23C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 @ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	blt _0802D26E
	ldr r5, _0802D2DC @ =gUnknown_0300345C
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r4, r1, #0x13
	adds r0, r4, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802D26E
	ldr r0, [r5]
	adds r0, r4, r0
	bl sub_80268AC
_0802D26E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D274
sub_802D274: @ 0x0802D274
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802D2C8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0, r4
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4, r0
	lsrs r2, r4, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_0802D2C8:
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D2D0
sub_802D2D0: @ 0x0802D2D0
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_0802D2D8: .4byte gUnknown_030032B0
_0802D2DC: .4byte gUnknown_0300345C
_0802D2E0: .4byte gUnknown_03003EA0
_0802D2E4: .4byte gUnknown_03003EB8

	thumb_func_start sub_802D2E8
sub_802D2E8: @ 0x0802D2E8
	push {r4, lr}
	adds r4, r0, #0
	bne _0802D300
	movs r0, #0x4c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802D300
	adds r0, r4, #0
_0802D2FA:
	pop {r4}
	pop {r3}
	bx r3
_0802D300:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802D6C0 @ =_0803ED28
	movs r1, #0x1e
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	b _0802D2FA

	non_word_aligned_thumb_func_start sub_802D32E
sub_802D32E: @ 0x0802D32E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802D6C0 @ =_0803ED28
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D350
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802D350
	ldr r0, _0802D6C4 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
_0802D350:
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _0802D36C
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_0802D36C:
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802D37E
	adds r0, r4, #0
	bl sub_803DA18
_0802D37E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D384
sub_802D384: @ 0x0802D384
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	movs r3, #1
	str r3, [r4, #0x24]
	movs r3, #0
	str r3, [r4, #0x28]
	adds r3, r0, #1
	bne _0802D3CE
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802D3DC
_0802D3CE:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802D3DC:
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r3, _0802D6C8 @ =gUnknown_03003328
	lsls r1, r0, #1
	ldrh r1, [r3, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs _0802D406
	add r3, pc, #0x8 @ =_0802D408
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D406:
	b _0802D7B8
_0802D408:
	.byte 0x05, 0x00
_0802D40A:
	.byte 0x05, 0x00
_0802D40C:
	.byte 0x05, 0x00
_0802D40E:
	.byte 0xAE, 0x00
_0802D410:
	.byte 0x39, 0x01
loc_802d412:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D4AC
	cmp r1, #1
	beq _0802D452
	cmp r1, #2
	beq _0802D47E
	cmp r1, #3
	bne _0802D4AA
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC @ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r5, #5
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D452:
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC @ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D47E:
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC @ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802D4AA:
	b _0802D4D8
_0802D4AC:
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC @ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D4D8:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	beq _0802D538
	cmp r0, #1
	beq _0802D54E
	cmp r0, #2
	bne _0802D4FC
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xa
	adds r0, r0, r1
	movs r5, #0xc
	mvns r5, r5
	str r0, [r4, #0x48]
_0802D4FC:
	ldr r0, _0802D6D0 @ =gUnknown_0300345C
	adds r2, #0x3a
	lsls r1, r2, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r0, _0802D6D4 @ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D520
	ldr r0, _0802D6D8 @ =gUnknown_03003D2C
	adds r1, r5, #0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802D520:
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x48]
	b _0802D7B8
_0802D538:
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x15
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
_0802D54E:
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x11
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
loc_802d564:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D612
	cmp r1, #1
	beq _0802D5AA
	cmp r1, #2
	beq _0802D5DE
	cmp r1, #3
	bne _0802D610
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5AA:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5DE:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D610:
	b _0802D644
_0802D612:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D644:
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	adds r0, r0, r3
	str r0, [r4, #0x48]
	b _0802D7B8
loc_802d67a:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D74C
	cmp r1, #1
	beq _0802D6E4
	cmp r1, #2
	beq _0802D718
	cmp r1, #3
	bne _0802D716
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6E0 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D716
	.align 2, 0
_0802D6C0: .4byte _0803ED28
_0802D6C4: .4byte gUnknown_03003EB8
_0802D6C8: .4byte gUnknown_03003328
_0802D6CC: .4byte gUnknown_030032C0
_0802D6D0: .4byte gUnknown_0300345C
_0802D6D4: .4byte gUnknown_03003D20
_0802D6D8: .4byte gUnknown_03003D2C
_0802D6DC: .4byte gUnknown_030032E8
_0802D6E0: .4byte gUnknown_03003304
_0802D6E4:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
_0802D716:
	b _0802D780
_0802D718:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802D780
_0802D74C:
	b _0802D74E
_0802D74E:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D780:
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x48]
_0802D7B8:
	ldr r7, _0802DAB8 @ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	bl sub_800065C
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D808
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D808:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	movs r5, #3
	lsls r5, r5, #0xa
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D868
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D868:
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D918
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x48]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [r4, #0x44]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x44]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r6, [r4, #0x44]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7, r0
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D910
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D910:
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802D918:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D920
sub_802D920: @ 0x0802D920
	push {r4, r5, r6, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	sub sp, #8
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D94C
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802D946
	movs r1, #0
	bl sub_80401E4
	b _0802D94C
_0802D946:
	movs r1, #1
	bl sub_80401E4
_0802D94C:
	ldr r1, [r4, #0x48]
	lsls r0, r1, #0x1f
	bmi _0802D9FA
	movs r0, #0xff
	adds r2, r1, #0
	adds r0, #0xe1
	adds r1, #0x20
	ands r1, r0
	bics r2, r0
	orrs r1, r2
	lsls r2, r1, #0x17
	lsrs r2, r2, #0x1c
	movs r5, #0
	cmp r2, #8
	str r1, [r4, #0x48]
	bls _0802D9B0
	bics r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, r0, #0
	movs r2, #0x1e
	adds r0, #2
	ands r0, r2
	bics r1, r2
	orrs r1, r0
	lsls r0, r1, #0x1b
	str r1, [r4, #0x48]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bhs _0802D9D6
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x48]
	lsls r1, r0, #0x16
	bpl _0802D9B0
	lsls r2, r0, #0xd
	ldr r1, [r4, #0x38]
	lsrs r2, r2, #0x1c
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	bl sub_800065C
_0802D9B0:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802D9FA
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802D9CA
	add r3, pc, #0x8 @ =_0802D9CC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D9CA:
	b _0802DAB2
_0802D9CC:
	.byte 0x1B, 0x00
_0802D9CE:
	.byte 0x1B, 0x00
_0802D9D0:
	.byte 0x1B, 0x00
_0802D9D2:
	.byte 0x95, 0x00
_0802D9D4:
	.byte 0x05, 0x01
_0802D9D6:
	ldr r6, _0802DAB8 @ =gUnknown_03003EB8
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D9F0
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r6]
	bl sub_8000DE6
_0802D9F0:
	str r5, [r4, #4]
	ldr r0, [r4, #0x48]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x48]
_0802D9FA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
loc_802da02:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DAC0
	cmp r1, #1
	beq _0802DA4C
	cmp r1, #2
	beq _0802DA7E
	cmp r1, #3
	bne _0802DAB2
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC @ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DAB2
_0802DA4C:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC @ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DAB2
_0802DA7E:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC @ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802DAB2:
	b _0802DBA0
	.align 2, 0
_0802DAB4: .4byte gUnknown_03003304
_0802DAB8: .4byte gUnknown_03003EB8
_0802DABC: .4byte gUnknown_030032C0
_0802DAC0:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DDCC @ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DBA0
loc_802daf6:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DBA2
	cmp r1, #1
	beq _0802DB3A
	cmp r1, #2
	beq _0802DB6E
	cmp r1, #3
	bne _0802DBA0
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DBA0
_0802DB3A:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802DBA0
_0802DB6E:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DBA0:
	b _0802DC80
_0802DBA2:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 @ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DC80
loc_802dbd6:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DC82
	cmp r1, #1
	beq _0802DC1A
	cmp r1, #2
	beq _0802DC4E
	cmp r1, #3
	bne _0802DC80
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DC80
_0802DC1A:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DC80
_0802DC4E:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DC80:
	b _0802DCB4
_0802DC82:
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 @ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DCB4:
	ldr r1, [r4, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r2, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bmi _0802DCE6
	b _0802D9FA
_0802DCE6:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #0x44]
	mov r1, sp
	bl sub_803FF24
	b _0802D9FA

	thumb_func_start sub_802DD08
sub_802DD08: @ 0x0802DD08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x1d
	ldr r5, [r4, #4]
	lsrs r7, r6, #4
	cmp r5, #0
	beq _0802DD7C
	ldr r0, _0802DDD8 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	lsrs r3, r6, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x2c]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r7
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r1, r2
	orrs r1, r6
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi _0802DD7C
	lsls r0, r3, #2
	orrs r0, r1
	str r0, [r4, #0x2c]
_0802DD7C:
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _0802DDC4
	ldr r0, _0802DDD8 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	movs r3, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r3, r3, #0x1c
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r7
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x30]
_0802DDC4:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802DDCC: .4byte gUnknown_030032C0
_0802DDD0: .4byte gUnknown_030032E8
_0802DDD4: .4byte gUnknown_03003304
_0802DDD8: .4byte gUnknown_03003EA0

	thumb_func_start sub_802DDDC
sub_802DDDC: @ 0x0802DDDC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802DDFA
	ldr r0, _0802DFEC @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x44]
_0802DDFA:
	ldr r5, _0802DFF0 @ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802DE24
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802DE24:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802DE2A
sub_802DE2A: @ 0x0802DE2A
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x2c]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge _0802DF1E
	ldr r0, _0802DFEC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DE6A
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DE74
_0802DE6A:
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DE74:
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	lsrs r6, r0, #0x1f
	ldr r0, [r5]
	beq _0802DE8E
	lsls r0, r0, #0x1c
	bmi _0802DE9C
	ldr r0, _0802DFEC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802DE9C
_0802DE8E:
	lsls r0, r0, #0x1c
	bpl _0802DE9C
	ldr r0, _0802DFEC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802DE9C:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl sub_803FF24
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802DED8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DED8:
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #6
	bpl _0802DF1E
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
_0802DF1E:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _0802DFD0
	ldr r0, _0802DFEC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DF50
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DF5A
_0802DF50:
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DF5A:
	adds r1, r7, #0
	ldr r0, [r4, #0x44]
	bl sub_803FF24
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802DF8A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DF8A:
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #0x44]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0802DFD0
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802DFD0:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802DFD8
sub_802DFD8: @ 0x0802DFD8
	push {r3, lr}
	bl sub_802E8B0
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802DFE4
sub_802DFE4: @ 0x0802DFE4
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	bx lr
	.align 2, 0
_0802DFEC: .4byte gUnknown_03003EB8
_0802DFF0: .4byte gUnknown_0300345C

	thumb_func_start sub_802DFF4
sub_802DFF4: @ 0x0802DFF4
	push {r4, lr}
	adds r4, r0, #0
	bne _0802E00C
	movs r0, #0x40
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802E00C
	adds r0, r4, #0
_0802E006:
	pop {r4}
	pop {r3}
	bx r3
_0802E00C:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802E370 @ =_0803EDA0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0, #0xc]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	b _0802E006

	non_word_aligned_thumb_func_start sub_802E02A
sub_802E02A: @ 0x0802E02A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802E370 @ =_0803EDA0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802E046
	adds r0, r4, #0
	bl sub_803DA18
_0802E046:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802E04C
sub_802E04C: @ 0x0802E04C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r1, #0x2c]
	movs r5, #0xff
	str r0, [r4, #0x14]
	ldrb r1, [r0, #5]
	ldr r3, [r4, #0x34]
	lsls r5, r5, #0xb
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0xd
	bics r3, r5
	orrs r1, r3
	str r1, [r4, #0x34]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, r4, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0802E374 @ =gUnknown_03003332
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	adds r6, #0x1c
	adds r5, r4, #0
	str r1, [r4, #0x38]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	adds r5, #0x30
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0802E378 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r7, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl sub_803FF24
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802E114
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802E114:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1f
	bmi _0802E154
	ldr r0, _0802E378 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r6]
	lsls r0, r0, #0x16
	bmi _0802E142
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0802E142
	ldr r0, _0802E37C @ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800CD58
_0802E142:
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	lsls r1, r0, #0x1e
	bpl _0802E154
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r6]
_0802E154:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802E1BC
	add r3, pc, #0x8 @ =_0802E168
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0802E168:
	.byte 0x03
_0802E169:
	.byte 0x08
_0802E16A:
	.byte 0x0C
_0802E16B:
	.byte 0x10
_0802E16C:
	.byte 0x27, 0x00
loc_802e16e:
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xe]
	b _0802E1BC
loc_802e178:
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b _0802E1BC
loc_802e180:
	movs r0, #2
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b _0802E1BC
loc_802e188:
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r1, #0
	strb r1, [r5, #0xe]
	movs r0, #0x78
	strb r0, [r5, #0xf]
	str r1, [r4, #0x28]
	str r7, [r4, #0x24]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802E1AA
	ldr r0, _0802E378 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_0802E1AA:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	b _0802E1BC
loc_802e1b6:
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
_0802E1BC:
	ldr r0, _0802E380 @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E1D6
sub_802E1D6: @ 0x0802E1D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	adds r6, #0x1c
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub sp, #0xc
	str r0, [r6, #4]
	str r1, [r6]
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	movs r7, #7
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	lsls r7, r7, #8
	adds r5, #0x30
	cmp r0, #0
	beq _0802E26A
	cmp r0, #1
	beq _0802E298
	cmp r0, #2
	bne _0802E296
	ldr r0, _0802E37C @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802E236
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802E236:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802E316
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r7, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802E25E
	ldr r0, _0802E378 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E25E:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	b _0802E296
_0802E26A:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802E296
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	movs r1, #1
	bics r0, r7
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldrb r0, [r5, #0xc]
	orrs r0, r1
	strb r0, [r5, #0xc]
_0802E296:
	b _0802E334
_0802E298:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0802E2D4
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #0xf]
	bne _0802E2B0
	movs r0, #1
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r4, #0x34]
_0802E2B0:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
_0802E2D4:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0xc
	bmi _0802E334
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r1, [r5, #0xc]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r5, #0xc]
	ldr r5, _0802E380 @ =gUnknown_0300345C
	adds r0, #0x3d
	ldr r1, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq _0802E334
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
	b _0802E334
_0802E316:
	b _0802E318
_0802E318:
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0802E334
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
_0802E32C:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802E334:
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #4]
	ldrb r0, [r0, #5]
	ldrb r3, [r2, #5]
	subs r0, #1
	adds r1, r0, #0
	cmp r0, r3
	beq _0802E32C
	ldrh r0, [r2, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r0, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r0, r3
	strh r0, [r2, #0x2a]
	strb r1, [r2, #5]
	ldr r0, [r2]
	lsls r1, r0, #0x16
	bmi _0802E32C
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b _0802E32C
	.align 2, 0
_0802E370: .4byte _0803EDA0
_0802E374: .4byte gUnknown_03003332
_0802E378: .4byte gUnknown_03003EB8
_0802E37C: .4byte gUnknown_03003EA0
_0802E380: .4byte gUnknown_0300345C

	thumb_func_start sub_802E384
sub_802E384: @ 0x0802E384
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802E3C0
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	adds r0, #0x1c
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	adds r1, r2, #0
	movs r2, #1
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r2, [r4, #4]
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_803FF24
_0802E3C0:
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E3C6
sub_802E3C6: @ 0x0802E3C6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	str r1, [r4, #0x34]
	lsls r1, r1, #6
	ldr r5, _0802E414 @ =gUnknown_0300345C
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	ldr r0, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802E408
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802E408:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E40E
sub_802E40E: @ 0x0802E40E
	adds r0, #0x30
	ldrb r0, [r0, #0xd]
	bx lr
	.align 2, 0
_0802E414: .4byte gUnknown_0300345C

	thumb_func_start sub_802E418
sub_802E418: @ 0x0802E418
	push {r4, lr}
	cmp r0, #0
	bne _0802E428
	movs r0, #0x3c
	bl sub_803D9F8
	cmp r0, #0
	beq _0802E474
_0802E428:
	ldr r1, _0802E7F0 @ =_0803E2A0
	movs r3, #7
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #8
	lsrs r2, r2, #8
	lsls r2, r2, #8
	bics r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xb
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0x16
	bics r2, r3
	str r1, [r0, #0x38]
	str r2, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x2c
	movs r2, #0
	movs r3, #0
	stm r4!, {r2, r3}
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
_0802E474:
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E47A
sub_802E47A: @ 0x0802E47A
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4 @ =gUnknown_03003EB8
	beq _0802E492
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E492:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4A4
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4A4:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E4AA
sub_802E4AA: @ 0x0802E4AA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802E7F0 @ =_0803E2A0
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4 @ =gUnknown_03003EB8
	beq _0802E4C8
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E4C8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4DA
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4DA:
	cmp r7, #0
	beq _0802E4E4
	adds r0, r4, #0
	bl sub_803DA18
_0802E4E4:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_53
nullsub_53: @ 0x0802E4EA
	bx lr

	thumb_func_start nullsub_54
nullsub_54: @ 0x0802E4EC
	bx lr

	non_word_aligned_thumb_func_start sub_802E4EE
sub_802E4EE: @ 0x0802E4EE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0802E5CC
	ldr r6, _0802E7F8 @ =gUnknown_03003EA0
	mvns r1, r1
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	cmp r2, #0
	beq _0802E518
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802E518:
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r2, #1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1f
	lsrs r2, r2, #1
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi _0802E5B0
	lsls r2, r3, #5
	orrs r0, r2
	str r0, [r4, #0x2c]
_0802E5B0:
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802E5CC
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802E7F4 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802E5CC:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E5D2
sub_802E5D2: @ 0x0802E5D2
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x14]
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #2
	bpl _0802E6C4
	ldr r0, _0802E7F4 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r5, #4]
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	ldr r6, _0802E7F8 @ =gUnknown_03003EA0
	lsrs r7, r0, #0x1a
	str r1, [sp]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, _0802E7FC @ =0x0010BE20
	strb r7, [r4, #3]
	muls r0, r7, r0
	str r0, [r4, #8]
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #4]
	lsls r1, r1, #3
	lsrs r2, r1, #0x1f
	movs r1, #2
	cmp r2, #0
	ldr r2, [r0]
	beq _0802E642
	movs r4, #0xff
	adds r4, #1
	orrs r1, r2
	bics r1, r4
	str r1, [r0]
	b _0802E64C
_0802E642:
	movs r4, #0xff
	adds r4, #1
	bics r2, r1
	bics r2, r4
	str r2, [r0]
_0802E64C:
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsrs r7, r0, #0x1f
	ldr r0, [r4]
	beq _0802E666
	lsls r0, r0, #0x1c
	bmi _0802E674
	ldr r0, _0802E7F4 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802E674
_0802E666:
	lsls r0, r0, #0x1c
	bpl _0802E674
	ldr r0, _0802E7F4 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E674:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r7, #3
	orrs r0, r1
	str r0, [r4]
	ldr r4, [r5, #4]
	ldr r0, [r5, #0x2c]
	ldrh r2, [r4, #0x28]
	movs r3, #1
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0802E738
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #0xf
	ldr r1, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _0802E6CA
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #5
	lsls r2, r2, #0x15
	ldr r1, [r4, #0x38]
	b _0802E6C6
_0802E6C4:
	b _0802E7EA
_0802E6C6:
	cmp r1, r2
	blt _0802E6E4
_0802E6CA:
	lsls r0, r0, #0x16
	bmi _0802E738
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b _0802E738
_0802E6E4:
	lsls r0, r0, #0x16
	bpl _0802E702
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0802E702:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
_0802E738:
	ldr r1, [r4]
	adds r0, r7, #0
	orrs r1, r7
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x1c]
	ldr r4, [r1, #0x2c]
	ldr r7, [r1, #0x30]
	subs r4, r3, r4
	ldr r3, [r5, #0x20]
	adds r2, r1, #0
	subs r3, r3, r7
	ldr r7, [r1, #0x34]
	adds r2, #0x34
	adds r7, r7, r4
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	adds r7, r7, r3
	str r7, [r2, #4]
	ldr r7, [r2, #8]
	adds r4, r7, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	movs r7, #3
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r5, #0x1c]
	ldr r4, [r5, #0x20]
	str r3, [r1, #0x2c]
	str r4, [r1, #0x30]
	movs r4, #0xff
	ldr r2, [r1]
	adds r4, #1
	orrs r2, r4
	str r2, [r1]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x34]
	ldrh r3, [r1, #0x2a]
	lsls r7, r7, #0xa
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x18
	bics r3, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r3, r7
	strh r3, [r1, #0x2a]
	strb r2, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0802E7A2
	orrs r0, r2
	str r0, [r1]
_0802E7A2:
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #7
	bpl _0802E7AE
	ldr r0, [r5, #4]
	bl sub_8000914
_0802E7AE:
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #6
	bpl _0802E7EA
	ldr r5, [r5, #4]
	movs r7, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802E7EA
	ldr r0, _0802E7F4 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802E7DC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802E7DC
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_800CD58
_0802E7DC:
	ldr r0, [r5]
	orrs r0, r7
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802E7EA
	orrs r0, r4
	str r0, [r5]
_0802E7EA:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802E7F0: .4byte _0803E2A0
_0802E7F4: .4byte gUnknown_03003EB8
_0802E7F8: .4byte gUnknown_03003EA0
_0802E7FC: .4byte 0x0010BE20

	thumb_func_start sub_802E800
sub_802E800: @ 0x0802E800
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	sub sp, #0x14
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _0802E85E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802E85E
	adds r1, r4, #0
	adds r1, #0x24
	bl sub_8000AC4
	cmp r0, #0
	beq _0802E85E
	ldr r0, _0802E8FC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_80019B4
	mov r5, sp
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r5!, {r2, r3}
	ldr r1, [r4, #4]
	movs r0, #0x50
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0802E85E
	lsls r2, r0, #0x1e
	bpl _0802E866
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_0802E85E:
	add sp, #0x14
	pop {r4, r5}
	pop {r3}
	bx r3
_0802E866:
	lsls r0, r0, #0x1f
	bpl _0802E85E
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #8]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	movs r2, #1
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r4, #0x34]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0802E8AA
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	b _0802E85E
_0802E8AA:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _0802E85E

	thumb_func_start sub_802E8B0
sub_802E8B0: @ 0x0802E8B0
	push {r4, r5, r6, lr}
	ldr r5, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	lsls r0, r0, #0x1c
	bpl _0802E8C8
	ldr r0, _0802E8FC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E8C8:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x34]
	lsls r1, r2, #0x12
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	str r6, [r4, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802E8F8
sub_802E8F8: @ 0x0802E8F8
	movs r0, #0
	bx lr
	.align 2, 0
_0802E8FC: .4byte gUnknown_03003EB8

	thumb_func_start sub_802E900
sub_802E900: @ 0x0802E900
	push {r4, lr}
	adds r4, r0, #0
	bne _0802E918
	movs r0, #0xac
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802E918
	adds r0, r4, #0
_0802E912:
	pop {r4}
	pop {r3}
	bx r3
_0802E918:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802EC08 @ =_0803E4D8
	movs r1, #0x11
	str r0, [r4]
	strh r1, [r4, #4]
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0, #0x1c]
	ldr r1, [r0]
	ldr r2, _0802EC0C @ =0xFF8007FF
	ands r1, r2
	ldr r2, _0802EC10 @ =0x0027E000
	adds r1, r1, r2
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0x3c
	strb r2, [r1, #0xd]
	movs r2, #0x14
	strb r2, [r1, #0xc]
	movs r2, #0xa6
	movs r1, #0
	strh r1, [r2, r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _0802E912

	non_word_aligned_thumb_func_start sub_802E962
sub_802E962: @ 0x0802E962
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EC08 @ =_0803E4D8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802E97E
	adds r0, r4, #0
	bl sub_803DA18
_0802E97E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802E984
sub_802E984: @ 0x0802E984
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802EC14 @ =gUnknown_03003454
	movs r7, #0x80
	ldr r6, [r0]
	add r0, pc, #0x288 @ =_0802EC18
	str r0, [sp]
	movs r4, #4
	b _0802E9A0
_0802E996:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _0802E9AA
_0802E9A0:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0802E996
_0802E9AA:
	ldr r0, _0802EC2C @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x80
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r4, #2
	adds r7, r1, r6
	str r0, [r7, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r6
	movs r1, #0x80
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	strh r1, [r2, #0x18]
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0, #0x18]
	adds r1, r2, #0
	subs r1, #0xff
	subs r1, #1
	ldr r0, [sp]
	adds r1, r7, r1
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0x90
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	bl sub_8005106
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EA3E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EA3E:
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	movs r2, #1
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	lsls r2, r2, #0xa
	ldr r0, [r1]
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802EC30 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
	adds r0, r5, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802EA80
sub_802EA80: @ 0x0802EA80
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #8]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #2]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #4]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq _0802EAB2
	lsrs r2, r2, #5
	ldr r4, _0802EC34 @ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne _0802EAB2
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
_0802EAAE:
	pop {r4}
	bx lr
_0802EAB2:
	movs r1, #0
	strh r1, [r0, #6]
	b _0802EAAE

	thumb_func_start sub_802EAB8
sub_802EAB8: @ 0x0802EAB8
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAD0
	cmp r2, #0x2c
	bne _0802EAD6
	bl sub_801DA2A
_0802EACA:
	add sp, #4
	pop {r3}
	bx r3
_0802EAD0:
	bl sub_802EA80
	b _0802EACA
_0802EAD6:
	bl sub_801DD40
	b _0802EACA

	thumb_func_start sub_802EADC
sub_802EADC: @ 0x0802EADC
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAF2
	cmp r2, #0x2c
	bne _0802EAF6
	movs r0, #1
_0802EAEC:
	add sp, #4
	pop {r3}
	bx r3
_0802EAF2:
	movs r0, #1
	b _0802EAEC
_0802EAF6:
	bl sub_801DF50
	b _0802EAEC

	thumb_func_start sub_802EAFC
sub_802EAFC: @ 0x0802EAFC
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _0802EC38 @ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	sub sp, #0x1c
	beq _0802EB1E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802EB1E:
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802EC00
	adds r5, r4, #0
	adds r5, #0xa0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _0802EBDA
	ldr r0, [r4, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, _0802EC14 @ =gUnknown_03003454
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x10]
	lsls r1, r1, #2
	ldr r0, [r0, #0x14]
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EB72
	ldr r0, _0802EC38 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EB72:
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #0x18]
	strh r0, [r3, #0x1a]
	ldr r6, [r4, #0x2c]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EBAC
	ldr r0, _0802EC38 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EBAC:
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r0, #0
	strh r0, [r5, #6]
_0802EBDA:
	ldr r0, _0802EC3C @ =gUnknown_0300345C
	ldr r0, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	ldrh r1, [r4, #0x1a]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	movs r0, #0
	adds r4, #0x70
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0802EC00:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802EC08: .4byte _0803E4D8
_0802EC0C: .4byte 0xFF8007FF
_0802EC10: .4byte 0x0027E000
_0802EC14: .4byte gUnknown_03003454
_0802EC18: .4byte 0x656A624F
_0802EC1C: .4byte 0x53207463
_0802EC20: .4byte 0x70697263
_0802EC24: .4byte 0x72472074
_0802EC28: .4byte 0x0070756F
_0802EC2C: .4byte gUnknown_03003468
_0802EC30: .4byte gUnknown_03003EB8
_0802EC34: .4byte gUnknown_03003478
_0802EC38: .4byte gUnknown_03003EA0
_0802EC3C: .4byte gUnknown_0300345C

	thumb_func_start sub_802EC40
sub_802EC40: @ 0x0802EC40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EC6C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EC6C:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802EC90
sub_802EC90: @ 0x0802EC90
	subs r1, #0x61
	cmp r1, #6
	bhs _0802ECB6
	add r3, pc, #0x8 @ =_0802ECA0
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0802ECA0:
	.byte 0x03
_0802ECA1:
	.byte 0x0C
_0802ECA2:
	.byte 0x14
_0802ECA3:
	.byte 0x1D
_0802ECA4:
	.byte 0x2D
_0802ECA5:
	.byte 0x25
loc_802eca6:
	movs r1, #0xd9
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
_0802ECB6:
	bx lr
loc_802ecb8:
	ldr r1, _0802ED10 @ =0x00000362
	strh r1, [r0, #0x18]
	adds r1, #3
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecc8:
	movs r1, #0x6d
	lsls r1, r1, #3
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecda:
	ldr r1, _0802ED14 @ =0x00000366
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecea:
	ldr r1, _0802ED18 @ =0x0000035E
	strh r1, [r0, #0x18]
	adds r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x25
	adds r0, #0xa0
	strb r1, [r0]
	bx lr
loc_802ecfa:
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
nullsub_55: @ 0x0802ED0C
	bx lr
	.align 2, 0
_0802ED10: .4byte 0x00000362
_0802ED14: .4byte 0x00000366
_0802ED18: .4byte 0x0000035E

	thumb_func_start sub_802ED1C
sub_802ED1C: @ 0x0802ED1C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	bl sub_803C2DC
	cmp r0, #0
	beq _0802EDF6
	movs r7, #0x47
	movs r6, #0x48
_0802ED2E:
	ldrb r1, [r5]
	cmp r1, #0x20
	bne _0802ED3C
	movs r1, #0xff
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED3C:
	cmp r1, #0xa
	bne _0802ED48
	movs r1, #0xfe
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED48:
	movs r3, #0
	ldrsb r2, [r5, r3]
	adds r3, r2, #0
	subs r3, #0x30
	cmp r3, #9
	bhi _0802ED5E
	adds r1, r2, #0
	adds r1, #0xd1
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED5E:
	adds r3, r2, #0
	subs r3, #0x41
	cmp r3, #0x19
	bhi _0802ED70
	adds r1, r2, #0
	adds r1, #0xe4
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED70:
	adds r3, r2, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _0802ED82
	adds r1, r2, #0
	adds r1, #0xaa
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED82:
	cmp r1, #0x2e
	bne _0802ED8E
	movs r1, #0x3f
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED8E:
	cmp r1, #0x2c
	bne _0802ED9A
	movs r1, #0x40
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED9A:
	cmp r1, #0x3a
	bne _0802EDA6
	movs r1, #0x41
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDA6:
	cmp r1, #0x3b
	bne _0802EDB2
	movs r1, #0x42
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDB2:
	cmp r1, #0x21
	bne _0802EDBE
	movs r1, #0x43
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDBE:
	cmp r1, #0x3f
	bne _0802EDCA
	movs r1, #0x44
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDCA:
	cmp r1, #0x26
	bne _0802EDD6
	movs r1, #0x45
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDD6:
	cmp r1, #0x28
	bne _0802EDE2
	movs r1, #0x46
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDE2:
	cmp r1, #0x29
	bne _0802EDEC
	strb r7, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDEC:
	cmp r1, #0x27
	bne _0802EDF8
	strb r6, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDF6:
	b _0802EF00
_0802EDF8:
	cmp r1, #0x60
	bne _0802EE02
	strb r6, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE02:
	cmp r1, #0x2d
	bne _0802EE0E
	movs r1, #0x49
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE0E:
	cmp r1, #0x2f
	bne _0802EE1A
	movs r1, #0x4a
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE1A:
	cmp r1, #0x2b
	bne _0802EE26
	movs r1, #0x4b
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE26:
	cmp r1, #0xa9
	bne _0802EE32
	movs r1, #0x4c
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE32:
	cmp r1, #0x99
	bne _0802EE3E
	movs r1, #0x4d
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE3E:
	cmp r1, #0x5f
	bne _0802EE4A
	movs r1, #0x4e
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE4A:
	cmp r1, #0x24
	bne _0802EE56
	movs r1, #0x4f
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE56:
	cmp r1, #0x22
	beq _0802EE62
	cmp r1, #0x93
	beq _0802EE62
	cmp r1, #0x94
	bne _0802EE6A
_0802EE62:
	movs r1, #0x50
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE6A:
	cmp r1, #0x3c
	bne _0802EE76
	movs r1, #0x51
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE76:
	cmp r1, #0x3e
	bne _0802EE82
	movs r1, #0x52
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE82:
	cmp r1, #0x2a
	bne _0802EE8E
	movs r1, #0x53
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE8E:
	cmp r1, #0x3d
	bne _0802EE9A
	movs r1, #0x54
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE9A:
	cmp r1, #0xae
	bne _0802EEA6
	movs r1, #0x55
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEA6:
	cmp r1, #0x23
	bne _0802EEB2
	movs r1, #0x56
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEB2:
	cmp r1, #0x40
	bne _0802EEBE
	movs r1, #0x57
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEBE:
	cmp r1, #0x25
	bne _0802EECA
	movs r1, #0x58
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EECA:
	cmp r1, #0x5c
	bne _0802EED6
	movs r1, #0x59
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EED6:
	cmp r1, #0x7e
	bne _0802EEE2
	movs r1, #0x5a
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEE2:
	cmp r1, #0x5b
	bne _0802EEEC
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEEC:
	cmp r1, #0x5d
	bne _0802EEF6
	movs r1, #0x5c
	strb r1, [r4]
	adds r4, #1
_0802EEF6:
	subs r0, #1
	adds r5, #1
	cmp r0, #0
	beq _0802EF00
	b _0802ED2E
_0802EF00:
	movs r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802EF0A
sub_802EF0A: @ 0x0802EF0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	ldr r6, _0802F114 @ =gUnknown_03003E84
	adds r5, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	sub sp, #0x44
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r7, r0, #0x18
	lsrs r7, r7, #0x18
	ldr r0, [r6]
	bl nullsub_1
	adds r5, #8
	movs r1, #0x40
	add r0, sp, #4
	bl sub_803BEB0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0802EF52
	add r6, sp, #4
	adds r0, r6, #0
	ldr r1, [sp, #0x50]
	bl sub_803C28C
	adds r0, r6, #0
	bl sub_80002A8
	adds r0, r6, #0
	bl sub_802ED1C
_0802EF52:
	movs r0, #0
	mvns r0, r0
	adds r7, r7, r0
	movs r6, #0
	cmp r7, r0
	str r0, [sp]
	beq _0802F008
_0802EF60:
	ldr r0, _0802F114 @ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x48]
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bne _0802EFEA
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0802EFCE
	ldr r1, [sp, #0x48]
	movs r0, #0
	cmp r1, #9
	bhs _0802EFB0
	add r3, pc, #0x4 @ =_0802EF90
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_0802EF90:
	.byte 0x0F
_0802EF91:
	.byte 0x04
_0802EF92:
	.byte 0x0F
_0802EF93:
	.byte 0x0F
_0802EF94:
	.byte 0x07
_0802EF95:
	.byte 0x0A
_0802EF96:
	.byte 0x0F
_0802EF97:
	.byte 0x0F
_0802EF98:
	.byte 0x0D, 0x00
loc_802ef9a:
	adds r0, r4, #0
	adds r0, #0x10
	b _0802EFB0
loc_802efa0:
	adds r0, r4, #0
	adds r0, #8
	b _0802EFB0
loc_802efa6:
	adds r0, r4, #0
	adds r0, #8
	b _0802EFB0
loc_802efac:
	adds r0, r4, #0
	adds r0, #8
_0802EFB0:
	cmp r0, #0
	beq _0802EFEA
	add r1, sp, #4
	bl sub_803C37C
	cmp r0, #0
	beq _0802EFEA
	bl sub_803C2DC
	ldr r1, [sp]
	cmp r0, r1
	bhs _0802EFEA
	str r0, [sp]
	adds r6, r5, #4
	b _0802EFEA
_0802EFCE:
	ldr r0, [sp, #0x4c]
	subs r0, #1
	str r0, [sp, #0x4c]
	adds r3, r0, #1
	bne _0802EFEA
	ldr r0, _0802F114 @ =gUnknown_03003E84
	ldr r0, [r0]
	bl nullsub_1
	adds r0, r5, #4
_0802EFE2:
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802EFEA:
	ldr r0, [r4]
	lsls r0, r0, #4
	lsrs r0, r0, #2
	adds r5, r0, r5
	ldr r0, _0802F114 @ =gUnknown_03003E84
	adds r5, #4
	ldr r0, [r0]
	bl nullsub_1
	subs r7, #1
	bhs _0802EF60
	cmp r6, #0
	beq _0802F008
	adds r0, r6, #0
	b _0802EFE2
_0802F008:
	movs r0, #0
	b _0802EFE2

	thumb_func_start sub_802F00C
sub_802F00C: @ 0x0802F00C
	push {r3, lr}
	adds r1, r0, #0
	ldr r0, _0802F114 @ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	subs r1, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	lsrs r2, r2, #0x1c
	cmp r2, #6
	bhs _0802F046
	add r3, pc, #0x4 @ =_0802F030
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0802F030:
	.byte 0x0A
_0802F031:
	.byte 0x02
_0802F032:
	.byte 0x0A
_0802F033:
	.byte 0x0A
_0802F034:
	.byte 0x05
_0802F035:
	.byte 0x08
loc_802f036:
	adds r1, r0, #0
	adds r1, #0x10
	b _0802F046
loc_802f03c:
	adds r1, r0, #0
	adds r1, #8
	b _0802F046
loc_802f042:
	adds r1, r0, #0
	adds r1, #8
_0802F046:
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3

	non_word_aligned_thumb_func_start sub_802F04E
sub_802F04E: @ 0x0802F04E
	subs r1, r0, #4
	ldr r0, _0802F114 @ =gUnknown_03003E84
	push {r4, lr}
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	movs r4, #0
	lsrs r2, r2, #0x1c
	cmp r2, #9
	bhs _0802F0A4
	add r3, pc, #0x8 @ =_0802F074
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0802F074:
	.byte 0x18
_0802F075:
	.byte 0x05
_0802F076:
	.byte 0x09
_0802F077:
	.byte 0x18
_0802F078:
	.byte 0x0D
_0802F079:
	.byte 0x11
_0802F07A:
	.byte 0x18
_0802F07B:
	.byte 0x18
_0802F07C:
	.byte 0x15, 0x00
loc_802f07e:
	adds r1, r0, #0
	adds r1, #0x10
	movs r4, #0xc
	b _0802F0A4
loc_802f086:
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #8
	b _0802F0A4
loc_802f08e:
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b _0802F0A4
loc_802f096:
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b _0802F0A4
loc_802f09e:
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
_0802F0A4:
	adds r0, r1, #0
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, r0, r4
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802F0B8
sub_802F0B8: @ 0x0802F0B8
	push {r3, lr}
	subs r1, r0, #4
	ldr r0, _0802F114 @ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0]
	add sp, #4
	pop {r3}
	lsls r0, r0, #4
	lsrs r0, r0, #2
	bx r3

	thumb_func_start sub_802F0D4
sub_802F0D4: @ 0x0802F0D4
	adds r1, r0, #0
	movs r0, #0
	push {r4}
	b _0802F0DE
_0802F0DC:
	adds r1, #1
_0802F0DE:
	ldrb r2, [r1]
	cmp r2, #0
	beq _0802F0EE
	movs r3, #0
	ldrsb r2, [r1, r3]
	subs r2, #1
	cmp r2, #9
	bls _0802F0DC
_0802F0EE:
	subs r1, #1
	movs r2, #1
	b _0802F100
_0802F0F4:
	muls r3, r2, r3
	adds r0, r3, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	subs r1, #1
_0802F100:
	ldrb r3, [r1]
	cmp r3, #0
	beq _0802F110
	movs r3, #0
	ldrsb r4, [r1, r3]
	subs r3, r4, #1
	cmp r3, #9
	bls _0802F0F4
_0802F110:
	pop {r4}
	bx lr
	.align 2, 0
_0802F114: .4byte gUnknown_03003E84

	thumb_func_start sub_802F118
sub_802F118: @ 0x0802F118
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bne _0802F134
	movs r0, #0xd4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802F134
	adds r0, r4, #0
_0802F12C:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802F134:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802F518 @ =_0803EBF4
	adds r5, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc4
	str r0, [sp, #8]
	movs r0, #0x12
	strh r0, [r4, #4]
	adds r5, #0x80
	ldr r0, [r5, #4]
	ldr r1, _0802F51C @ =0xF000FFFF
	adds r6, r4, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x7c]
	movs r1, #0xf
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0x11
	str r0, [r5, #0x1c]
	adds r6, #0xa0
	movs r7, #0
	str r7, [r5, #0x24]
	strh r7, [r6, #2]
	strh r7, [r6, #8]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r6, #0xa]
	movs r1, #0xa
	strb r1, [r0, #0xd]
	strb r7, [r0, #0xc]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r5, #0xc]
	movs r0, #1
	bl sub_8040594
	adds r0, r1, #0
	adds r0, #0x2d
	add r3, sp, #0
	strh r0, [r3, #4]
	ldrh r0, [r6, #8]
	ldr r2, _0802F520 @ =gUnknown_080414B8
	lsls r1, r0, #0x10
	str r1, [r5, #0x2c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl sub_803B92C
	add r2, pc, #0x378 @ =_0802F524
	ldm r2, {r2, r3}
	bl sub_803B940
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0xc]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #8]
	str r7, [r0]
	str r7, [r0, #4]
	adds r0, r4, #0
	b _0802F12C

	non_word_aligned_thumb_func_start sub_802F1CE
sub_802F1CE: @ 0x0802F1CE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802F518 @ =_0803EBF4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802F1EA
	adds r0, r4, #0
	bl sub_803DA18
_0802F1EA:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802F1F0
sub_802F1F0: @ 0x0802F1F0
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne _0802F20A
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
_0802F204:
	add sp, #4
	pop {r3}
	bx r3
_0802F20A:
	bl sub_801DD40
	b _0802F204

	thumb_func_start sub_802F210
sub_802F210: @ 0x0802F210
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne _0802F222
	movs r0, #1
_0802F21C:
	add sp, #4
	pop {r3}
	bx r3
_0802F222:
	bl sub_801DF50
	b _0802F21C

	thumb_func_start sub_802F228
sub_802F228: @ 0x0802F228
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x19
	bne _0802F2AA
	ldr r2, [r2, #4]
	movs r3, #0xa0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r3, r0]
	ldr r4, _0802F52C @ =0x00002710
	movs r3, #0
	cmp r2, r4
	bne _0802F254
	ldr r2, _0802F530 @ =0x00000253
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F254:
	ldr r4, _0802F534 @ =0x00002712
	cmp r2, r4
	bne _0802F26C
	movs r2, #0xff
	adds r2, #0xd5
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F26C:
	ldr r4, _0802F538 @ =0x0000021D
	cmp r2, r4
	blo _0802F28A
	ldr r4, _0802F53C @ =0x00000245
	cmp r2, r4
	bhs _0802F28A
	movs r2, #0x4d
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F28A:
	movs r4, #0xff
	adds r4, #0x54
	cmp r2, r4
	blo _0802F2AC
	movs r4, #0x87
	lsls r4, r4, #2
	cmp r2, r4
	bhs _0802F2AC
	movs r2, #0xa1
	lsls r2, r2, #2
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
_0802F2AA:
	b _0802F2BC
_0802F2AC:
	movs r2, #0x57
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
_0802F2BC:
	bl sub_801E2DA
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802F2C6
sub_802F2C6: @ 0x0802F2C6
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802F2DA
	movs r1, #0
	bl sub_80401E4
_0802F2DA:
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802F2E8
	movs r1, #0
	bl sub_80401E4
_0802F2E8:
	movs r4, #0
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	adds r6, r4, #0
	adds r2, r4, #0
	adds r4, r5, #0
	adds r4, #0xa0
	strh r2, [r4, #2]
	ldrh r0, [r4]
	ldr r1, _0802F52C @ =0x00002710
	cmp r0, r1
	bne _0802F338
	ldr r0, _0802F540 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #0x41
	bl sub_8028C2E
	ldr r0, _0802F544 @ =gUnknown_03003D2C
	movs r1, #4
	ldr r0, [r0]
	adds r0, #0xac
	bl modify_player_health
_0802F330:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802F338:
	ldr r1, _0802F534 @ =0x00002712
	cmp r0, r1
	bne _0802F36A
	ldr r0, _0802F540 @ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	movs r0, #0xb8
	ldrsb r1, [r0, r5]
	ldr r0, _0802F544 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	bics r0, r2
	str r0, [r1, #0x14]
_0802F368:
	b _0802F330
_0802F36A:
	ldr r1, _0802F538 @ =0x0000021D
	ldr r5, _0802F548 @ =gUnknown_03003478
	cmp r0, r1
	blo _0802F450
	ldr r1, _0802F53C @ =0x00000245
	cmp r0, r1
	bhs _0802F450
	ldr r0, _0802F540 @ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r7, _0802F54C @ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802F550 @ =gUnknown_03003454
	movs r3, #2
	movs r1, #1
	ldr r0, [r0]
	bl sub_8017A0A
	adds r0, r7, #0
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	str r6, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r7, _0802F550 @ =gUnknown_03003454
	movs r3, #2
	movs r1, #1
	ldr r0, [r7]
	bl sub_8017A0A
	ldr r0, _0802F54C @ =gUnknown_03003E88
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, _0802F554 @ =0x000004EC
	str r6, [r0, #4]
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	strh r6, [r0, #0xc]
	movs r6, #2
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F54C @ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F544 @ =gUnknown_03003D2C
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023B22
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802F368
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	lsrs r0, r0, #5
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	orrs r1, r2
	str r1, [r5, r0]
	b _0802F330
_0802F450:
	b _0802F452
_0802F452:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x64
	bl sub_803DA9C
	ldrh r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802F47C
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	movs r0, #1
	lsls r0, r2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	orrs r0, r2
	str r0, [r5, r1]
_0802F47C:
	ldrh r1, [r4]
	cmp r1, #0xc6
	blo _0802F4BE
	cmp r1, #0xe4
	bhs _0802F4BE
	ldr r0, _0802F558 @ =gUnknown_0300344C
	subs r1, #0x26
	ldr r0, [r0]
	movs r3, #0xff
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	ldrh r7, [r2, #4]
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	lsls r1, r7
	adds r1, r5, r1
	ldr r1, [r1, r4]
	ldr r2, [r2, #0xc]
	str r6, [sp]
	adds r2, r2, r1
	str r2, [sp, #4]
	movs r2, #0
	ldr r1, _0802F55C @ =0x000004E6
	bl sub_803F528
	ldr r0, _0802F540 @ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	b _0802F5AA
_0802F4BE:
	movs r0, #0xff
	adds r0, #0x54
	cmp r1, r0
	blo _0802F5AA
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	bhs _0802F5AA
	adds r0, r1, #0
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	movs r0, #0
	cmp r1, #0
	beq _0802F504
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F506
_0802F504:
	movs r0, #1
_0802F506:
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	b _0802F560
	.align 2, 0
_0802F518: .4byte _0803EBF4
_0802F51C: .4byte 0xF000FFFF
_0802F520: .4byte gUnknown_080414B8
_0802F524: .4byte 0x00010000
_0802F528: .4byte 0x00000000
_0802F52C: .4byte 0x00002710
_0802F530: .4byte 0x00000253
_0802F534: .4byte 0x00002712
_0802F538: .4byte 0x0000021D
_0802F53C: .4byte 0x00000245
_0802F540: .4byte gUnknown_0300345C
_0802F544: .4byte gUnknown_03003D2C
_0802F548: .4byte gUnknown_03003478
_0802F54C: .4byte gUnknown_03003E88
_0802F550: .4byte gUnknown_03003454
_0802F554: .4byte 0x000004EC
_0802F558: .4byte gUnknown_0300344C
_0802F55C: .4byte 0x000004E6
_0802F560:
	lsls r4, r7
	cmp r1, #0
	beq _0802F570
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F576
_0802F570:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F576:
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	cmp r1, #0
	beq _0802F596
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F59C
_0802F596:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F59C:
	adds r2, #0xff
	adds r2, #0x58
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r1, #0x1b
	lsrs r4, r4, #0x1b
	b _0802F5AC
_0802F5AA:
	b _0802F61C
_0802F5AC:
	movs r2, #1
	lsls r2, r4
	cmp r1, #0
	beq _0802F5BE
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r2
	beq _0802F5C4
_0802F5BE:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F5C4:
	ldr r1, _0802F864 @ =gUnknown_0300344C
	ldr r4, [r1]
	lsls r1, r3, #1
	ldr r2, [r4, #4]
	adds r1, #0xcd
	ldrh r7, [r2, #4]
	ldrb r3, [r4, #9]
	ldr r5, [r2, #8]
	lsls r1, r7
	adds r1, r5, r1
	lsls r3, r3, #2
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	adds r1, r2, r1
	cmp r0, #4
	bhs _0802F5FC
	movs r2, #4
	subs r2, r2, r0
	str r2, [sp, #8]
	movs r2, #0
	str r1, [sp, #4]
	movs r3, #0xff
	adds r0, r4, #0
	ldr r1, _0802F868 @ =0x000004E7
	str r6, [sp]
	bl sub_803F528
	b _0802F60E
_0802F5FC:
	str r1, [sp, #4]
	movs r1, #0x9d
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	str r6, [sp]
	bl sub_803F528
_0802F60E:
	ldr r0, _0802F86C @ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
_0802F61C:
	ldr r7, _0802F870 @ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r4, #2
	adds r3, r4, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0802F874 @ =gUnknown_03003454
	movs r1, #1
	ldr r0, [r5]
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r3, #0
	str r3, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r6, [r0, #4]
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b _0802F330

	non_word_aligned_thumb_func_start sub_802F6BA
sub_802F6BA: @ 0x0802F6BA
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	adds r4, r0, #0
	ldr r2, _0802F878 @ =0x00002710
	adds r4, #0x70
	movs r6, #0xa
	cmp r1, r2
	bne _0802F6E0
	ldr r1, _0802F87C @ =gUnknown_03003D2C
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r2, r1
	bne _0802F6E0
	strb r6, [r4, #0xd]
	b _0802F6E4
_0802F6E0:
	bl sub_802F2C6
_0802F6E4:
	ldrh r0, [r5]
	ldr r1, _0802F880 @ =0x00002712
	cmp r0, r1
	bne _0802F6EE
	strb r6, [r4, #0xd]
_0802F6EE:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802F6F4
sub_802F6F4: @ 0x0802F6F4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0xa0
	adds r4, r0, #0
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq _0802F7E8
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r1, _0802F884 @ =0x00001998
	adds r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r5]
	ldr r2, [r0, #0x3c]
	adds r2, r2, r1
	str r2, [r0, #0x3c]
	cmp r1, #0
	bge _0802F720
	rsbs r2, r1, #0
	b _0802F722
_0802F720:
	adds r2, r1, #0
_0802F722:
	ldr r3, _0802F888 @ =0x0001B330
	ldr r0, _0802F88C @ =gUnknown_03003EA0
	cmp r2, r3
	ldr r0, [r0]
	ble _0802F74C
	ldr r6, [r4, #0x30]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F890 @ =0x000011F1
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _0802F78E
_0802F74C:
	ldr r1, _0802F894 @ =0x0000B330
	ldr r6, [r4, #0x30]
	cmp r2, r1
	ble _0802F772
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F898 @ =0x000011F2
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _0802F78E
_0802F772:
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F89C @ =0x000011F3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
_0802F78E:
	ldr r0, [r5]
	cmp r0, #0
	ble _0802F7E8
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0x30]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	cmp r0, r1
	ble _0802F7E8
	adds r0, r4, #0
	adds r0, #0xc4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r7, #2]
	movs r1, #0x7d
	movs r0, #0xa
	strb r0, [r1, r4]
	ldr r0, _0802F88C @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802F7D4
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802F7D4:
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x18]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F7EA
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	b _0802F7EA
_0802F7E8:
	b _0802F812
_0802F7EA:
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xbd
	beq _0802F812
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	movs r3, #1
	lsls r3, r3, #0xb
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbd
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802F812
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802F812:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802F818
sub_802F818: @ 0x0802F818
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802F840
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802F840:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0802F864: .4byte gUnknown_0300344C
_0802F868: .4byte 0x000004E7
_0802F86C: .4byte gUnknown_0300345C
_0802F870: .4byte gUnknown_03003E88
_0802F874: .4byte gUnknown_03003454
_0802F878: .4byte 0x00002710
_0802F87C: .4byte gUnknown_03003D2C
_0802F880: .4byte 0x00002712
_0802F884: .4byte 0x00001998
_0802F888: .4byte 0x0001B330
_0802F88C: .4byte gUnknown_03003EA0
_0802F890: .4byte 0x000011F1
_0802F894: .4byte 0x0000B330
_0802F898: .4byte 0x000011F2
_0802F89C: .4byte 0x000011F3

	thumb_func_start sub_802F8A0
sub_802F8A0: @ 0x0802F8A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	movs r1, #3
	lsls r1, r1, #0x11
	subs r1, r0, r1
	movs r0, #0xa2
	ldrh r0, [r0, r4]
	adds r5, r4, #0
	adds r5, #0x58
	movs r3, #0
	cmp r0, #0
	sub sp, #8
	beq _0802F8D2
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r6, [r0]
	ldr r2, [r5]
	adds r2, r2, r6
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r0, #4]
	adds r0, r2, r0
	str r0, [r5, #4]
_0802F8D2:
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r2, r2, r1
	cmp r0, #0
	blt _0802F906
	cmp r2, #0
	blt _0802F906
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp]
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0802F8FE
	adds r1, r5, #0
	bl sub_803FF24
_0802F8FE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0802F906:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	adds r5, r3, #0
	mov r1, sp
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b _0802F8FE

	non_word_aligned_thumb_func_start sub_802F926
sub_802F926: @ 0x0802F926
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802F938
	movs r1, #1
	bl sub_80401E4
_0802F938:
	ldr r0, _0802FBD4 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802F954
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802F954:
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F968
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802F968:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802F976
	bl sub_8000914
_0802F976:
	ldr r0, [r4, #0x2c]
	movs r5, #1
	ldrb r1, [r0, #5]
	cmp r1, #0x60
	beq _0802F99E
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsls r3, r5, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802F99E
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802F99E:
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802F9B8
	ldr r1, _0802FBD8 @ =gUnknown_03003D2C
	ldr r1, [r1]
	adds r1, #0x90
	ldrb r1, [r1]
	cmp r1, #6
	beq _0802F9B8
	movs r1, #1
	bl sub_80401E4
_0802F9B8:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #3
	str r1, [r4, #0x58]
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x5c]
	ldr r1, [r0, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x14]
	movs r0, #0xa2
	strh r5, [r0, r4]
	adds r1, r4, #0
	adds r1, #0x58
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802F9E8
sub_802F9E8: @ 0x0802F9E8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	sub sp, #4
	add r1, sp, #0x28
	ldr r6, [r5, #0xc]
	movs r7, #1
	lsls r7, r7, #0xe
	bics r6, r7
	ldm r1, {r0, r1}
	str r6, [r5, #0xc]
	ldr r6, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [r5, #0x34]
	lsrs r2, r3, #0x1f
	adds r2, r2, r3
	asrs r3, r2, #1
	adds r2, r4, #0
	lsls r6, r6, #0x10
	str r6, [r5, #0x30]
	adds r2, #0xa0
	strh r3, [r2, #0xa]
	lsrs r3, r0, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	strh r0, [r2, #8]
	str r1, [r5, #0x24]
	movs r1, #0x7d
	movs r0, #0
	strb r0, [r1, r4]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0802FA5A
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq _0802FA5A
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FA5A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802FA5A:
	ldr r0, _0802FBD4 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802FA76
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802FA76:
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802FA8A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802FA8A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802FA92
sub_802FA92: @ 0x0802FA92
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x80
	ldr r5, [r6, #0xc]
	ldr r3, [r2]
	ldr r2, [r2, #4]
	ldm r1, {r0, r1}
	sub sp, #4
	movs r7, #1
	lsls r7, r7, #0xe
	str r0, [r6, #0x30]
	str r1, [r6, #0x34]
	bics r5, r7
	str r5, [r6, #0xc]
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r2, [r6, #0x50]
	str r3, [r6, #0x4c]
	adds r1, r4, #0
	adds r5, r4, #0
	adds r5, #0xb0
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r2, [r5]
	ldr r1, [r1, #4]
	subs r0, r0, r2
	ldr r2, [r5, #4]
	str r0, [r6, #0x44]
	subs r1, r1, r2
	str r1, [r6, #0x48]
	movs r1, #0
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xc4
	bl sub_8018620
	adds r7, r4, #0
	adds r7, #0xc0
	ldr r0, [r7, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	add r2, pc, #0xEC @ =_0802FBDC
	ldm r2, {r2, r3}
	bl sub_803B940
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	add r2, pc, #0xD8 @ =_0802FBDC
	ldm r2, {r2, r3}
	bl sub_803B940
	str r0, [r7, #8]
	ldr r0, _0802FBE4 @ =0xFFFD0000
	movs r1, #0
	str r0, [r7]
	str r1, [r6, #0x3c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _0802FB3E
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #9]
	beq _0802FBA2
	cmp r0, #1
	beq _0802FBBA
	cmp r0, #2
	bne _0802FB3E
	movs r0, #0xff
	adds r0, #0xd3
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xa
	strb r0, [r5, #8]
_0802FB3E:
	adds r1, r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq _0802FB6A
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FB6A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802FB6A:
	ldr r0, _0802FBD4 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802FB86
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802FB86:
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802FB9A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802FB9A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802FBA2:
	movs r0, #0xff
	adds r0, #0xd5
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r5, #8]
	b _0802FB3E
_0802FBBA:
	movs r0, #0xff
	adds r0, #0xd4
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #5
	strb r0, [r5, #8]
	b _0802FB3E
	.align 2, 0
_0802FBD4: .4byte gUnknown_03003EA0
_0802FBD8: .4byte gUnknown_03003D2C
_0802FBDC: .4byte 0x00020000
_0802FBE0: .4byte 0x00000000
_0802FBE4: .4byte 0xFFFD0000

	thumb_func_start sub_802FBE8
sub_802FBE8: @ 0x0802FBE8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802FC14
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802FC14:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FC38
sub_802FC38: @ 0x0802FC38
	push {r4, lr}
	adds r4, r0, #0
	bne _0802FC50
	movs r0, #0xb8
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802FC50
	adds r0, r4, #0
_0802FC4A:
	pop {r4}
	pop {r3}
	bx r3
_0802FC50:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802FFD8 @ =_0803E3D4
	ldr r2, _0802FFDC @ =0xF000FFFF
	str r0, [r4]
	movs r0, #6
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x36C @ =_0802FFE0
	str r1, [r4, #0x4c]
	movs r1, #0
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	subs r0, #0x10
	movs r2, #0x1e
	strb r2, [r0, #0xd]
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	b _0802FC4A

	non_word_aligned_thumb_func_start sub_802FC86
sub_802FC86: @ 0x0802FC86
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802FFD8 @ =_0803E3D4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802FCA2
	adds r0, r4, #0
	bl sub_803DA18
_0802FCA2:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FCA8
sub_802FCA8: @ 0x0802FCA8
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802FCB4
sub_802FCB4: @ 0x0802FCB4
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802FCC0
sub_802FCC0: @ 0x0802FCC0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802FCE8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802FCE8:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802FD0C
sub_802FD0C: @ 0x0802FD0C
	adds r2, r1, #0
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xf
	adds r1, #0xa0
	cmp r2, #0x23
	beq _0802FD3E
	cmp r2, #0x24
	beq _0802FD58
	cmp r2, #0x25
	bne _0802FD3C
	movs r2, #0xff
	adds r2, #0x56
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
_0802FD3C:
	bx lr
_0802FD3E:
	movs r2, #0x1f
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	movs r2, #0x1e
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr
_0802FD58:
	ldr r2, _0802FFF4 @ =0x000002D2
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr

	non_word_aligned_thumb_func_start sub_802FD72
sub_802FD72: @ 0x0802FD72
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0x80
	adds r5, r0, #0
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bne _0802FE52
	ldr r0, [r5, #0x7c]
	movs r4, #0
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0802FDB0
	ldr r0, _0802FFF8 @ =gUnknown_03003454
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r2, #0x18]
	str r4, [r0, #0x18]
_0802FDB0:
	ldr r1, _0802FFDC @ =0xF000FFFF
	ldr r0, [r7, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r7, #0xc]
	str r3, [r7, #0x28]
	str r3, [r7, #0x2c]
	ldr r0, _0802FFFC @ =0x0000FFFF
	strh r4, [r5, #0x26]
	strh r0, [r5, #0x22]
	strh r4, [r5, #0x24]
	strh r0, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bpl _0802FE08
	ldr r0, _08030000 @ =gUnknown_03003EA4
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r6, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r6, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b _0802FE22
_0802FE08:
	ldr r0, [r6, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r6, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
_0802FE22:
	ldr r0, [r5, #0x2c]
	adds r6, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0xa0
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, _0802FFF8 @ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r7, #0x20]
	cmp r0, r1
	ble _0802FE54
	add r3, sp, #0
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r6, #0x12]
	b _0802FE5E
_0802FE52:
	b _0802FFD2
_0802FE54:
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r6, #0x12]
_0802FE5E:
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r6, #0x10]
	bl sub_803BE1C
	ldrh r1, [r6, #0x10]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _0802FE8E
	bl sub_803BE1C
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	b _0802FE9C
_0802FE8E:
	bl sub_803BE1C
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r6, #0x12]
_0802FE9C:
	ldrh r1, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	movs r7, #0x80
	ldrb r1, [r0, #5]
	cmp r1, #0x20
	beq _0802FECA
	ldrh r1, [r0, #0x2a]
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r4
	strh r1, [r0, #0x2a]
	movs r2, #0x20
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FECA
	orrs r1, r7
	str r1, [r0]
_0802FECA:
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	ldr r4, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r4, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r1, r0, #0x1e
	bmi _0802FF78
	movs r6, #1
	ldr r1, [r4, #0x3c]
	lsls r6, r6, #9
	cmp r1, #0
	ldr r2, _08030004 @ =gUnknown_03003EA0
	blt _0802FF12
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _0802FF12
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0802FF12
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0802FF28
_0802FF12:
	lsls r0, r0, #0x16
	bmi _0802FF78
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r7
	str r0, [r4]
	b _0802FF78
_0802FF28:
	lsls r0, r0, #0x16
	bpl _0802FF42
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r2, #0x20
	bics r0, r6
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0802FF42:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
_0802FF78:
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802FF8C
	bl sub_8000914
_0802FF8C:
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _0802FFA8
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_0802FFA8:
	ldr r4, _08030008 @ =gUnknown_0300345C
	movs r5, #0x93
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _0802FFD2
	movs r0, #0x25
	ldr r1, [r4]
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne _0802FFD2
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_8028C2E
_0802FFD2:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0802FFD8: .4byte _0803E3D4
_0802FFDC: .4byte 0xF000FFFF
_0802FFE0: .4byte 0x64726942
_0802FFE4: .4byte 0x72635320
_0802FFE8: .4byte 0x20747069
_0802FFEC: .4byte 0x756F7247
_0802FFF0: .4byte 0x00000070
_0802FFF4: .4byte 0x000002D2
_0802FFF8: .4byte gUnknown_03003454
_0802FFFC: .4byte 0x0000FFFF
_08030000: .4byte gUnknown_03003EA4
_08030004: .4byte gUnknown_03003EA0
_08030008: .4byte gUnknown_0300345C

	thumb_func_start sub_803000C
sub_803000C: @ 0x0803000C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	sub sp, #0xc
	adds r1, r0, #0
	beq _08030104
	movs r0, #0x5a
	asrs r1, r1, #0x10
	cmp r1, #0x5a
	bge _08030026
	adds r0, r1, #0
_08030026:
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	adds r6, r4, #0
	add r3, sp, #0
	strh r0, [r3, #4]
	adds r6, #0xa0
	ldrh r0, [r6, #0x10]
	ldr r2, _080301D0 @ =gUnknown_080414B8
	lsls r1, r0, #0x10
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl sub_803B92C
	add r2, pc, #0x17C @ =_080301D4
	ldm r2, {r2, r3}
	bl sub_803B940
	str r0, [sp, #8]
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	ldr r7, [r5, #0x28]
	muls r0, r7, r0
	bl sub_8040528
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #0x2c]
	adds r1, r7, r0
	str r1, [r5, #0x28]
	movs r1, #3
	lsls r1, r1, #0x10
	cmp r0, r1
	bge _08030090
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #0x2c]
_08030090:
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrb r1, [r0, #5]
	cmp r1, #0x20
	beq _080300B6
	ldrh r1, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r1, r3
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r3, #0x20
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi _080300B6
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
_080300B6:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	blt _080300CC
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	blt _080300CC
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _08030116
_080300CC:
	str r2, [r4, #0x58]
	str r2, [r4, #0x5c]
	str r2, [r5, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r3, [r1, #0x2c]
	ldr r6, [r1, #0x30]
	subs r3, r2, r3
	subs r2, r2, r6
	ldr r6, [r1, #0x34]
	adds r0, r1, #0
	adds r6, r6, r3
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	adds r0, #0x34
	adds r6, r6, r2
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r3, r6, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	b _08030106
_08030104:
	b _08030110
_08030106:
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b _08030116
_08030110:
	adds r0, r4, #0
	bl sub_801EBCA
_08030116:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _08030176
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r1, r0, #0x1f
	beq _08030176
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08030176
	bl sub_803BE1C
	lsls r0, r0, #0x19
	bne _08030176
	ldr r0, _080301DC @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0x88 @ =_080301E0
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r3, #0x20
	orrs r0, r3
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08030176:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803017E
sub_803017E: @ 0x0803017E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _080301AA
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080301AA:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_080301D0: .4byte gUnknown_080414B8
_080301D4: .4byte 0x00010000
_080301D8: .4byte 0x00000000
_080301DC: .4byte gUnknown_03003EA0
_080301E0: .4byte 0x0010BE20
_080301E4: .4byte 0x00000000

	thumb_func_start sub_80301E8
sub_80301E8: @ 0x080301E8
	push {r4, r5, r6}
	ldr r1, [r0, #0xc]
	movs r3, #0x20
	cmp r1, #0
	beq _0803021A
	adds r4, r0, #4
	ldm r4, {r2, r4}
	ldr r6, [r0]
	adds r5, r4, #0
	lsrs r5, r2
	orrs r5, r6
	str r5, [r0]
	adds r5, r1, r2
	cmp r5, #0x20
	bls _08030216
	subs r2, r3, r2
	subs r1, r1, r2
	str r1, [r0, #0xc]
	lsls r4, r2
	adds r0, #4
	stm r0!, {r3, r4}
_08030212:
	pop {r4, r5, r6}
	bx lr
_08030216:
	adds r1, r2, r1
	str r1, [r0, #4]
_0803021A:
	ldr r1, [r0, #0x10]
	adds r2, r1, #4
	str r2, [r0, #0x10]
	ldr r1, [r1]
	ldr r2, [r0, #4]
	cmp r2, #0x20
	bhs _0803023E
	adds r5, r1, #0
	ldr r4, [r0]
	lsrs r5, r2
	orrs r4, r5
	str r4, [r0]
	subs r4, r3, r2
	lsls r1, r4
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #4]
	b _08030212
_0803023E:
	adds r0, #8
	stm r0!, {r1, r3}
	b _08030212

	thumb_func_start sub_8030244
sub_8030244: @ 0x08030244
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08030594 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl _080180BE
	ldr r4, _08030598 @ =gUnknown_03003460
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq _08030272
_08030264:
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne _08030264
_08030272:
	ldr r1, _0803059C @ =gUnknown_03003D20
	movs r0, #0
	ldr r2, _080305A0 @ =gUnknown_03003478
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0x10
	bics r1, r0
	str r1, [r2]
	movs r5, #0
_08030284:
	movs r4, #0
	lsls r0, r5, #3
	adds r6, r0, r7
_0803028A:
	lsls r0, r4, #2
	adds r1, r6, r0
	ldr r0, _080305A4 @ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0x6d
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0803028A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08030284
	ldrb r0, [r7]
	cmp r0, #0
	bne _080302C4
	bl sub_802383A
	movs r0, #0x10
	bl sub_8018386
_080302BE:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080302C4:
	movs r0, #2
	bl sub_8018386
	b _080302BE

	thumb_func_start sub_80302CC
sub_80302CC: @ 0x080302CC
	push {r3, r4, r5, r6, r7, lr}
	mov ip, r1
	cmp r1, #0
	beq _080302DE
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	strb r1, [r0]
_080302DE:
	movs r2, #0
	movs r7, #3
	lsls r7, r7, #0xa
_080302E4:
	ldrb r1, [r0]
	movs r4, #1
	cmp r1, r2
	bne _080302EE
	movs r4, #0
_080302EE:
	lsls r1, r2, #3
	adds r5, r1, r0
	adds r5, #0xff
	adds r5, #0x41
	ldr r3, [r5, #0x2c]
	ldrh r6, [r3, #0x26]
	lsls r1, r6, #0x14
	lsrs r1, r1, #0x1e
	cmp r1, r4
	beq _08030326
	lsls r1, r4, #0x1e
	lsrs r1, r1, #0x14
	bics r6, r7
	orrs r6, r1
	adds r4, r6, #0
	strh r4, [r3, #0x26]
	ldr r4, [r3]
	movs r6, #0x80
	orrs r4, r6
	str r4, [r3]
	ldr r3, [r5, #0x30]
	ldrh r4, [r3, #0x26]
	bics r4, r7
	orrs r1, r4
	strh r1, [r3, #0x26]
	ldr r1, [r3]
	orrs r1, r6
	str r1, [r3]
_08030326:
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #2
	blo _080302E4
	mov r1, ip
	cmp r1, #0
	beq _08030340
	ldr r0, _08030594 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_08030340:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8030346
sub_8030346: @ 0x08030346
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r0, sp, #0x10
	bl sub_80046F8
	ldr r0, [sp, #0x20]
	movs r4, #0
	strb r4, [r0]
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	add r0, pc, #0x244 @ =_080305A8
	bl sub_800EF60
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0x3c
	movs r0, #0x70
	str r0, [sp, #4]
	str r2, [sp]
	ldr r0, [sp, #0x20]
	movs r1, #0x10
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #1
	adds r3, r4, #0
	adds r0, #4
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _080305B8 @ =0x000004E3
	bl sub_80138E2
	movs r4, #0
	movs r7, #0xe
_080303A2:
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r2, r4, #5
	movs r0, #0x50
	str r0, [sp, #4]
	adds r2, #0x52
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r1, [sp, #0x20]
	lsls r0, r0, #3
	adds r5, r0, r1
	adds r5, #0x7c
	movs r1, #0
	movs r2, #0
	adds r3, r7, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _080305BC @ =0x000004E4
	adds r3, r6, #0
	movs r2, #0
	adds r1, r4, r0
	adds r0, r5, #0
	bl sub_80138E2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _080303A2
	movs r7, #0
_080303EE:
	lsls r0, r7, #5
	adds r0, #0x50
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r7, #3
	movs r5, #0
	adds r1, r0, r1
	str r1, [sp, #0x18]
_080303FE:
	ldr r0, _080305A4 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x18]
	lsls r2, r5, #2
	adds r6, r1, r2
	adds r6, #0xff
	adds r6, #0x41
	ldr r1, _080305C0 @ =0x00000CA9
	str r0, [r6, #0x2c]
	adds r1, r5, r1
	bl sub_800065C
	lsls r1, r5, #6
	adds r1, #0xe
	ldr r4, [r6, #0x2c]
	ldr r0, [sp, #0x1c]
	add r3, sp, #0
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
	lsls r2, r1, #0x10
	ldrh r1, [r3, #0xe]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	blt _08030476
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x14
	cmp r0, r1
	bge _08030476
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _08030476
	movs r1, #5
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x15
	cmp r0, r1
	blt _08030496
_08030476:
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _080304F0
	ldr r0, _080305C4 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _080304F0
_08030496:
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080304B8
	ldr r0, _080305C4 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_080304B8:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_080304F0:
	ldr r0, [r6, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08030510
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08030510:
	ldr r4, [r6, #0x2c]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803054C
	ldr r0, _080305C8 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803053A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803053A
	ldr r0, _080305C4 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803053A:
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803054C
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
_0803054C:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	bhs _08030558
	b _080303FE
_08030558:
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #2
	bhs _08030564
	b _080303EE
_08030564:
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	movs r1, #0
	ldr r0, [sp, #0x20]
	bl sub_80302CC
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08030594: .4byte gUnknown_0300345C
_08030598: .4byte gUnknown_03003460
_0803059C: .4byte gUnknown_03003D20
_080305A0: .4byte gUnknown_03003478
_080305A4: .4byte gUnknown_03003448
_080305A8: .4byte 0x654D6742
_080305AC: .4byte 0x6147756E
_080305B0: .4byte 0x766F656D
_080305B4: .4byte 0x00007265
_080305B8: .4byte 0x000004E3
_080305BC: .4byte 0x000004E4
_080305C0: .4byte 0x00000CA9
_080305C4: .4byte gUnknown_03003EA0
_080305C8: .4byte gUnknown_03003EB8

	thumb_func_start sub_80305CC
sub_80305CC: @ 0x080305CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x17c
	add r0, sp, #4
	adds r5, r0, #0
	mov r6, sp
	bl sub_80143E0
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x6d
	movs r2, #0x78
	adds r0, r6, #0
	adds r0, #0x7c
	ldr r3, _08030658 @ =sub_80143E0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_8030346
	movs r7, #0
	mvns r7, r7
_080305F6:
	bl sub_800EF2A
	ldr r0, _0803065C @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08030608
	ldrh r1, [r0, #6]
_08030608:
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _08030618
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_80302CC
_08030618:
	lsls r0, r4, #0x18
	bpl _08030624
	movs r1, #1
	adds r0, r6, #0
	bl sub_80302CC
_08030624:
	lsls r0, r4, #0x1f
	beq _080305F6
	ldr r0, _08030660 @ =gUnknown_0300345C
	ldr r0, [r0]
	bl sub_8028C2E
	adds r0, r6, #0
	bl sub_8030244
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r6, #0
	adds r0, #0xf4
	ldr r3, _08030664 @ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	add sp, #0x17c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08030658: .4byte sub_80143E0
_0803065C: .4byte gUnknown_03003444
_08030660: .4byte gUnknown_0300345C
_08030664: .4byte sub_8014436

	thumb_func_start sub_8030668
sub_8030668: @ 0x08030668
	push {r4, lr}
	adds r4, r0, #0
	bne _08030680
	movs r0, #0xe0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08030680
	adds r0, r4, #0
_0803067A:
	pop {r4}
	pop {r3}
	bx r3
_08030680:
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _08030A64 @ =_0803E950
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3D8 @ =_08030A68
	str r0, [r4, #0x4c]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _08030A80 @ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _0803067A

	thumb_func_start sub_80306B4
sub_80306B4: @ 0x080306B4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08030A64 @ =_0803E950
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _080306D0
	adds r0, r4, #0
	bl sub_803DA18
_080306D0:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80306D6
sub_80306D6: @ 0x080306D6
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	bne _080306EA
	bl sub_80294EE
_080306E4:
	add sp, #4
	pop {r3}
	bx r3
_080306EA:
	bl sub_8029290
	b _080306E4

	thumb_func_start sub_80306F0
sub_80306F0: @ 0x080306F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	subs r0, #0x27
	cmp r0, #0xc
	sub sp, #0x1c
	bhs _08030708
	add r3, pc, #0x10 @ =_08030710
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08030708:
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3
_08030710:
	.byte 0x0F, 0x00
_08030712:
	.byte 0x64, 0x00
_08030714:
	.byte 0xBA, 0x00
_08030716:
	.byte 0x0F, 0x01
_08030718:
	.byte 0x64, 0x01
_0803071A:
	.byte 0xD1, 0x01
_0803071C:
	.byte 0x11, 0x02
_0803071E:
	.byte 0x51, 0x02
_08030720:
	.byte 0xA9, 0x02
_08030722:
	.byte 0xFF, 0x02
_08030724:
	.byte 0x3F, 0x03
_08030726:
	.byte 0x94, 0x03
loc_8030728:
	movs r2, #3
	movs r1, #4
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x1e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfe
	str r0, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	adds r0, #0xff
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xb
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x1f
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xd
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 @ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	lsrs r2, r3, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_80307d2:
	movs r2, #3
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x4c
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #2
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x4f
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x52
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x49
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #7
	lsls r2, r2, #0x11
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 @ =0xFFFF007F
	adds r1, #0x28
	ands r1, r2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_803087e:
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x42
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x3c
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x45
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 @ =0xFFFF007F
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030928:
	movs r2, #3
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x36
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x30
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x39
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x41
	lsls r2, r2, #0x14
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	movs r2, #0xb
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030A84 @ =0xFFFF007F
	adds r1, #0x23
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_80309d2:
	movs r2, #1
	movs r1, #5
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _08030A88 @ =0x000001FF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08030A8C @ =0x00000202
	movs r3, #0xf
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	adds r0, #1
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A90 @ =0x00017330
	lsls r3, r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #3
	lsls r2, r2, #0x12
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsrs r1, r1, #7
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	ldr r2, _08030A84 @ =0xFFFF007F
	lsls r1, r1, #7
	adds r1, #0x41
	ands r1, r2
	lsrs r2, r3, #6
	adds r1, r1, r2
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x10]
	ldr r2, _08030A94 @ =0xE00FFFFF
	ands r1, r2
	movs r2, #0x43
	lsls r2, r2, #0x15
	adds r1, r1, r2
	ldr r2, _08030A98 @ =0xFFF007FF
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #0xd
	b _08030A9C
	.align 2, 0
_08030A64: .4byte _0803E950
_08030A68: .4byte 0x736E6F4D
_08030A6C: .4byte 0x73726574
_08030A70: .4byte 0x72635320
_08030A74: .4byte 0x20747069
_08030A78: .4byte 0x756F7247
_08030A7C: .4byte 0x00000070
_08030A80: .4byte 0xF000FFFF
_08030A84: .4byte 0xFFFF007F
_08030A88: .4byte 0x000001FF
_08030A8C: .4byte 0x00000202
_08030A90: .4byte 0x00017330
_08030A94: .4byte 0xE00FFFFF
_08030A98: .4byte 0xFFF007FF
_08030A9C:
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsrs r1, r1, #0xb
	lsls r1, r1, #0xb
	adds r1, #0xa6
	str r1, [r0, #0x14]
	b _08030708
loc_8030aac:
	movs r2, #3
	movs r1, #0x18
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x18
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x1b
	strh r1, [r4, #0xe]
	movs r2, #0x1c
	strh r2, [r4, #0xa]
	movs r0, #0x1d
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x15
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	lsls r2, r2, #3
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x5a
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030b2c:
	movs r2, #3
	movs r1, #0x18
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xf
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x12
	strh r1, [r4, #0xe]
	movs r2, #0x13
	strh r2, [r4, #0xa]
	movs r0, #0x14
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xc
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x15
	adds r1, r1, r2
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r4, #0x70]
	lsls r2, r2, #3
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x5a
	ands r1, r2
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030bac:
	movs r2, #4
	movs r1, #8
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	movs r0, #0xff
	adds r0, #0x24
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #7
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x1b
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x27
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xff
	adds r0, #0x21
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x8d
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EDC @ =0x00010CD0
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #0x1b
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x64
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030c5c:
	movs r2, #3
	movs r1, #6
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x18
	movs r0, #0xff
	adds r0, #0xe8
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r5, #0x28
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0xe2
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0xeb
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, r1, #6
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x87
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EDC @ =0x00010CD0
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #7
	lsls r2, r2, #0x11
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030d08:
	movs r2, #2
	movs r1, #7
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xf8
	str r0, [sp]
	movs r2, #1
	movs r1, #0
	movs r3, #0x28
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xf5
	strh r1, [r4, #0xe]
	movs r2, #0xf6
	strh r2, [r4, #0xa]
	movs r0, #0xf7
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xf2
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x89
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EE0 @ =0x00015998
	movs r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #5
	lsls r2, r2, #0x12
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x3c
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030d88:
	movs r2, #3
	movs r1, #6
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x18
	movs r0, #0xff
	adds r0, #0x57
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r5, #0x28
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x5a
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0x60
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x1f
	lsls r2, r2, #0x15
	adds r1, r1, r2
	lsls r2, r5, #0xb
	str r2, [r4, #0x70]
	movs r2, #0xd
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	lsls r3, r5, #0xc
	adds r2, r2, r3
	str r2, [r0, #0xc]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	ldr r2, _08030ED8 @ =0xFFFF007F
	adds r1, #0x4b
	ands r1, r2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
loc_8030e32:
	movs r2, #3
	movs r1, #4
	movs r0, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	ldr r0, _08030EE4 @ =0x000002EF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	movs r3, #0x28
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xbb
	lsls r0, r0, #2
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08030EE8 @ =0x000002F5
	movs r3, #0xf
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	movs r1, #0xa8
	strh r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #0xff
	lsls r2, r2, #0x13
	bics r1, r2
	movs r2, #0x8f
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08030EE0 @ =0x00015998
	lsls r3, r3, #0xf
	str r2, [r4, #0x70]
	movs r2, #0x1b
	lsls r2, r2, #0x10
	str r2, [r0, #0x24]
	ldr r2, [r0, #0xc]
	lsrs r1, r1, #7
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r0, #0xc]
	ldr r2, _08030ED8 @ =0xFFFF007F
	lsls r1, r1, #7
	adds r1, #0x5a
	ands r1, r2
	movs r2, #0x19
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x30]
	b _08030708
	.align 2, 0
_08030ED8: .4byte 0xFFFF007F
_08030EDC: .4byte 0x00010CD0
_08030EE0: .4byte 0x00015998
_08030EE4: .4byte 0x000002EF
_08030EE8: .4byte 0x000002F5

	thumb_func_start sub_8030EEC
sub_8030EEC: @ 0x08030EEC
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r4, r0, #0
	ldr r0, [r6, #0x1c]
	adds r5, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08030F02
	cmp r0, #0x10
	bne _08030F0C
_08030F02:
	movs r0, #0
_08030F04:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08030F0C:
	ldr r0, [r6, #0xc]
	movs r7, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	cmp r0, #0
	beq _08030F2C
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r7, [r4, #0x34]
	movs r0, #0
	b _08030F04
_08030F2C:
	ldrh r0, [r5, #4]
	cmp r0, #0xb
	bne _08030F36
	movs r0, #0
	b _08030F04
_08030F36:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08030F4E
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08030F4E
	movs r2, #3
	lsls r2, r2, #0xf
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801F450
_08030F4E:
	movs r3, #0x97
	ldrsb r0, [r5, r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #2
	cmp r0, #6
	bhs _08030FD8
	add r3, pc, #0x4 @ =_08030F64
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08030F64:
	.byte 0x02
_08030F65:
	.byte 0x02
_08030F66:
	.byte 0x35
_08030F67:
	.byte 0x06
_08030F68:
	.byte 0x13
_08030F69:
	.byte 0x06
loc_8030f6a:
	adds r0, r4, #0
	bl sub_801F286
	b _08030FDE
loc_8030f72:
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	ldr r2, [sp, #0x10]
	subs r1, r1, r2
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08030FDE
loc_8030f8c:
	ldr r0, _0803107C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08030FC8
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08030FC8
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r2, [r0, #6]
	subs r1, r2, r1
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08030FDE
_08030FC8:
	adds r0, r4, #0
	bl sub_801F286
	b _08030FDE
loc_8030fd0:
	adds r0, r4, #0
	bl sub_801F286
	b _08030FDE
_08030FD8:
	adds r0, r4, #0
	bl sub_801F286
_08030FDE:
	movs r0, #0xb6
	ldrsb r0, [r0, r4]
	cmp r0, #0
	bgt _08031012
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08031080 @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_802B0CA
_08031012:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r7, [r4, #0x34]
	movs r0, #1
	b _08030F04

	thumb_func_start sub_8031020
sub_8031020: @ 0x08031020
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08031084 @ =0x8007FFFF
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08031080 @ =gUnknown_0300345C
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8031056
sub_8031056: @ 0x08031056
	ldr r1, _08031088 @ =gUnknown_03003E98
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl _08031076
	ldr r1, _08031080 @ =gUnknown_0300345C
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08031076:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_0803107C: .4byte gUnknown_03003458
_08031080: .4byte gUnknown_0300345C
_08031084: .4byte 0x8007FFFF
_08031088: .4byte gUnknown_03003E98

	thumb_func_start sub_803108C
sub_803108C: @ 0x0803108C
	push {r4, lr}
	adds r4, r0, #0
	bne _080310A4
	movs r0, #0xb4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080310A4
	adds r0, r4, #0
_0803109E:
	pop {r4}
	pop {r3}
	bx r3
_080310A4:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _080313D4 @ =_0803E89C
	ldr r2, _080313D8 @ =0xF000FFFF
	str r0, [r4]
	movs r0, #7
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x1e
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	add r1, pc, #0x314 @ =_080313DC
	str r1, [r4, #0x4c]
	movs r2, #0
	str r2, [r0, #0x28]
	adds r1, r4, #0
	adds r1, #0x70
	str r2, [r0, #0x2c]
	strb r3, [r1, #0xd]
	strb r2, [r1, #0xc]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _0803109E

	non_word_aligned_thumb_func_start sub_80310E6
sub_80310E6: @ 0x080310E6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080313D4 @ =_0803E89C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08031102
	adds r0, r4, #0
	bl sub_803DA18
_08031102:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8031108
sub_8031108: @ 0x08031108
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031114
sub_8031114: @ 0x08031114
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031120
sub_8031120: @ 0x08031120
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08031148
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08031148:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803116C
sub_803116C: @ 0x0803116C
	cmp r1, #0x26
	bne _0803118A
	movs r1, #0xf1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #0xf0
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r0, #0x70]
_0803118A:
	bx lr

	thumb_func_start sub_803118C
sub_803118C: @ 0x0803118C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r5, r0, #0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _0803127E
	ldr r0, [r5, #0x7c]
	ldr r7, _080313F4 @ =gUnknown_03003454
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	beq _080311C8
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r7]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	strh r3, [r2, #0x18]
	movs r2, #0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r2, [r0, #0x18]
_080311C8:
	ldr r1, _080313D8 @ =0xF000FFFF
	ldr r0, [r6, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r6, #0xc]
	lsrs r0, r1, #3
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	ldr r4, [r5, #0x2c]
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl _08031218
	ldr r0, _080313F8 @ =gUnknown_03003EA4
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r4, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b _08031232
_08031218:
	ldr r0, [r4, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
_08031232:
	ldr r0, [r5, #0x2c]
	adds r4, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r4, #0xa0
	str r0, [r4, #4]
	str r1, [r4]
	ldr r0, [r7]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r6, #0x20]
	cmp r0, r1
	ble _08031260
	add r3, sp, #0
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r4, #0x12]
	b _0803126A
_08031260:
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r4, #0x12]
_0803126A:
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r4, #0x10]
	bl sub_803BE1C
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _08031280
_0803127E:
	b _080313CC
_08031280:
	ldrh r1, [r4, #0x10]
	movs r3, #0x12
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _0803129E
	bl sub_803BE1C
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	b _080312AC
_0803129E:
	bl sub_803BE1C
	ldrh r1, [r4, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r4, #0x12]
_080312AC:
	ldr r7, _080313FC @ =gUnknown_03003EA0
	ldr r6, [r5, #0x2c]
	ldr r0, [r7]
	ldr r2, [r6, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080312C8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080312C8:
	lsls r0, r1, #0x10
	ldrh r1, [r5, #8]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080312DA
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
_080312DA:
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	ldr r6, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r6, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r4, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803138E
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt _08031320
	movs r2, #0xf
	ldr r1, [r6, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _08031320
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt _08031320
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _0803133A
_08031320:
	lsls r0, r0, #0x16
	bmi _0803138E
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r4
	str r0, [r6]
	b _0803138E
_0803133A:
	lsls r0, r0, #0x16
	bpl _08031358
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
_08031358:
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
_0803138E:
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080313A2
	bl sub_8000914
_080313A2:
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _080313BE
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_080313BE:
	ldr r0, _08031400 @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
_080313CC:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080313D4: .4byte _0803E89C
_080313D8: .4byte 0xF000FFFF
_080313DC: .4byte 0x74697243
_080313E0: .4byte 0x20726574
_080313E4: .4byte 0x69726353
_080313E8: .4byte 0x47207470
_080313EC: .4byte 0x70756F72
_080313F0: .4byte 0x00000000
_080313F4: .4byte gUnknown_03003454
_080313F8: .4byte gUnknown_03003EA4
_080313FC: .4byte gUnknown_03003EA0
_08031400: .4byte gUnknown_0300345C

	thumb_func_start sub_8031404
sub_8031404: @ 0x08031404
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	sub sp, #8
	adds r1, r0, #0
	beq _080314AC
	movs r0, #0x5a
	asrs r1, r1, #0x10
	cmp r1, #0x5a
	bge _0803141E
	adds r0, r1, #0
_0803141E:
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0xb2
	ldrsh r0, [r0, r4]
	ldr r6, [r5, #0x28]
	muls r0, r6, r0
	bl sub_8040528
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x5c]
	ldr r0, [r5, #0x2c]
	adds r1, r6, r0
	str r1, [r5, #0x28]
	movs r1, #5
	lsls r1, r1, #0xe
	cmp r0, r1
	bge _08031462
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x2c]
_08031462:
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _080314B2
	movs r2, #0
	str r2, [r4, #0x58]
	str r2, [r4, #0x5c]
	str r2, [r5, #0x28]
	ldr r3, [r1, #0x2c]
	ldr r6, [r1, #0x30]
	subs r3, r2, r3
	subs r2, r2, r6
	ldr r6, [r1, #0x34]
	adds r0, r1, #0
	adds r6, r6, r3
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	adds r0, #0x34
	adds r6, r6, r2
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r3, r6, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b _080314B2
_080314AC:
	adds r0, r4, #0
	bl sub_801EBCA
_080314B2:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _08031512
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r1, r0, #0x1f
	beq _08031512
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08031512
	bl sub_803BE1C
	lsls r0, r0, #0x19
	bne _08031512
	ldr r0, _0803156C @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0x7C @ =_08031570
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08031512:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803151A
sub_803151A: @ 0x0803151A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08031546
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08031546:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0803156C: .4byte gUnknown_03003EA0
_08031570: .4byte 0x0010BE20
_08031574: .4byte 0x00000000

	thumb_func_start sub_8031578
sub_8031578: @ 0x08031578
	push {r3, lr}
	cmp r0, #0
	bne _08031588
	movs r0, #0x10
	bl sub_803D9F8
	cmp r0, #0
	beq _0803159C
_08031588:
	ldr r1, _08031660 @ =_0803ECD8
	str r1, [r0]
	ldr r1, _08031664 @ =gUnknown_03003E9C
	str r0, [r1]
	ldr r1, _08031668 @ =_0803EB38
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_0803159C:
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80315A2
sub_80315A2: @ 0x080315A2
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031668 @ =_0803EB38
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	bl sub_803DA4C
	ldr r0, _08031660 @ =_0803ECD8
	movs r1, #0
	str r0, [r4]
	ldr r0, _08031664 @ =gUnknown_03003E9C
	str r1, [r4, #0xc]
	str r1, [r0]
	cmp r5, #0
	beq _080315C8
	adds r0, r4, #0
	bl sub_803DA18
_080315C8:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80315CE
sub_80315CE: @ 0x080315CE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	adds r5, r1, #0
	bl sub_803DA4C
	movs r6, #0
	str r6, [r4, #0xc]
	cmp r5, #0
	beq _080315F6
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r5, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0xc]
_080315F6:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80315FC
sub_80315FC: @ 0x080315FC
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_8031600
sub_8031600: @ 0x08031600
	push {r4, r5, r6}
	add r5, sp, #0xc
	ldr r6, [r0, #0xc]
	ldm r5, {r4, r5}
	lsls r1, r1, #4
	str r2, [r6, r1]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r3, [r2, #4]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r4, [r2, #8]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r5, [r0, #0xc]
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8031622
sub_8031622: @ 0x08031622
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	adds r4, r0, #0
	ldr r1, [r0, #4]
	movs r2, #0
	cmp r3, #0
	ldr r0, [r0, #0xc]
	bls _08031640
_08031632:
	lsls r5, r2, #4
	adds r5, r0, r5
	ldr r5, [r5, #4]
	adds r2, #1
	adds r1, r5, r1
	cmp r2, r3
	blo _08031632
_08031640:
	lsls r5, r3, #4
	adds r2, r0, r5
	ldr r2, [r2, #4]
	ldr r0, [r0, r5]
	bl sub_803BF0C
	ldr r0, [r4, #0xc]
	adds r0, r0, r5
	adds r0, #8
	ldm r0, {r0, r1}
	bl sub_803BE68
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_08031660: .4byte _0803ECD8
_08031664: .4byte gUnknown_03003E9C
_08031668: .4byte _0803EB38

	thumb_func_start sub_803166C
sub_803166C: @ 0x0803166C
	push {r4, lr}
	adds r4, r0, #0
	bne _08031684
	movs r0, #0xa4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08031684
	adds r0, r4, #0
_0803167E:
	pop {r4}
	pop {r3}
	bx r3
_08031684:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08031800 @ =_0803E488
	ldr r2, _08031810 @ =0xF000FFFF
	str r0, [r4]
	add r0, pc, #0x170 @ =_08031804
	str r0, [r4, #0x4c]
	movs r0, #5
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	movs r3, #0x3c
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #3
	lsls r2, r2, #0xf
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0]
	ldr r3, _08031814 @ =0xFF8007FF
	ands r1, r3
	ldr r3, _08031818 @ =0x0027B000
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _0803181C @ =0x00000505
	lsls r1, r1, #0xc
	adds r1, r1, r2
	ldr r2, [r0, #8]
	ldr r3, _08031820 @ =0xFF8003FF
	ands r2, r3
	ldr r3, _08031824 @ =0x00443800
	adds r2, r2, r3
	str r2, [r0, #8]
	movs r2, #4
	movs r3, #0x97
	strb r2, [r3, r4]
	lsls r2, r2, #0xa
	orrs r1, r2
	str r1, [r0, #0xc]
	ldr r0, _08031828 @ =gUnknown_08051096
	ldrh r1, [r0, #4]
	strh r1, [r4, #8]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r1, [r0]
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x18]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x1a]
	ldrh r1, [r0, #0xa]
	strh r1, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xa0
	strh r0, [r4, #0x1e]
	movs r0, #0xcf
	strh r0, [r1, r4]
	adds r0, r4, #0
	b _0803167E

	non_word_aligned_thumb_func_start sub_803171A
sub_803171A: @ 0x0803171A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031800 @ =_0803E488
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08031736
	adds r0, r4, #0
	bl sub_803DA18
_08031736:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803173C
sub_803173C: @ 0x0803173C
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031748
sub_8031748: @ 0x08031748
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8031754
sub_8031754: @ 0x08031754
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_803BE1C
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne _0803178C
	bl sub_803BE1C
	bl sub_80404B4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r3, _08031828 @ =gUnknown_08051096
	lsls r1, r1, #1
	adds r0, r1, r3
	ldrh r2, [r0, #4]
	strh r2, [r4, #0x18]
	ldrh r2, [r0, #2]
	strh r2, [r4, #0x1a]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x1c]
	ldrh r0, [r3, r1]
	strh r0, [r4, #0x1e]
_0803178C:
	movs r0, #0x9c
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _080317F4
	ldr r7, _0803182C @ =gUnknown_03003EA0
	ldr r5, [r4, #0x30]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	ldr r5, [r4, #0x2c]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	ldr r5, _08031828 @ =gUnknown_08051096
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r5, #0x18
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _080317F4
	ldr r6, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r6, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	lsls r0, r0, #1
	ldrh r1, [r5, r0]
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080317F4:
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08031800: .4byte _0803E488
_08031804: .4byte 0x6F6B694B
_08031808: .4byte 0x6F724720
_0803180C: .4byte 0x00007075
_08031810: .4byte 0xF000FFFF
_08031814: .4byte 0xFF8007FF
_08031818: .4byte 0x0027B000
_0803181C: .4byte 0x00000505
_08031820: .4byte 0xFF8003FF
_08031824: .4byte 0x00443800
_08031828: .4byte gUnknown_08051096
_0803182C: .4byte gUnknown_03003EA0

	thumb_func_start sub_8031830
sub_8031830: @ 0x08031830
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031B28 @ =gUnknown_0300345C
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl _080180BE
	ldrb r2, [r4, #4]
	ldr r0, _08031B2C @ =gUnknown_03003454
	ldr r1, [r0]
	lsls r3, r2, #1
	adds r5, r3, r1
	movs r3, #0xb
	lsls r3, r3, #7
	adds r3, r5, r3
	ldrh r5, [r3, #0x18]
	lsls r2, r2, #2
	adds r1, r2, r1
	lsrs r5, r5, #1
	lsls r5, r5, #1
	strh r5, [r3, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	movs r3, #0
	adds r1, r1, r2
	str r3, [r1, #0x18]
	ldrb r1, [r4, #4]
	ldr r0, [r0]
	bl sub_8017620
	ldr r5, _08031B30 @ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xc
	ldr r0, [r5]
	bl sub_8000DE6
	ldr r4, _08031B34 @ =gUnknown_03003460
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq _080318A2
_08031894:
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne _08031894
_080318A2:
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r0, _08031B38 @ =gUnknown_03003D34
	ldrb r0, [r0]
	bl sub_8018386
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80318BC
sub_80318BC: @ 0x080318BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	add r0, sp, #0x20
	bl sub_80046F8
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	ldr r0, _08031B3C @ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r5, _08031B2C @ =gUnknown_03003454
	ldr r0, [r5]
	bl sub_8017B9A
	ldr r6, _08031B40 @ =gUnknown_03003D35
	ldr r1, _08031B44 @ =gUnknown_080510C0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_800EF60
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_8017CA0
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #6
	adds r0, #8
	ldr r3, _08031B48 @ =0x000004F5
	bl sub_8018C48
	adds r0, r6, #0
	ldrb r0, [r0]
	movs r3, #1
	lsls r1, r0, #2
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #0x55
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	lsls r3, r0
	ldr r0, _08031B4C @ =gUnknown_03003478
	cmp r2, #0
	beq _08031936
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	ands r2, r3
	beq _0803193A
_08031936:
	movs r2, #1
	b _0803193C
_0803193A:
	movs r2, #0
_0803193C:
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x56
	str r2, [sp, #0x10]
	movs r2, #1
	lsls r6, r3, #0x1b
	lsrs r6, r6, #0x1b
	adds r7, r2, #0
	lsls r7, r6
	cmp r3, #0
	beq _0803195C
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r7
	beq _08031960
_0803195C:
	movs r3, #1
	b _08031962
_08031960:
	movs r3, #0
_08031962:
	str r3, [sp, #0x14]
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x57
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r2, #0
	lsls r6, r7
	cmp r3, #0
	beq _08031980
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r6
	beq _08031984
_08031980:
	movs r3, #1
	b _08031986
_08031984:
	movs r3, #0
_08031986:
	adds r1, #0xff
	adds r1, #0x58
	str r3, [sp, #0x18]
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r2, r3
	cmp r1, #0
	beq _080319A2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ands r0, r2
	beq _080319A6
_080319A2:
	movs r0, #1
	b _080319A8
_080319A6:
	movs r0, #0
_080319A8:
	ldr r6, _08031B64 @ =gUnknown_03003440
	str r0, [sp, #0x1c]
	movs r7, #3
	lsls r7, r7, #0x19
	ldr r0, [r6]
	add r1, pc, #0x19C @ =_08031B50
	bl sub_8004FFC
	str r0, [sp, #0xc]
	ldr r0, [r6]
	add r1, pc, #0x1A8 @ =_08031B68
	bl sub_8004FFC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _080319E0
_080319DC:
	movs r0, #0xcc
	b _080319E8
_080319E0:
	ldr r0, _08031B40 @ =gUnknown_03003D35
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #0xce
_080319E8:
	strh r0, [r4]
	ldr r2, [r5]
	add r0, pc, #0x18C @ =_08031B7C
	str r0, [sp, #8]
	movs r5, #4
	str r2, [sp, #4]
	b _08031A00
_080319F6:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	bhs _08031A0C
_08031A00:
	ldr r2, [sp, #4]
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _080319F6
_08031A0C:
	ldr r0, _08031B8C @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x1d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r5, #2
	adds r1, r1, r2
	str r1, [sp, #0x28]
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r5, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r0, r3
	strh r1, [r2, #0x18]
	movs r2, #1
	strh r2, [r0, #0x18]
	ldr r2, [sp, #0x28]
	subs r3, #0xff
	subs r3, #1
	ldr r0, [sp, #8]
	adds r2, r2, r3
	str r0, [r2, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	ldrb r2, [r0, #8]
	adds r2, #1
	strb r2, [r0, #8]
	strb r5, [r4, #4]
	movs r0, #0xc7
	strh r0, [r4, #2]
	movs r0, #0
	add r2, sp, #0x10
_08031A84:
	lsls r3, r0, #2
	ldr r3, [r2, r3]
	cmp r3, #0
	beq _08031A92
	ldrh r3, [r4, #2]
	adds r3, #1
	strh r3, [r4, #2]
_08031A92:
	adds r0, #1
	cmp r0, #4
	blo _08031A84
	ldrh r0, [r4, #2]
	cmp r0, #0xcb
	bne _08031AA0
	strh r1, [r4, #2]
_08031AA0:
	movs r3, #0x1f
	lsls r3, r3, #0xa
	movs r1, #0
	ldr r4, _08031B90 @ =0x000083E0
	movs r5, #0x4b
	lsls r5, r5, #9
_08031AAC:
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08031AB6
	b _08031ACC
_08031AB6:
	cmp r0, r3
	bne _08031ABE
	movs r0, #1
	b _08031ACC
_08031ABE:
	cmp r0, r4
	bne _08031AC6
	movs r0, #2
	b _08031ACC
_08031AC6:
	cmp r0, #0x1f
	bne _08031AD4
	movs r0, #3
_08031ACC:
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _08031AD8
_08031AD4:
	ldrh r0, [r6]
	strh r0, [r7]
_08031AD8:
	ldr r0, [sp, #0xc]
	adds r7, #2
	adds r0, #2
	adds r6, #2
	adds r1, #1
	cmp r1, r5
	str r0, [sp, #0xc]
	blo _08031AAC
	ldr r0, _08031B40 @ =gUnknown_03003D35
	ldr r1, _08031B94 @ =gUnknown_080513DC
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	lsls r2, r0, #0x18
	ldr r0, _08031B28 @ =gUnknown_0300345C
	lsrs r2, r2, #0x18
	movs r1, #3
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #0x3f
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08031B28: .4byte gUnknown_0300345C
_08031B2C: .4byte gUnknown_03003454
_08031B30: .4byte gUnknown_03003448
_08031B34: .4byte gUnknown_03003460
_08031B38: .4byte gUnknown_03003D34
_08031B3C: .4byte gUnknown_03003E98
_08031B40: .4byte gUnknown_03003D35
_08031B44: .4byte gUnknown_080510C0
_08031B48: .4byte 0x000004F5
_08031B4C: .4byte gUnknown_03003478
_08031B50: .4byte 0x654D6742
_08031B54: .4byte 0x7550756E
_08031B58: .4byte 0x656C7A7A
_08031B5C: .4byte 0x6E69622E
_08031B60: .4byte 0x00000000
_08031B64: .4byte gUnknown_03003440
_08031B68: .4byte 0x654D6742
_08031B6C: .4byte 0x7550756E
_08031B70: .4byte 0x656C7A7A
_08031B74: .4byte 0x2E636950
_08031B78: .4byte 0x006E6962
_08031B7C: .4byte 0x776F6853
_08031B80: .4byte 0x63695020
_08031B84: .4byte 0x65727574
_08031B88: .4byte 0x00000000
_08031B8C: .4byte gUnknown_03003468
_08031B90: .4byte 0x000083E0
_08031B94: .4byte gUnknown_080513DC

	thumb_func_start sub_8031B98
sub_8031B98: @ 0x08031B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x114
	add r6, sp, #0x10
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r6, #0
	movs r2, #0x78
	adds r0, #0x10
	str r0, [sp, #0x110]
	ldr r3, _08031CE8 @ =sub_80143E0
	bl sub_803C3A4
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80318BC
	ldr r0, _08031CEC @ =gUnknown_03003454
	movs r2, #3
	ldr r1, [r0]
	lsls r2, r2, #9
	adds r1, #0xc
	adds r1, r1, r2
	ldr r4, [r1, #0x1c]
	movs r5, #0
	add r6, sp, #0x18
_08031BCE:
	add r3, sp, #0
	ldr r7, _08031CEC @ =gUnknown_03003454
	ldrb r1, [r3, #0x14]
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, _08031CF0 @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08031BE8
	ldrh r1, [r0, #6]
_08031BE8:
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r7, #0x1e
	bpl _08031C00
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	bne _08031C00
	movs r0, #1
	str r0, [sp, #0xc]
	b _08031C94
_08031C00:
	lsls r0, r7, #0x1f
	bpl _08031C94
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	bne _08031C94
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	ldr r1, [sp, #0x110]
	bl sub_8018C48
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	ldrh r0, [r3, #0x10]
	cmp r2, #0xff
	str r0, [sp, #4]
	ldrh r0, [r3, #0x12]
	str r0, [sp, #8]
	bne _08031C30
	ldr r7, _08031CEC @ =gUnknown_03003454
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_08031C30:
	ldr r0, _08031CF4 @ =gUnknown_03003E88
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r1, #0
	str r1, [r0, #4]
	ldr r2, [sp, #4]
	add r3, sp, #0
	strh r2, [r0, #8]
	ldr r2, [sp, #8]
	ldr r7, _08031CEC @ =gUnknown_03003454
	strh r2, [r0, #0xa]
	strh r1, [r0, #0xc]
	ldrb r2, [r3, #0x14]
	movs r3, #1
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	cmp r2, #0xff
	bne _08031C70
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_08031C70:
	ldr r0, _08031CF4 @ =gUnknown_03003E88
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	add r3, sp, #0
	ldrb r2, [r3, #0x14]
	movs r3, #2
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
_08031C94:
	adds r0, r4, #0
	bl sub_80158E0
	cmp r0, #0
	beq _08031CA8
	movs r5, #1
	adds r0, r4, #0
	bl sub_8016108
	b _08031CBA
_08031CA8:
	cmp r5, #0
	beq _08031CBA
	movs r5, #0
	movs r2, #6
	adds r0, r6, #0
	ldr r3, _08031CF8 @ =0x000004F5
	ldr r1, [sp, #0x110]
	bl sub_8018C48
_08031CBA:
	bl sub_800EF2A
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08031BCE
	add r6, sp, #0x10
	adds r0, r6, #0
	bl sub_8031830
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x68
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x88
	ldr r3, _08031CFC @ =sub_8014436
	bl sub_803C3C8
	add sp, #0x114
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08031CE8: .4byte sub_80143E0
_08031CEC: .4byte gUnknown_03003454
_08031CF0: .4byte gUnknown_03003444
_08031CF4: .4byte gUnknown_03003E88
_08031CF8: .4byte 0x000004F5
_08031CFC: .4byte sub_8014436

	thumb_func_start sub_8031D00
sub_8031D00: @ 0x08031D00
	push {r4, lr}
	adds r4, r0, #0
	bne _08031D18
	movs r0, #0x54
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08031D18
	adds r0, r4, #0
_08031D12:
	pop {r4}
	pop {r3}
	bx r3
_08031D18:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080320FC @ =_0803ED70
	movs r1, #0x1e
	str r0, [r4]
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	b _08031D12

	non_word_aligned_thumb_func_start sub_8031D3E
sub_8031D3E: @ 0x08031D3E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080320FC @ =_0803ED70
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08031D5A
	adds r0, r4, #0
	bl sub_803DA18
_08031D5A:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8031D60
sub_8031D60: @ 0x08031D60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r7, r4, #0
	str r3, [r4, #0x20]
	adds r7, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne _08031DA6
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031DB4
_08031DA6:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08031DB4:
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _08032100 @ =gUnknown_0300333C
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs _08031DDE
	add r3, pc, #0x8 @ =_08031DE0
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08031DDE:
	b _0803225A
_08031DE0:
	.byte 0x05, 0x00
_08031DE2:
	.byte 0x88, 0x00
_08031DE4:
	.byte 0x14, 0x01
_08031DE6:
	.byte 0xBC, 0x01
_08031DE8:
	.byte 0x3E, 0x02
loc_8031dea:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _08031E7E
	cmp r1, #1
	beq _08031E2C
	cmp r1, #2
	beq _08031E5A
	cmp r1, #3
	bne _08031E7C
	movs r2, #5
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031E7C
_08031E2C:
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	lsrs r1, r2, #2
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031E7C
_08031E5A:
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032104 @ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031E7C:
	b _08031EA2
_08031E7E:
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031EA2:
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1b
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #2
	str r1, [r4, #0x50]
	ldr r1, _08032108 @ =0xFC001FFF
	ands r0, r1
	ldr r1, _0803210C @ =0x00D5C000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032104 @ =0xFFFE0000
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032110 @ =0xFFEE0000
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032114 @ =0x00028CCC
	str r0, [r4, #0x48]
	b _0803225A
loc_8031ef0:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _08031F90
	cmp r1, #1
	beq _08031F32
	cmp r1, #2
	beq _08031F62
	cmp r1, #3
	bne _08031F8E
	movs r2, #0xb
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118 @ =0xFFFF0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031F8E
_08031F32:
	movs r2, #0x15
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x1f
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08031F8E
_08031F62:
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xf
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _08032118 @ =0xFFFF0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031F8E:
	b _08031FBC
_08031F90:
	movs r2, #7
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08031FBC:
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108 @ =0xFC001FFF
	ands r0, r1
	ldr r1, _0803211C @ =gUnknown_02A0A000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032120 @ =0xFFFD0000
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032124 @ =0xFFFC0000
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032128 @ =0x0002A664
	str r0, [r4, #0x48]
	b _0803225A
loc_8032008:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080320A8
	cmp r1, #1
	beq _0803204A
	cmp r1, #2
	beq _0803207A
	cmp r1, #3
	bne _080320A6
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #7
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C @ =0xFFFF8000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080320A6
_0803204A:
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x11
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080320A6
_0803207A:
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803212C @ =0xFFFF8000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080320A6:
	b _080320D6
_080320A8:
	movs r2, #1
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080320D6:
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032108 @ =0xFC001FFF
	b _08032130
	.align 2, 0
_080320FC: .4byte _0803ED70
_08032100: .4byte gUnknown_0300333C
_08032104: .4byte 0xFFFE0000
_08032108: .4byte 0xFC001FFF
_0803210C: .4byte 0x00D5C000
_08032110: .4byte 0xFFEE0000
_08032114: .4byte 0x00028CCC
_08032118: .4byte 0xFFFF0000
_0803211C: .4byte gUnknown_02A0A000
_08032120: .4byte 0xFFFD0000
_08032124: .4byte 0xFFFC0000
_08032128: .4byte 0x0002A664
_0803212C: .4byte 0xFFFF8000
_08032130:
	ands r0, r1
	ldr r1, _0803245C @ =0x00312000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032460 @ =0xFFFC0000
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032464 @ =0xFFE80000
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032468 @ =0x00043330
	str r0, [r4, #0x48]
	b _0803225A
loc_8032158:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080321E4
	cmp r1, #1
	beq _08032190
	cmp r1, #2
	beq _080321B6
	cmp r1, #3
	bne _08032212
	movs r2, #3
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803246C @ =0xFFFF0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_08032190:
	movs r2, #5
	ldr r1, [r4, #0x20]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_080321B6:
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803246C @ =0xFFFF0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032212
_080321E4:
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0x10
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_08032212:
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032470 @ =0xFC001FFF
	ands r0, r1
	ldr r1, _0803245C @ =0x00312000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032474 @ =0xFFFD0000
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032478 @ =0xFFFA0000
	str r0, [r4, #0x40]
	movs r0, #0xb
	lsls r0, r0, #0xe
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r4, #0x34]
_0803225A:
	b _08032374
loc_803225c:
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _080322FC
	cmp r1, #1
	beq _0803229E
	cmp r1, #2
	beq _080322CE
	cmp r1, #3
	bne _080322FA
	movs r2, #0xb
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803247C @ =0xFFFF8000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080322FA
_0803229E:
	movs r2, #3
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0x21
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _080322FA
_080322CE:
	movs r2, #9
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, _0803247C @ =0xFFFF8000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_080322FA:
	b _0803232A
_080322FC:
	movs r2, #5
	ldr r1, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x20]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0803232A:
	movs r1, #0xf
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x1a
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	str r1, [r4, #0x50]
	ldr r1, _08032470 @ =0xFC001FFF
	ands r0, r1
	ldr r1, _08032480 @ =gUnknown_02BDC000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r0, _08032460 @ =0xFFFC0000
	movs r1, #7
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _08032464 @ =0xFFE80000
	lsls r1, r1, #8
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x34]
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _08032468 @ =0x00043330
	str r0, [r4, #0x48]
_08032374:
	ldr r0, _08032484 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _08032484 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08032488 @ =0x000011EF
	str r0, [r4, #8]
	bl sub_800065C
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_803F38C
	ldr r0, [r4, #8]
	movs r5, #3
	ldrh r1, [r0, #0x26]
	lsls r5, r5, #0xa
	movs r2, #1
	lsls r2, r2, #0xa
	bics r1, r5
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r6, #0x80
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl sub_803FF24
	ldr r0, [r4, #8]
	lsls r3, r6, #4
	ldrh r1, [r0, #0x2a]
	movs r2, #0xbe
	bics r1, r5
	orrs r1, r3
	strh r1, [r0, #0x2a]
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0803244C
	orrs r1, r6
	str r1, [r0]
_0803244C:
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_80401E4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803245C: .4byte 0x00312000
_08032460: .4byte 0xFFFC0000
_08032464: .4byte 0xFFE80000
_08032468: .4byte 0x00043330
_0803246C: .4byte 0xFFFF0000
_08032470: .4byte 0xFC001FFF
_08032474: .4byte 0xFFFD0000
_08032478: .4byte 0xFFFA0000
_0803247C: .4byte 0xFFFF8000
_08032480: .4byte gUnknown_02BDC000
_08032484: .4byte gUnknown_03003EB8
_08032488: .4byte 0x000011EF

	thumb_func_start sub_803248C
sub_803248C: @ 0x0803248C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	sub sp, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _08032580
	adds r6, r4, #4
	adds r7, r6, #4
	cmp r0, #1
	beq _08032582
	cmp r0, #2
	beq _08032584
	cmp r0, #3
	bne _08032586
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	cmp r0, r1
	blo _080324D0
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x4c]
	lsls r2, r1, #6
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1c
	lsrs r2, r2, #0x13
	adds r1, r2, r1
	cmp r0, r1
	blo _08032570
_080324D0:
	ldr r5, _080327CC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_8000DE6
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	bl sub_800065C
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08032520
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _08032516
	ldr r0, _080327CC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_08032516:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
_08032520:
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _080327D0 @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x25
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
_08032570:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _0803258C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	b _08032588
_08032580:
	b _08032616
_08032582:
	b _08032640
_08032584:
	b _080327B4
_08032586:
	b _0803260E
_08032588:
	bl sub_803B8CA
_0803258C:
	ldr r0, [r4, #0x4c]
	movs r1, #0xff
	adds r2, r0, #0
	adds r1, #0xe1
	adds r0, #0x20
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #0x17
	lsrs r2, r2, #0x1c
	cmp r2, #8
	str r0, [r4, #0x4c]
	bls _0803260E
	bics r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _080325CC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080325CC
	ldr r0, _080327CC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
_080325CC:
	ldr r0, [r4, #0x4c]
	movs r1, #0x1e
	adds r2, r0, #0
	adds r0, #2
	ands r0, r1
	bics r2, r1
	orrs r2, r0
	adds r1, r2, #0
	lsls r0, r1, #0x1b
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r2
	str r1, [r4, #0x4c]
	bhs _080326B8
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
_0803260E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08032616:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803260E
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0803260E
_08032640:
	ldr r1, _080327D4 @ =0x00001998
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	adds r0, r1, r0
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bge _08032668
	rsbs r1, r0, #0
	b _0803266A
_08032668:
	adds r1, r0, #0
_0803266A:
	ldr r2, _080327D8 @ =0x0001B330
	cmp r1, r2
	ble _08032684
	ldr r0, [r4, #8]
	bl sub_803F898
	ldr r1, _080327DC @ =0x000011EF
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_08032684:
	ldr r2, _080327E0 @ =0x00013330
	cmp r1, r2
	ble _0803269E
	ldr r0, [r4, #8]
	bl sub_803F898
	ldr r1, _080327E4 @ =0x000011F0
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_0803269E:
	ldr r0, _080327E8 @ =0x0000B330
	cmp r1, r0
	ldr r0, [r4, #8]
	ble _080326BA
	bl sub_803F898
	ldr r1, _080327EC @ =0x000011F1
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_080326B8:
	b _080327A2
_080326BA:
	bl sub_803F898
	ldr r1, _080327F0 @ =0x000011F2
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
_080326CA:
	movs r1, #3
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _08032732
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _080326E6
	ldr r0, _080327CC @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_080326E6:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	cmp r0, r1
	ble _08032732
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032762
	ldr r0, _080327CC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
	b _08032762
_08032732:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032762
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _08032762
	ldr r5, _080327CC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r5]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08032756
_08032754:
	b _0803260E
_08032756:
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803260E
_08032762:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x3c]
	adds r0, r0, r2
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032754
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #8]
	add r1, sp, #4
	bl sub_803FF24
	b _0803260E
_080327A2:
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r4, #0x34]
	b _0803260E
_080327B4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08032754
	ldr r0, _080327CC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #4]
	b _0803260E
	.align 2, 0
_080327CC: .4byte gUnknown_03003EB8
_080327D0: .4byte gUnknown_0300345C
_080327D4: .4byte 0x00001998
_080327D8: .4byte 0x0001B330
_080327DC: .4byte 0x000011EF
_080327E0: .4byte 0x00013330
_080327E4: .4byte 0x000011F0
_080327E8: .4byte 0x0000B330
_080327EC: .4byte 0x000011F1
_080327F0: .4byte 0x000011F2

	thumb_func_start sub_80327F4
sub_80327F4: @ 0x080327F4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #1
	lsls r5, r5, #0x1d
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	lsrs r6, r5, #4
	lsrs r7, r5, #1
	cmp r0, #3
	bne _0803286E
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08032868
	bl sub_803F898
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r6
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r1, r2
	orrs r1, r5
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi _08032868
	lsls r0, r5, #1
	orrs r0, r1
	str r0, [r4, #0x2c]
_08032868:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803286E:
	adds r0, r4, #0
	bl sub_802E4EE
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032868
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #0x30]
	b _08032868

	thumb_func_start sub_80328B0
sub_80328B0: @ 0x080328B0
	push {r3, r4, r5, lr}
	bl sub_802E47A
	ldr r4, _08032A88 @ =gUnknown_0300345C
	movs r5, #0x25
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _080328D0
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_080328D0:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80328D6
sub_80328D6: @ 0x080328D6
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r7, #0x1c
	cmp r0, #3
	sub sp, #0xc
	bne _080329A8
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080329A0
	ldr r0, _08032A8C @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #4]
	bl sub_803F38C
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	lsrs r6, r0, #0x1f
	ldr r0, [r5]
	beq _0803292C
	lsls r0, r0, #0x1c
	bmi _0803293A
	ldr r0, _08032A8C @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803293A
_0803292C:
	lsls r0, r0, #0x1c
	bpl _0803293A
	ldr r0, _08032A8C @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803293A:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #6
	bpl _080329A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
_080329A0:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080329A8:
	adds r0, r4, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080329F8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_080329F8:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _080329A0
	ldr r0, _08032A8C @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #8]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #8]
	bl sub_803F38C
	ldr r0, [r4, #8]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl sub_803FF24
	movs r1, #0xbe
	ldr r0, [r4, #8]
	bl sub_80401C0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _080329A0
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_80401E4
	b _080329A0

	thumb_func_start sub_8032A58
sub_8032A58: @ 0x08032A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E8B0
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x4c]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8032A7E
sub_8032A7E: @ 0x08032A7E
	ldr r0, [r0, #0x4c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1b
	bx lr
	.align 2, 0
_08032A88: .4byte gUnknown_0300345C
_08032A8C: .4byte gUnknown_03003EB8

	thumb_func_start sub_8032A90
sub_8032A90: @ 0x08032A90
	push {r4, lr}
	adds r4, r0, #0
	bne _08032AA8
	movs r0, #0x58
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08032AA8
	adds r0, r4, #0
_08032AA2:
	pop {r4}
	pop {r3}
	bx r3
_08032AA8:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08032E8C @ =_0803EC44
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	b _08032AA2

	non_word_aligned_thumb_func_start sub_8032AC2
sub_8032AC2: @ 0x08032AC2
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08032E8C @ =_0803EC44
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _08032E90 @ =gUnknown_03003EB8
	beq _08032AE2
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
_08032AE2:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08032AF4
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
_08032AF4:
	ldr r0, [r4, #0x4c]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq _08032B0C
	adds r0, r4, #0
	bl sub_803DA18
_08032B0C:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8032B12
sub_8032B12: @ 0x08032B12
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	ldr r3, _08032E94 @ =gUnknown_03003458
	movs r7, #0xff
	ldr r3, [r3]
	lsls r7, r7, #0xb
	ldr r5, [r3, #0x20]
	str r5, [r4, #0x48]
	movs r5, #5
	lsls r5, r5, #8
	adds r5, r3, r5
	ldr r6, [r5, #0x1c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x19
	lsls r6, r6, #2
	adds r6, r6, r3
	ldr r6, [r6, #0x20]
	str r6, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #0xc
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r3, r5, r3
	ldr r3, [r3, #0x20]
	str r3, [r4, #0x4c]
	ldr r3, [r3, #0x2c]
	str r3, [r4, #0x14]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	adds r5, r4, #0
	str r3, [r4, #0x20]
	adds r5, #0x1c
	adds r3, r0, #1
	str r6, [r4, #0x1c]
	bne _08032B7A
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032B88
_08032B7A:
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08032B88:
	ldr r0, [r4, #0x34]
	movs r1, #1
	movs r3, #5
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
	lsls r3, r3, #0x11
	lsls r1, r1, #0x12
	cmp r6, #0
	beq _08032BBC
	cmp r6, #1
	beq _08032BB0
	cmp r6, #2
	bne _08032BC8
	ldr r6, [r4, #0x1c]
	subs r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
	b _08032BC8
_08032BB0:
	movs r3, #1
	ldr r1, [r4, #0x20]
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r4, #0x20]
	b _08032BC8
_08032BBC:
	ldr r6, [r4, #0x1c]
	adds r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
_08032BC8:
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x4c]
	movs r3, #0x16
	adds r1, #0xc0
	ldr r1, [r1, #0x3c]
	ldr r2, _08032E98 @ =gUnknown_0300334A
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	muls r1, r3, r1
	adds r1, r1, r2
	ldr r2, _08032E9C @ =gUnknown_03003D2C
	lsls r0, r0, #6
	ldr r2, [r2]
	lsrs r0, r0, #0x1c
	adds r2, #0xb0
	ldrb r2, [r2, #7]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	str r1, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0x50
	cmp r0, #0
	bne _08032C0A
	movs r0, #1
	strb r0, [r1, #4]
	b _08032C0E
_08032C0A:
	movs r0, #0
	strb r0, [r1, #4]
_08032C0E:
	ldr r6, _08032E90 @ =gUnknown_03003EB8
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #2
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	movs r2, #0
	movs r1, #0x78
	str r0, [r4, #0x40]
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	ldr r0, [r4, #0x40]
	subs r1, #1
	bl sub_80401C0
	ldr r0, _08032EA0 @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8032CCC
sub_8032CCC: @ 0x08032CCC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0x24
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08032CE2
	movs r1, #0
	bl sub_80401E4
	b _08032CE8
_08032CE2:
	movs r1, #1
	bl sub_80401E4
_08032CE8:
	ldr r0, [r4, #0x44]
	movs r5, #0x29
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	lsls r5, r5, #5
	cmp r0, #0xf
	ldr r6, _08032E94 @ =gUnknown_03003458
	beq _08032CFC
	cmp r0, #0x10
	bne _08032D20
_08032CFC:
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x4c]
	bl sub_803357C
_08032D18:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08032D20:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _08032DC4
	cmp r0, #1
	beq _08032E00
	cmp r0, #2
	bne _08032D18
	ldr r0, _08032EA4 @ =gUnknown_03003EA0
	ldr r7, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08032D4C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08032D4C:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _08032E40
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D6E
	bl sub_8000914
_08032D6E:
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D88
	bl sub_8000914
_08032D88:
	ldr r1, [r4]
	ldr r5, [r4, #0x44]
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r1, r2, r1
	bl sub_803B8CA
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	ldr r1, [r4, #0x4c]
	adds r0, r5, #0
	bl sub_803B8D4
	ldr r4, _08032EA0 @ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08032D18
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
	b _08032D18
_08032DC4:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D18
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r2, #7
	ldr r0, [r4, #0x34]
	lsls r2, r2, #8
	bics r0, r2
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _08032D18
_08032E00:
	b _08032E02
_08032E02:
	adds r7, r4, #0
	adds r7, #0x50
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08032E1C
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08032E2A
_08032E1C:
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_08032E2A:
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x1c]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x1c
	str r0, [sp, #0x14]
	b _08032E42
_08032E40:
	b _08032F58
_08032E42:
	adds r6, r1, #0
	add r0, sp, #0xc
	bl sub_80187A0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	add r2, pc, #0x50 @ =_08032EA8
	ldm r2, {r2, r3}
	bl sub_803B940
	adds r5, r0, #0
	beq _08032EC0
	ldr r0, [sp, #0x18]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	str r0, [sp, #4]
	adds r0, r5, #0
	str r1, [sp, #8]
	asrs r1, r5, #0x1f
	str r1, [sp, #0x1c]
	str r5, [sp, #0x20]
	add r3, sp, #4
	ldm r3, {r2, r3}
	bl sub_803B9C4
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	b _08032EB0
	.align 2, 0
_08032E8C: .4byte _0803EC44
_08032E90: .4byte gUnknown_03003EB8
_08032E94: .4byte gUnknown_03003458
_08032E98: .4byte gUnknown_0300334A
_08032E9C: .4byte gUnknown_03003D2C
_08032EA0: .4byte gUnknown_0300345C
_08032EA4: .4byte gUnknown_03003EA0
_08032EA8: .4byte 0x00020000
_08032EAC: .4byte 0x00000000
_08032EB0:
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl sub_803B9C4
	str r0, [r4, #0x28]
	b _08032EC6
_08032EC0:
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_08032EC6:
	ldr r0, [r6]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r0, #1
	lsls r0, r0, #0x11
	cmp r5, r0
	bgt _08032F1A
	ldrb r0, [r7, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #4]
	cmp r0, #2
	bne _08032EFA
	movs r2, #7
	ldr r1, [r4, #0x34]
	lsls r2, r2, #8
	bics r1, r2
	lsls r2, r0, #8
	adds r1, r1, r2
	str r1, [r4, #0x34]
_08032EFA:
	cmp r0, #1
	bne _08032F1A
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
_08032F1A:
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _08032F40
_08032F3E:
	b _08032D18
_08032F40:
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #0x2c]
	ldrb r1, [r1, #5]
	ldrb r3, [r0, #5]
	subs r1, #1
	adds r2, r1, #0
	cmp r1, r3
	beq _08032F3E
	adds r1, r2, #0
	bl sub_80401C0
	b _08032D18
_08032F58:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032F3E
	ldr r7, _080332F8 @ =gUnknown_03003EB8
	cmp r0, #0
	beq _08032F72
	adds r1, r4, #4
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #4]
_08032F72:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08032F86
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08032F86:
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	b _08032D18

	non_word_aligned_thumb_func_start sub_8032F92
sub_8032F92: @ 0x08032F92
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	movs r7, #1
	ldr r5, [r4, #0x3c]
	lsls r7, r7, #0xa
	cmp r5, #0
	ldr r6, _080332FC @ =gUnknown_03003EA0
	beq _08033052
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08032FBE
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08032FBE:
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08033052
	bics r0, r7
	lsrs r2, r3, #0xe
	bics r0, r2
	str r0, [r1]
	ldr r0, _080332F8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08033052:
	movs r0, #0
	str r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _08033108
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08033074
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08033074:
	ldr r0, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x40]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08033108
	bics r0, r7
	lsrs r2, r3, #0xe
	bics r0, r2
	str r0, [r1]
	ldr r0, _080332F8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08033108:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803310E
sub_803310E: @ 0x0803310E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _080332F8 @ =gUnknown_03003EB8
	beq _0803312C
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
_0803312C:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0803313E
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
_0803313E:
	ldr r4, _08033300 @ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033158
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_08033158:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803315E
sub_803315E: @ 0x0803315E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge _0803322E
	ldr r0, _080332F8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC @ =gUnknown_03003EA0
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _08033220
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_08033220:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0803322E
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_0803322E:
	ldr r0, [r4, #0x50]
	lsls r0, r0, #2
	bpl _080332EE
	ldr r0, _080332F8 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC @ =gUnknown_03003EA0
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x40]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #0x40]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl _080332E0
	ldr r0, [r4, #0x40]
	bl sub_8000914
_080332E0:
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl _080332EE
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
_080332EE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080332F8: .4byte gUnknown_03003EB8
_080332FC: .4byte gUnknown_03003EA0
_08033300: .4byte gUnknown_0300345C
_08033304: .4byte 0x0010BE20

	thumb_func_start sub_8033308
sub_8033308: @ 0x08033308
	ldr r0, [r0, #0x34]
	ldr r1, _08033314 @ =gUnknown_03003346
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_08033314: .4byte gUnknown_03003346

	thumb_func_start sub_8033318
sub_8033318: @ 0x08033318
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _08033332
	movs r0, #0xff
	adds r0, #1
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08033332
	adds r0, r4, #0
_0803332C:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08033332:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08033618 @ =_0803EA90
	adds r5, r4, #0
	str r0, [r4]
	adds r5, #0x80
	movs r6, #0
	str r6, [r5, #0x20]
	adds r0, r4, #0
	adds r0, #0xa8
	str r6, [r5, #0x24]
	bl sub_8024E54
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r2
	movs r2, #0x30
	bics r1, r2
	movs r2, #0x3f
	lsls r2, r2, #6
	bics r1, r2
	str r1, [r0, #0x3c]
	adds r0, #0x30
	strb r6, [r0, #0xe]
	movs r1, #2
	strb r1, [r0, #0xf]
	add r0, pc, #0x2A8 @ =_0803361C
	str r0, [r4, #0x4c]
	movs r0, #9
	strh r0, [r4, #4]
	movs r0, #4
	movs r1, #0x97
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	ldr r1, _08033634 @ =0xF000FFFF
	ands r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r5, #4]
	lsrs r0, r1, #0xf
	str r0, [r4, #0x70]
	ldr r0, [r5, #0xc]
	ldr r1, _08033638 @ =0x00000501
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r1, r1, #5
	bics r0, r1
	str r0, [r5, #0xc]
	adds r0, r4, #0
	b _0803332C

	thumb_func_start sub_80333B0
sub_80333B0: @ 0x080333B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033618 @ =_0803EA90
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xa8
	bl sub_8024EBC
	movs r1, #0
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _080333D6
	adds r0, r4, #0
	bl sub_803DA18
_080333D6:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80333DC
sub_80333DC: @ 0x080333DC
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	sub sp, #4
	str r0, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #0x30
	bics r1, r2
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #0x3c]
	ldr r0, _0803363C @ =gUnknown_03003458
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r0, #0x20]
	adds r2, r0, r2
	str r1, [r5, #0x20]
	ldr r2, [r2, #0x1c]
	lsls r2, r2, #5
	lsrs r2, r2, #0x19
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0, #0x20]
	str r0, [r5, #0x24]
	ldr r3, [r1, #0x58]
	ldr r0, _08033640 @ =gUnknown_03003450
	str r3, [sp]
	ldr r6, [r1, #0x5c]
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	ldr r0, [r0, #4]
	movs r3, #0x19
	subs r2, r6, r0
	movs r6, #0xf
	lsls r6, r6, #0x18
	lsrs r7, r6, #5
	lsls r3, r3, #0x12
	cmp r2, r3
	ble _08033456
	lsls r2, r3, #1
	ldr r3, [r4, #0x7c]
	adds r2, r0, r2
	bics r3, r6
	movs r6, #3
	lsls r6, r6, #0x18
	adds r0, r0, r7
	adds r3, r3, r6
	str r3, [r4, #0x7c]
	b _0803346E
_08033456:
	movs r2, #5
	lsls r2, r2, #0x13
	movs r3, #0x23
	lsls r3, r3, #0x11
	subs r2, r0, r2
	adds r0, r0, r3
	ldr r3, [r4, #0x7c]
	bics r3, r6
	movs r6, #1
	lsls r6, r6, #0x18
	adds r3, r3, r6
	str r3, [r4, #0x7c]
_0803346E:
	ldr r3, [sp]
	subs r6, r3, r1
	adds r3, r4, #0
	adds r3, #0x90
	cmp r6, r7
	ble _0803348C
	movs r6, #0x23
	lsls r6, r6, #0x13
	movs r7, #0x2d
	lsls r7, r7, #0x12
	adds r6, r1, r6
	adds r1, r1, r7
	movs r7, #2
	strb r7, [r3, #8]
	b _0803349C
_0803348C:
	movs r6, #5
	lsls r6, r6, #0x13
	movs r7, #0xf
	lsls r7, r7, #0x12
	subs r6, r1, r6
	adds r1, r1, r7
	movs r7, #0
	strb r7, [r3, #8]
_0803349C:
	cmp r6, #0
	bgt _080334A4
	movs r6, #0xf
	lsls r6, r6, #0x11
_080334A4:
	cmp r2, #0
	bgt _080334AC
	movs r2, #0xf
	lsls r2, r2, #0x11
_080334AC:
	ldr r3, _0803363C @ =gUnknown_03003458
	ldr r7, [r3]
	ldr r3, [r7, #0x14]
	cmp r6, r3
	blt _080334BC
	movs r6, #0xf
	lsls r6, r6, #0x11
	subs r6, r3, r6
_080334BC:
	ldr r3, [r7, #0x18]
	cmp r2, r3
	blt _080334C8
	movs r2, #0xf
	lsls r2, r2, #0x11
	subs r2, r3, r2
_080334C8:
	str r2, [r5, #0x70]
	str r6, [r5, #0x6c]
	str r2, [r4, #0x5c]
	str r6, [r4, #0x58]
	str r0, [r5, #0x78]
	movs r0, #3
	lsls r0, r0, #0x10
	str r1, [r5, #0x74]
	str r0, [r4, #0x70]
	movs r0, #1
	lsls r0, r0, #0x17
	str r0, [r4, #0x78]
	movs r7, #0
	str r7, [r5, #0x1c]
	ldr r2, [sp, #8]
	movs r1, #0x16
	ldr r3, _08033644 @ =gUnknown_0300334A
	muls r1, r2, r1
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033512
sub_8033512: @ 0x08033512
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	rsbs r4, r2, #0
	subs r3, r1, r3
	cmp r2, #0
	blt _08033528
	adds r4, r2, #0
_08033528:
	rsbs r5, r3, #0
	cmp r3, #0
	blt _08033530
	adds r5, r3, #0
_08033530:
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble _08033552
	cmp r2, #0
	ble _0803354C
	str r1, [r0, #0x7c]
_08033548:
	pop {r4, r5, r6, r7}
	bx lr
_0803354C:
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _08033548
_08033552:
	cmp r5, r4
	ble _0803356E
	cmp r3, #0
	ble _08033564
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _08033548
_08033564:
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _08033548
_0803356E:
	cmp r2, #0
	ble _08033576
	str r1, [r0, #0x7c]
	b _08033548
_08033576:
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _08033548

	thumb_func_start sub_803357C
sub_803357C: @ 0x0803357C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xa8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _080335AA
	ldr r1, [r0]
	adds r5, r0, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r0, #1
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x40]
	lsrs r1, r0, #1
	ldr r0, _08033648 @ =0xFFFE0001
	lsls r1, r1, #1
	ands r1, r0
	str r1, [r5, #0x40]
_080335AA:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x6c]
	ldr r2, [r0, #0x70]
	str r1, [r0, #0x74]
	movs r1, #3
	lsls r1, r1, #0x10
	str r2, [r0, #0x78]
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x17
	str r1, [r4, #0x78]
	movs r1, #0
	adds r5, r4, #0
	adds r5, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, [r5, #0x3c]
	movs r1, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0xf4
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	bl sub_8033512
	ldr r0, [r4, #0x7c]
	movs r1, #0x98
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	strb r0, [r1, r4]
	ldr r0, [r5, #0x3c]
	movs r1, #0x16
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _08033644 @ =gUnknown_0300334A
	muls r1, r0, r1
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_08033618: .4byte _0803EA90
_0803361C: .4byte 0x786E6957
_08033620: .4byte 0x62756C43
_08033624: .4byte 0x72635320
_08033628: .4byte 0x20747069
_0803362C: .4byte 0x756F7247
_08033630: .4byte 0x00000070
_08033634: .4byte 0xF000FFFF
_08033638: .4byte 0x00000501
_0803363C: .4byte gUnknown_03003458
_08033640: .4byte gUnknown_03003450
_08033644: .4byte gUnknown_0300334A
_08033648: .4byte 0xFFFE0001

	thumb_func_start sub_803364C
sub_803364C: @ 0x0803364C
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_803366C
sub_803366C: @ 0x0803366C
	push {r4}
	ldr r2, [r0, #0x58]
	cmp r2, #0
	ble _08033692
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	ble _08033692
	ldr r1, _08033A5C @ =gUnknown_03003458
	movs r3, #3
	ldr r1, [r1]
	lsls r3, r3, #0x10
	ldr r4, [r1, #0x14]
	subs r4, r4, r3
	cmp r2, r4
	bge _08033692
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt _08033698
_08033692:
	movs r0, #0
_08033694:
	pop {r4}
	bx lr
_08033698:
	movs r0, #1
	b _08033694

	thumb_func_start sub_803369C
sub_803369C: @ 0x0803369C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r4, r0, #0
	ldr r0, [r6, #0x20]
	sub sp, #0xc
	cmp r0, #0
	beq _08033764
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r0, [r4, #0x78]
	adds r7, r4, #0
	adds r7, #0xc0
	cmp r0, #0
	str r5, [sp, #8]
	beq _08033754
	movs r3, #3
	lsls r3, r3, #0x10
	cmp r0, r3
	blt _080336E4
	ldr r2, [r4, #0x58]
	cmp r2, #0
	ble _080336E4
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ble _080336E4
	ldr r1, _08033A5C @ =gUnknown_03003458
	ldr r1, [r1]
	ldr r5, [r1, #0x14]
	subs r5, r5, r3
	cmp r2, r5
	bge _080336E4
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt _08033754
_080336E4:
	movs r3, #0
	str r3, [r4, #0x70]
	str r3, [r4, #0x78]
	ldr r0, [r7, #0x3c]
	lsls r1, r0, #0x1c
	bpl _08033720
	movs r2, #1
	ldr r1, [r6, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	str r1, [r6, #0x14]
	movs r1, #8
	bics r0, r1
	str r0, [r7, #0x3c]
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	adds r5, r3, #0
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b _08033754
_08033720:
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r3, #0x16
	movs r1, #6
	str r1, [r6, #0x1c]
	ldr r1, _08033A60 @ =gUnknown_0300334A
	muls r0, r3, r0
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	movs r3, #0
	mvns r3, r3
	strh r0, [r4, #0xe]
	adds r1, r0, #1
	strh r1, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r5, [sp, #8]
	movs r2, #1
	ldr r0, [r5]
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #8]
	bl sub_803B8D2
_08033754:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0803375E
	cmp r0, #4
	bne _0803376C
_0803375E:
	adds r0, r4, #0
	bl sub_801EBCA
_08033764:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803376C:
	cmp r0, #6
	bne _08033764
	ldr r0, _08033A64 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0803378C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803378C:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x7c]
	lsrs r0, r0, #0x10
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _080337AE
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
_080337AE:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080337C2
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080337C2:
	ldr r5, [r4, #0x2c]
	ldrh r0, [r5, #0x28]
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x1f
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _080337DE
	ldr r1, [r6]
	lsls r1, r1, #0x1d
	bpl _080337DE
	movs r1, #1
	b _080337E0
_080337DE:
	movs r1, #0
_080337E0:
	cmp r2, r1
	beq _080338AC
	cmp r0, #2
	bne _080337F2
	ldr r0, [r6]
	lsls r0, r0, #0x1d
	bpl _080337F2
	movs r1, #1
	b _080337F4
_080337F2:
	movs r1, #0
_080337F4:
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r1, r0, #0x1e
	bmi _080338A4
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	blt _0803382E
	movs r2, #0xf
	ldr r1, [r5, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _0803382E
	ldr r1, [r5, #0x40]
	cmp r1, #0
	blt _0803382E
	movs r2, #5
	ldr r1, [r5, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _0803384C
_0803382E:
	lsls r0, r0, #0x16
	bmi _080338A4
	ldr r0, _08033A64 @ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	b _080338A4
_0803384C:
	lsls r0, r0, #0x16
	bpl _0803386C
	ldr r0, _08033A64 @ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5]
_0803386C:
	ldr r0, [r5, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r5, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r5, #0x26]
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
_080338A4:
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
_080338AC:
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _080338BA
	cmp r0, #2
	bne _080338D0
_080338BA:
	ldr r0, [r6, #0x24]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
	b _080338E4
_080338D0:
	ldr r0, [r6, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
_080338E4:
	ldr r0, [r7, #0x3c]
	movs r1, #0x3f
	adds r2, r0, #0
	lsls r1, r1, #6
	adds r0, #0x40
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x1a
	str r0, [r7, #0x3c]
	bne _080339D6
	ldr r2, [r4, #0x38]
	cmp r2, #0
	bne _080339D6
	ldr r2, [r6, #0x24]
	adds r2, #0x80
	ldr r2, [r2, #0x1c]
	cmp r2, #0xf
	beq _08033910
	cmp r2, #0x10
	bne _08033918
_08033910:
	adds r0, r4, #0
	bl sub_803357C
	b _080339D6
_08033918:
	ldr r2, _08033A68 @ =gUnknown_03003D2C
	bics r0, r1
	ldr r2, [r2]
	ldr r1, _08033A6C @ =gUnknown_0300346C
	adds r2, #0xb0
	ldrb r5, [r2, #7]
	str r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	ldr r0, [r1]
	bne _08033976
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq _0803394E
	adds r0, r6, #0
	bl sub_8032A90
_0803394E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x38]
	movs r3, #0
	ldr r1, [r0]
	mvns r3, r3
	ldr r2, [r1, #4]
	adds r6, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl sub_803B8D4
	b _080339C2
_08033976:
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq _08033994
	adds r0, r6, #0
	bl sub_8033C58
_08033994:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r7, #0x3c]
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r2, r1, r5
	ldr r1, [r0]
	ldr r3, [r1, #4]
	adds r5, r3, r1
	movs r3, #0
	mvns r3, r3
	adds r1, r4, #0
	bl sub_803B8D2
_080339C2:
	ldr r0, _08033A68 @ =gUnknown_03003D2C
	movs r1, #0xae
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023AA2
_080339D6:
	ldr r5, [sp, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080339E0
	b _08033764
_080339E0:
	ldr r5, [sp, #8]
	ldr r0, [r4, #0x7c]
	ldr r1, [r5, #0x34]
	lsls r0, r0, #4
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x1c
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r5, #0x20]
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r2, #0xff
	ldr r1, [r5, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	lsls r0, r0, #0xb
	orrs r0, r1
	lsls r1, r0, #0x18
	str r0, [r5, #0x34]
	ldr r0, _08033A70 @ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldr r2, _08033A74 @ =gUnknown_0805107E
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r5, #0x34]
	ldr r2, _08033A7C @ =gUnknown_08051086
	lsls r1, r0, #0x18
	ldr r0, _08033A78 @ =gUnknown_08051082
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r1, sp
	bl sub_803FF24
	b _08033A80
	.align 2, 0
_08033A5C: .4byte gUnknown_03003458
_08033A60: .4byte gUnknown_0300334A
_08033A64: .4byte gUnknown_03003EA0
_08033A68: .4byte gUnknown_03003D2C
_08033A6C: .4byte gUnknown_0300346C
_08033A70: .4byte gUnknown_0805107A
_08033A74: .4byte gUnknown_0805107E
_08033A78: .4byte gUnknown_08051082
_08033A7C: .4byte gUnknown_08051086
_08033A80:
	ldr r1, [r5, #0x34]
	ldr r0, _08033C44 @ =gUnknown_08051072
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _08033A96
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	adds r0, #1
	b _08033A9C
_08033A96:
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	subs r0, #1
_08033A9C:
	ldr r3, _08033C48 @ =gUnknown_08051076
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08033AAC
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08033AB2
_08033AAC:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08033AB2:
	ldr r2, [r5, #4]
	movs r4, #3
	ldrb r3, [r2, #5]
	lsls r4, r4, #0xa
	cmp r3, r0
	beq _08033ADA
	ldrh r3, [r2, #0x2a]
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x1e
	lsls r6, r6, #0xa
	bics r3, r4
	orrs r3, r6
	strh r3, [r2, #0x2a]
	strb r0, [r2, #5]
	ldr r0, [r2]
	lsls r3, r0, #0x16
	bmi _08033ADA
	movs r3, #0x80
	orrs r0, r3
	str r0, [r2]
_08033ADA:
	ldr r0, [r5, #0x3c]
	ldrb r2, [r0, #5]
	cmp r2, r1
	beq _08033AFE
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r4
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08033AFE
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
_08033AFE:
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #8]
	bl sub_803B8CA
	b _08033764

	non_word_aligned_thumb_func_start sub_8033B0E
sub_8033B0E: @ 0x08033B0E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08033C4C @ =gUnknown_03003E98
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xf0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	cmp r0, #0
	sub sp, #0xc
	bne _08033B8A
	movs r3, #0xf
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #0xe]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #0xe]
	bpl _08033B40
	movs r1, #0
	strb r1, [r5, #0xe]
	rsbs r0, r0, #0
	strb r0, [r5, #0xf]
	b _08033B4C
_08033B40:
	cmp r1, #4
	ble _08033B4C
	movs r1, #4
	strb r1, [r5, #0xe]
	rsbs r0, r0, #0
	strb r0, [r5, #0xf]
_08033B4C:
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls _08033B60
	movs r6, #3
	b _08033B66
_08033B60:
	cmp r6, #1
	bhs _08033B66
	movs r6, #1
_08033B66:
	ldr r0, _08033C50 @ =gUnknown_03003EA0
	ldr r7, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _08033C54 @ =0x000011EF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq _08033B8A
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08033B8A:
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	movs r1, #1
	lsls r1, r1, #0x14
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r5, #0
	adds r2, r2, r0
	cmp r1, #0
	blt _08033BD0
	cmp r2, #0
	blt _08033BD0
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08033BC8
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_08033BC8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033BD0:
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	b _08033BC8

	non_word_aligned_thumb_func_start sub_8033BEE
sub_8033BEE: @ 0x08033BEE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DFD4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033C0A
sub_8033C0A: @ 0x08033C0A
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D6C4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8033C26
sub_8033C26: @ 0x08033C26
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801E124
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl sub_803B8CC
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_08033C44: .4byte gUnknown_08051072
_08033C48: .4byte gUnknown_08051076
_08033C4C: .4byte gUnknown_03003E98
_08033C50: .4byte gUnknown_03003EA0
_08033C54: .4byte 0x000011EF

	thumb_func_start sub_8033C58
sub_8033C58: @ 0x08033C58
	push {r4, lr}
	adds r4, r0, #0
	bne _08033C70
	movs r0, #0x58
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08033C70
	adds r0, r4, #0
_08033C6A:
	pop {r4}
	pop {r3}
	bx r3
_08033C70:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08034050 @ =_0803EA68
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x40
	str r1, [r4, #0x48]
	ldrh r2, [r0, #0xc]
	movs r3, #0x3c
	bics r2, r3
	movs r3, #0xc0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	bics r2, r3
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	adds r0, r4, #0
	b _08033C6A

	thumb_func_start sub_8033CA4
sub_8033CA4: @ 0x08033CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08034050 @ =_0803EA68
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08033CC4
	ldr r0, _08034054 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08033CC4:
	ldr r5, _08034058 @ =gUnknown_0300345C
	movs r6, #0x45
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033CDE
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_80268AC
_08033CDE:
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033D06
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08033D06:
	ldr r0, [r4, #0x48]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq _08033D1E
	adds r0, r4, #0
	bl sub_803DA18
_08033D1E:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8033D24
sub_8033D24: @ 0x08033D24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803405C @ =gUnknown_03003458
	movs r6, #3
	ldr r1, [r0]
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	lsls r6, r6, #8
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x19
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0, #0x20]
	str r3, [r4, #0x48]
	ldr r0, [r1, #0x20]
	adds r3, #0xc0
	str r0, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #5
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1, #0x20]
	adds r5, r4, #0
	str r1, [r4, #0x40]
	ldr r1, [r3, #0x3c]
	adds r5, #0x40
	ldrh r3, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	bics r3, r6
	lsls r1, r1, #8
	orrs r1, r3
	ldr r3, [r4, #0x34]
	movs r6, #0xf
	lsls r6, r6, #0x16
	bics r3, r6
	lsls r6, r2, #0x1a
	lsrs r6, r6, #0x1c
	lsls r6, r6, #0x16
	orrs r3, r6
	str r3, [r4, #0x34]
	movs r3, #0xc0
	bics r1, r3
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x18
	orrs r1, r2
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x1e
	lsls r2, r2, #1
	adds r2, #3
	lsls r2, r2, #0x1c
	movs r3, #0x3c
	bics r1, r3
	lsrs r2, r2, #0x1a
	orrs r1, r2
	strh r1, [r5, #0xc]
	ldr r0, [r0, #0x30]
	adds r6, r4, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0x1c
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x44]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r5, #0x12]
	ldr r0, _08034054 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	lsls r7, r2, #7
	bics r1, r7
	str r1, [r0]
	ldr r0, _08034054 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne _08033E12
	movs r2, #0
	movs r1, #0x31
	ldr r0, [r4, #4]
	bl sub_80007A0
	movs r2, #0
	movs r1, #0x13
	lsls r1, r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	b _08033E48
_08033E12:
	movs r3, #0x16
	ldr r7, _08034060 @ =gUnknown_0300334A
	muls r1, r3, r1
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3, r1
	adds r1, r1, r7
	lsls r0, r0, #1
	adds r0, r1, r0
	ldrh r1, [r0, #2]
	ldr r0, [r4, #0x3c]
	movs r2, #0
	bl sub_80007A0
_08033E48:
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	adds r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1c
	cmp r1, #1
	ldr r0, _08034058 @ =gUnknown_0300345C
	bne _08033EAC
	ldr r1, [r0]
	movs r0, #0x45
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08033EA6:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033EAC:
	ldr r0, [r0]
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	b _08033EA6

	non_word_aligned_thumb_func_start sub_8033EBA
sub_8033EBA: @ 0x08033EBA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08033ECE
	movs r1, #0
	bl sub_80401E4
	b _08033ED4
_08033ECE:
	movs r1, #1
	bl sub_80401E4
_08033ED4:
	ldr r0, [r4, #0x40]
	movs r1, #0x9c
	ldr r1, [r1, r0]
	movs r7, #0
	cmp r1, #0xf
	beq _08033EE4
	cmp r1, #0x10
	bne _08033F4E
_08033EE4:
	ldr r1, [r4, #0x34]
	lsls r2, r1, #0x15
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne _08033F26
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne _08033EFE
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	b _08033F26
_08033EFE:
	cmp r1, #2
	bne _08033F26
	ldr r0, [r0, #0x7c]
	ldr r1, _08034064 @ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
_08033F26:
	ldr r0, _0803405C @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x48]
	bl sub_803357C
_08033F48:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08033F4E:
	ldr r2, [r4, #0x34]
	movs r6, #7
	adds r5, r4, #0
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x1d
	adds r5, #0x40
	lsls r6, r6, #8
	cmp r1, #0
	beq _08033FF0
	cmp r1, #1
	beq _08034048
	cmp r1, #2
	bne _08033FEE
	ldr r0, [r4, #4]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	movs r3, #0x16
	ldr r6, _08034060 @ =gUnknown_0300334A
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3, r2
	adds r2, r2, r6
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0803404E
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08033FA0
	bl sub_8000914
_08033FA0:
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq _08033FDA
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3, r1
	adds r1, r1, r6
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08033FDA
	bl sub_8000914
_08033FDA:
	ldr r7, _08034058 @ =gUnknown_0300345C
	ldr r0, [r7]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08033FEE:
	b _0803412C
_08033FF0:
	ldrh r1, [r5, #0xc]
	lsls r0, r1, #0x16
	lsrs r2, r0, #0x1e
	cmp r2, #2
	bne _08034068
	ldrh r0, [r5, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #0x12]
	cmp r0, #0x78
	bls _08034068
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	ldr r6, _08034060 @ =gUnknown_0300334A
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_803FC14
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	beq _0803404A
	movs r2, #0
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_803FC14
	b _0803404A
_08034048:
	b _08034172
_0803404A:
	strh r7, [r5, #0x12]
	b _0803412C
_0803404E:
	b _08034296
	.align 2, 0
_08034050: .4byte _0803EA68
_08034054: .4byte gUnknown_03003EB8
_08034058: .4byte gUnknown_0300345C
_0803405C: .4byte gUnknown_03003458
_08034060: .4byte gUnknown_0300334A
_08034064: .4byte gUnknown_03003454
_08034068:
	ldr r0, [r4, #4]
	ldr r3, [r0]
	lsls r3, r3, #0x15
	lsrs r3, r3, #0x1f
	bne _0803412C
	movs r3, #0x16
	ldr r7, _08034338 @ =gUnknown_0300334A
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3, r2
	adds r2, r2, r7
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq _080340D8
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3, r1
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080340CA
	bl sub_8000914
_080340CA:
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080340D8
	movs r1, #1
	bl sub_80401E4
_080340D8:
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r7, r1, #3
	ldr r1, _0803433C @ =gUnknown_030033A6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	lsls r2, r0, #1
	adds r1, r7, r1
	ldrh r1, [r1, r2]
	strh r1, [r5, #0x14]
	ldr r2, [r4, #0x34]
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq _0803412E
	cmp r2, #1
	beq _0803414A
	cmp r2, #2
	bne _08034122
	ldr r1, _08034340 @ =gUnknown_03003454
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r1, [r1, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl sub_803F654
_08034122:
	ldr r0, [r4, #0x34]
	bics r0, r6
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_0803412C:
	b _0803425C
_0803412E:
	ldr r2, _08034344 @ =gUnknown_030033A2
	ldrb r0, [r2, r0]
	bl sub_803C124
	ldr r2, _08034344 @ =gUnknown_030033A2
	strh r0, [r5, #0xe]
	ldrb r0, [r2]
	ldr r1, _0803433C @ =gUnknown_030033A6
	strh r0, [r5, #0x10]
	ldrh r1, [r1, r7]
	bl sub_803C124
	strh r0, [r5, #0x10]
	b _08034122
_0803414A:
	ldr r0, [r4, #0x44]
	ldr r7, _08034348 @ =gUnknown_0300345C
	ldr r1, [r0, #0x70]
	asrs r2, r1, #1
	str r1, [r0, #0x74]
	adds r1, r1, r2
	str r1, [r0, #0x70]
	movs r0, #0x45
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r0, #0x47
	ldr r1, [r7]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	b _08034122
_08034172:
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x15
	bmi _0803425C
	ldrh r1, [r5, #0x12]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r5, #0x12]
	ldrh r3, [r5, #0x14]
	cmp r1, r3
	bhi _0803425C
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	beq _080341EE
	cmp r2, #1
	beq _0803425E
	cmp r2, #2
	bne _0803425C
	cmp r1, r3
	beq _080341A2
	movs r1, #0xb6
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bgt _0803425C
_080341A2:
	ldr r0, [r0, #0x7c]
	ldr r1, _08034340 @ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
	ldr r0, [r4, #0x40]
	movs r3, #0x14
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r7, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x48]
	bl sub_803B8D6
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _0803425C
_080341EE:
	ldr r0, _0803434C @ =gUnknown_03003D2C
	ldr r2, _08034344 @ =gUnknown_030033A2
	ldr r7, [r0]
	movs r0, #0xac
	ldrb r0, [r0, r7]
	ldrb r2, [r2]
	cmp r0, r2
	bhs _08034218
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _08034230
	bl sub_803C124
	cmp r1, #0
	bne _08034230
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl modify_player_health
	b _08034230
_08034218:
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _08034230
	bl sub_803C124
	cmp r1, #0
	bne _08034230
	movs r1, #1
	adds r0, r7, #0
	adds r0, #0xac
	bl modify_player_health
_08034230:
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	beq _08034260
	ldr r0, _0803434C @ =gUnknown_03003D2C
	ldr r1, [r0]
	adds r1, #0xa0
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	beq _08034260
	ldrh r1, [r5, #0xc]
	ldr r2, _08034344 @ =gUnknown_030033A2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1e
	ldrb r1, [r2, r1]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	cmp r0, r1
	bne _0803425C
	b _08034260
_0803425C:
	b _080342D0
_0803425E:
	b _08034276
_08034260:
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _080342D0
_08034276:
	cmp r1, r3
	bne _080342D0
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r5, #0xc]
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _080342D0
_08034296:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080342D0
	ldr r6, _08034350 @ =gUnknown_03003EB8
	cmp r0, #0
	beq _080342AE
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #4]
_080342AE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _080342C0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
	str r7, [r4, #0x3c]
_080342C0:
	ldr r0, _08034354 @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
_080342D0:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080342D8
_080342D6:
	b _08033F48
_080342D8:
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne _080342FA
	bl sub_803F6B4
	cmp r0, #0x31
	bne _080342F2
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x2c]
	adds r5, r1, #0
	b _08034300
_080342F2:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	b _08034300
_080342FA:
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x30]
	ldr r5, [r0, #0x2c]
_08034300:
	adds r1, #0x2c
	adds r6, r1, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #4]
	ldrb r3, [r0, #5]
	subs r2, #2
	adds r1, r2, #0
	cmp r2, r3
	beq _0803431C
	bl sub_80401C0
_0803431C:
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldrb r2, [r5, #5]
	ldr r0, [r4, #0x3c]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq _080342D6
	bl sub_80401C0
	b _08033F48
	.align 2, 0
_08034338: .4byte gUnknown_0300334A
_0803433C: .4byte gUnknown_030033A6
_08034340: .4byte gUnknown_03003454
_08034344: .4byte gUnknown_030033A2
_08034348: .4byte gUnknown_0300345C
_0803434C: .4byte gUnknown_03003D2C
_08034350: .4byte gUnknown_03003EB8
_08034354: .4byte gUnknown_03003458

	thumb_func_start sub_8034358
sub_8034358: @ 0x08034358
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08034402
	bl sub_803F6B4
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r0, _080344D8 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x3c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08034402
	lsrs r2, r3, #0xf
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _080344DC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08034402:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034408
sub_8034408: @ 0x08034408
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08034426
	ldr r0, _080344DC @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08034426:
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803442C
sub_803442C: @ 0x0803442C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _080344D0
	ldr r0, _080344DC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080344D8 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080344E0 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _0803449A
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _080344A0
_0803449A:
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_080344A0:
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _080344C2
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_080344C2:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _080344D0
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_080344D0:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080344D8: .4byte gUnknown_03003EA0
_080344DC: .4byte gUnknown_03003EB8
_080344E0: .4byte 0x0010BE20

	thumb_func_start sub_80344E4
sub_80344E4: @ 0x080344E4
	push {r4, lr}
	adds r4, r0, #0
	bne _080344FC
	movs r0, #0xe8
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080344FC
	adds r0, r4, #0
_080344F6:
	pop {r4}
	pop {r3}
	bx r3
_080344FC:
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _080348C4 @ =_0803E424
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3BC @ =_080348C8
	str r0, [r4, #0x4c]
	movs r0, #0xf
	strh r0, [r4, #4]
	movs r0, #0
	strb r0, [r1, r4]
	movs r1, #0xff
	movs r2, #0xb6
	strb r1, [r2, r4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #4]
	ldr r3, _080348DC @ =0xF000FFFF
	ands r2, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r2, r2, r3
	str r2, [r1, #4]
	adds r1, #0x60
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	adds r0, r4, #0
	b _080344F6

	non_word_aligned_thumb_func_start sub_8034536
sub_8034536: @ 0x08034536
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080348C4 @ =_0803E424
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _08034552
	adds r0, r4, #0
	bl sub_803DA18
_08034552:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034558
sub_8034558: @ 0x08034558
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	bx lr

	thumb_func_start sub_8034570
sub_8034570: @ 0x08034570
	push {r3, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x21
	beq _08034598
	cmp r3, #0x28
	bne _0803459E
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	ldrh r2, [r2, #4]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08034592:
	add sp, #4
	pop {r3}
	bx r3
_08034598:
	bl sub_80294EE
	b _08034592
_0803459E:
	bl sub_8029290
	b _08034592

	thumb_func_start sub_80345A4
sub_80345A4: @ 0x080345A4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne _080345B6
	movs r0, #1
_080345B0:
	add sp, #4
	pop {r3}
	bx r3
_080345B6:
	bl sub_80292E4
	b _080345B0

	thumb_func_start sub_80345BC
sub_80345BC: @ 0x080345BC
	push {r4, r5, r6, r7, lr}
	movs r7, #0xff
	adds r5, r0, #0
	adds r6, r0, #0
	adds r6, #0xa0
	adds r5, #0x80
	lsls r7, r7, #0x13
	adds r4, r0, #0
	cmp r1, #0x33
	sub sp, #0x1c
	beq _080346B8
	cmp r1, #0x34
	beq _080346BA
	cmp r1, #0x35
	beq _080346BC
	cmp r1, #0x36
	bne _080346A4
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E0 @ =0x0000038B
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #1
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E4 @ =0x00000397
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xe5
	lsls r0, r0, #2
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _080348E8 @ =0x0000039A
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _080348EC @ =0x00000391
	movs r1, #0xd
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x16
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x69
	str r1, [r5, #0x34]
	ldr r1, _080348F0 @ =0x00012668
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #7
	lsls r1, r1, #0x12
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4 @ =0xFFFF007F
	lsls r0, r0, #7
	adds r0, #0x5a
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
_080346A4:
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x17
	ldr r0, _080348F8 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #9]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #0x10
	b _080346BE
_080346B8:
	b _080346CA
_080346BA:
	b _08034778
_080346BC:
	b _08034820
_080346BE:
	lsrs r1, r1, #0x17
	strb r1, [r0, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080346CA:
	movs r2, #5
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9b
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #4
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0xa8
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #6
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x17
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x5d
	str r1, [r5, #0x34]
	ldr r1, _080348F0 @ =0x00012668
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0x13
	lsls r1, r1, #0x10
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4 @ =0xFFFF007F
	lsls r0, r0, #7
	adds r0, #0x64
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
_08034778:
	movs r2, #4
	movs r1, #5
	movs r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	ldr r0, _080348FC @ =0x0000036A
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	movs r3, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08034900 @ =0x0000036D
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08034904 @ =0x00000376
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #3
	lsls r1, r1, #0x18
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x61
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #0xf
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _080348F4 @ =0xFFFF007F
	adds r0, #0x6e
	ands r0, r1
	movs r1, #0x23
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
_08034820:
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x20
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #7
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x29
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x2c
	strh r1, [r4, #0xe]
	movs r2, #0x2d
	strh r2, [r4, #0xa]
	movs r0, #0x2e
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x26
	strh r0, [r6, #8]
	movs r0, #0x23
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x19
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x65
	str r1, [r5, #0x34]
	ldr r1, _08034908 @ =0x00010CD0
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4 @ =0xFFFF007F
	lsls r0, r0, #7
	adds r0, #0x78
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _080346A4
	.align 2, 0
_080348C4: .4byte _0803E424
_080348C8: .4byte 0x73736F42
_080348CC: .4byte 0x72635320
_080348D0: .4byte 0x20747069
_080348D4: .4byte 0x756F7247
_080348D8: .4byte 0x00000070
_080348DC: .4byte 0xF000FFFF
_080348E0: .4byte 0x0000038B
_080348E4: .4byte 0x00000397
_080348E8: .4byte 0x0000039A
_080348EC: .4byte 0x00000391
_080348F0: .4byte 0x00012668
_080348F4: .4byte 0xFFFF007F
_080348F8: .4byte gUnknown_03003D2C
_080348FC: .4byte 0x0000036A
_08034900: .4byte 0x0000036D
_08034904: .4byte 0x00000376
_08034908: .4byte 0x00010CD0

	thumb_func_start sub_803490C
sub_803490C: @ 0x0803490C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	add r0, pc, #0x3E0 @ =_08034CF4
	lsls r2, r1, #0x10
	ldm r0, {r0, r1}
	sub sp, #0x24
	bl sub_803B914
	add r2, pc, #0x3DC @ =_08034CFC
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	movs r1, #0
	add r7, sp, #0x14
	movs r2, #0
	adds r4, r6, #0
	adds r4, #0xe0
	stm r7!, {r1, r2}
	ldrb r1, [r4, #6]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r7, #8
	cmp r0, #0
	str r1, [sp, #0x10]
	bne _08034948
	movs r0, #1
_08034948:
	movs r5, #0
	cmp r0, #0xa
	bhs _08034992
	cmp r0, #5
	blo _0803496C
	movs r2, #1
	strb r2, [r7, r1]
	ldrb r1, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #6]
	cmp r1, #5
	bne _08034966
	strb r5, [r4, #6]
_08034966:
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803496C:
	cmp r0, #0
	beq _080349EA
	movs r1, #0
	cmp r0, #0
	bls _080349EA
_08034976:
	ldrb r2, [r4, #6]
	strb r5, [r7, r2]
	ldrb r2, [r4, #6]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	cmp r2, #5
	bne _0803498A
	strb r5, [r4, #6]
_0803498A:
	adds r1, #1
	cmp r1, r0
	blo _08034976
	b _080349EA
_08034992:
	cmp r0, #0x1e
	bhs _080349BE
	bl sub_8040684
	movs r0, #0
	cmp r1, #0
	bls _080349EA
	movs r2, #1
_080349A2:
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne _080349B6
	strb r5, [r4, #6]
_080349B6:
	adds r0, #1
	cmp r0, r1
	blo _080349A2
	b _080349EA
_080349BE:
	bl sub_8040574
	cmp r1, #5
	bls _080349C8
	movs r1, #5
_080349C8:
	movs r0, #0
	cmp r1, #0
	bls _080349EA
	movs r2, #2
_080349D0:
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne _080349E4
	strb r5, [r4, #6]
_080349E4:
	adds r0, #1
	cmp r0, r1
	blo _080349D0
_080349EA:
	ldrb r0, [r4, #6]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bls _08034A7E
	adds r1, r6, #0
	adds r1, #0x58
	str r1, [sp, #0x20]
_080349F8:
	adds r0, r6, r5
	adds r0, #0xe0
	ldrb r1, [r0]
	str r1, [sp, #0x1c]
	bl sub_803BE1C
	bl sub_8040490
	adds r0, #1
	str r0, [sp, #0xc]
	bl sub_803BE1C
	bl sub_8040468
	adds r0, #1
	str r0, [sp, #8]
	bl sub_803BE1C
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r7, r0, r1
	bne _08034A2A
	mvns r7, r7
_08034A2A:
	bl sub_803BE1C
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	bne _08034A3C
	mvns r0, r0
_08034A3C:
	ldr r1, [r6, #0x58]
	ldr r2, [sp, #0xc]
	muls r7, r2, r7
	lsls r2, r7, #0x10
	adds r1, r1, r2
	ldr r2, [r6, #0x5c]
	ldr r3, [sp, #8]
	str r1, [sp]
	muls r0, r3, r0
	lsls r0, r0, #0x10
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, _08034D04 @ =gUnknown_03003454
	mov r2, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	add r0, sp, #0x14
	ldrsb r3, [r0, r5]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	ldrb r0, [r4, #6]
	adds r5, #1
	cmp r0, r5
	bhi _080349F8
_08034A7E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034A86
sub_8034A86: @ 0x08034A86
	push {r4, r5, r6, r7}
	movs r3, #0
	movs r5, #0
	mov ip, r0
_08034A8E:
	ldr r1, _08034D04 @ =gUnknown_03003454
	mov r0, ip
	adds r0, r0, r3
	ldr r1, [r1]
	adds r0, #0xe0
	ldrb r0, [r0]
	ldr r1, [r1, #0x10]
	adds r3, #1
	ldr r1, [r1, #0x14]
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	adds r1, r2, #0
	subs r7, r5, r0
	ldr r0, [r2, #0x30]
	adds r1, #0x34
	subs r6, r5, r0
	ldr r0, [r2, #0x34]
	adds r0, r0, r7
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldr r0, [r1, #8]
	adds r0, r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	adds r0, r0, r6
	str r0, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	movs r0, #0xff
	adds r0, #1
	orrs r1, r0
	str r1, [r2]
	ldr r2, [r4, #0x30]
	ldr r4, [r2, #0x2c]
	ldr r7, [r2, #0x34]
	subs r6, r5, r4
	ldr r4, [r2, #0x30]
	adds r7, r7, r6
	str r7, [r2, #0x34]
	ldr r7, [r2, #0x38]
	subs r4, r5, r4
	adds r7, r7, r4
	adds r1, r2, #0
	adds r1, #0x34
	str r7, [r2, #0x38]
	ldr r7, [r1, #8]
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1, #0xc]
	adds r4, r6, r4
	str r4, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	blo _08034A8E
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8034B14
sub_8034B14: @ 0x08034B14
	push {r3, lr}
	bl sub_802972E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8034B20
sub_8034B20: @ 0x08034B20
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r3, #0
	adds r6, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08034B38
	cmp r0, #0x10
	bne _08034B42
_08034B38:
	movs r0, #0
_08034B3A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08034B42:
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _08034B5E
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b _08034B3A
_08034B5E:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08034B76
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08034B76
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_801F450
_08034B76:
	movs r0, #0x97
	ldrsb r0, [r0, r6]
	ldr r1, [sp, #0xc]
	adds r1, r0, r1
	ldr r0, [r6, #0x7c]
	subs r1, #2
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r1, #6
	bhs _08034C6E
	add r3, pc, #0x8 @ =_08034B94
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_08034B94:
	.byte 0x03
_08034B95:
	.byte 0x03
_08034B96:
	.byte 0x75
_08034B97:
	.byte 0x07
_08034B98:
	.byte 0x4D
_08034B99:
	.byte 0x07
loc_8034b9a:
	adds r0, r4, #0
	bl sub_801F286
	b _08034C8C
loc_8034ba2:
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0xe
	bmi _08034C00
	cmp r0, #0
	bne _08034BB8
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08034C00
	b _08034BE4
_08034BB8:
	cmp r0, #2
	bne _08034BC6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	bne _08034C00
	b _08034BE4
_08034BC6:
	cmp r0, #3
	bne _08034BD6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08034C00
	b _08034BE4
_08034BD6:
	cmp r0, #1
	bne _08034C00
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _08034C00
_08034BE4:
	movs r0, #0xaa
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xe
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	bl sub_801F286
	b _08034C8C
_08034C00:
	ldr r0, _08034D08 @ =gUnknown_03003D2C
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r7
	strb r1, [r0, #6]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08034C8C
loc_8034c2e:
	ldr r0, _08034D0C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08034C76
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08034C76
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	b _08034C70
_08034C6E:
	b _08034C86
_08034C70:
	bl sub_803B8CA
	b _08034C8C
_08034C76:
	adds r0, r4, #0
	bl sub_801F286
	b _08034C8C
loc_8034c7e:
	adds r0, r4, #0
	bl sub_801F286
	b _08034C8C
_08034C86:
	adds r0, r4, #0
	bl sub_801F286
_08034C8C:
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt _08034CB0
	ldr r2, _08034D10 @ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq _08034CB0
	ldr r0, _08034D08 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _08034D14 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	b _08034D1C
_08034CB0:
	ldr r1, _08034D08 @ =gUnknown_03003D2C
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _08034D14 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08034D18 @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
	b _08034D1C
	.align 2, 0
_08034CF4: .4byte 0x0000C000
_08034CF8: .4byte 0x00000000
_08034CFC: .4byte 0x00010000
_08034D00: .4byte 0x00000000
_08034D04: .4byte gUnknown_03003454
_08034D08: .4byte gUnknown_03003D2C
_08034D0C: .4byte gUnknown_03003458
_08034D10: .4byte gUnknown_03003478
_08034D14: .4byte gUnknown_030034F8
_08034D18: .4byte gUnknown_0300345C
_08034D1C:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08034B3A

	thumb_func_start sub_8034D2C
sub_8034D2C: @ 0x08034D2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08034D8C @ =0x8007FFFF
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08034D90 @ =gUnknown_0300345C
	ldr r1, [r1]
	ldr r0, [r0, #0x34]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034D5E
sub_8034D5E: @ 0x08034D5E
	ldr r1, _08034D94 @ =gUnknown_03003E98
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bhs _08034D86
	ldr r2, _08034D90 @ =gUnknown_0300345C
	adds r0, #0x80
	ldr r2, [r2]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r2
	bl sub_8028C2E
_08034D86:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08034D8C: .4byte 0x8007FFFF
_08034D90: .4byte gUnknown_0300345C
_08034D94: .4byte gUnknown_03003E98

	thumb_func_start sub_8034D98
sub_8034D98: @ 0x08034D98
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08035180 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl _080180BE
	ldr r4, _08035184 @ =gUnknown_03003460
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq _08034DC6
_08034DB8:
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne _08034DB8
_08034DC6:
	ldr r4, _08035188 @ =gUnknown_03003448
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _08034DEE
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r4]
	bl sub_8000DE6
_08034DEE:
	movs r5, #0
_08034DF0:
	lsls r0, r5, #2
	adds r4, r0, r6
	movs r0, #0xff
	adds r0, #0xf1
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _08034E0C
	adds r1, r4, #0
	ldr r0, _08035188 @ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
_08034E0C:
	movs r0, #1
	lsls r0, r0, #9
	adds r7, r4, r0
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _08034E26
	movs r0, #0x23
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_8000DE6
_08034E26:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _08034E3A
	movs r0, #0x21
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _08035188 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_8000DE6
_08034E3A:
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08034DF0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034E4A
sub_8034E4A: @ 0x08034E4A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r3, #0
	ldrsb r0, [r4, r3]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl _08034E64
	adds r1, r0, #0
	b _08034E6C
_08034E64:
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt _08034E6C
	adds r1, r0, #0
_08034E6C:
	cmp r0, r1
	beq _08034EDA
	strb r1, [r4]
	movs r3, #0
	ldrsb r0, [r4, r3]
	movs r3, #0x34
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r1, r1, r0
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r0, r0, r2
	muls r0, r3, r0
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x20
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	movs r3, #0
	ldrsb r0, [r4, r3]
	ldrb r1, [r4, #2]
	movs r3, #0xff
	movs r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xcd
	lsls r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	lsrs r1, r1, #0x10
	adds r4, r0, #0
	bl sub_80138E2
	movs r2, #0
	movs r1, #0xa
	adds r0, r4, #0
	str r2, [sp]
	ldr r3, _0803518C @ =0x0000FFFF
	bl sub_8013B9C
	ldr r0, _08035180 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_08034EDA:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034EE0
sub_8034EE0: @ 0x08034EE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08035190 @ =gUnknown_03003468
	sub sp, #0x44
	ldr r0, [r0]
	bl sub_80050FA
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_8001A60
	ldr r0, _08035194 @ =gUnknown_03003EA8
	add r1, pc, #0x29C @ =_08035198
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r4, #0
	ldr r4, _080351A8 @ =gUnknown_03003450
	str r0, [sp, #4]
	ldr r0, [r4]
	bl sub_800D9E0
	ldr r0, _080351AC @ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r4]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080351B0 @ =gUnknown_0300344C
	ldr r7, _080351B4 @ =gUnknown_03003D1C
	ldr r0, [r0]
	ldrb r1, [r7]
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	adds r3, r1, #0
	ldrh r7, [r2, #4]
	adds r3, #0xff
	adds r3, #0x86
	lsls r3, r7
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	adds r3, r5, r3
	ldr r3, [r3, r4]
	ldr r2, [r2, #0xc]
	movs r0, #0
	adds r2, r2, r3
	adds r2, #1
	str r2, [sp, #0x34]
	movs r2, #0xff
	adds r2, #0xe9
	movs r3, #0x25
	lsls r3, r3, #4
	strb r0, [r2, r6]
	movs r2, #0xf
	adds r4, r6, r3
	strb r2, [r4]
	ldr r5, _080351B8 @ =gUnknown_08051438
	strb r0, [r4, #2]
	lsls r1, r1, #1
	ldrh r1, [r5, r1]
	movs r2, #6
	movs r3, #0xd
	strb r1, [r4, #1]
	str r0, [r6]
	adds r1, r6, #0
	adds r1, #8
	str r0, [r6, #4]
	adds r0, r6, #0
	ldr r7, _080351B4 @ =gUnknown_03003D1C
	bl sub_8018C48
	ldrb r1, [r7]
	movs r0, #0
	cmp r1, #0
	bls _08034F9E
_08034F8A:
	lsls r3, r0, #1
	ldrh r3, [r5, r3]
	ldrb r2, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r3
	lsrs r0, r0, #0x18
	cmp r0, r1
	strb r2, [r4, #2]
	blo _08034F8A
_08034F9E:
	movs r0, #0
	movs r2, #1
	lsls r2, r2, #9
_08034FA4:
	lsls r1, r0, #2
	movs r5, #0xff
	adds r5, #0xf1
	adds r1, r1, r6
	movs r3, #0
	movs r2, #1
	lsls r2, r2, #9
	str r3, [r5, r1]
	adds r1, r1, r2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [r1, #0x30]
	str r3, [r1, #0x10]
	cmp r0, #8
	blo _08034FA4
	ldrb r0, [r4, #1]
	movs r5, #0
	cmp r0, #0
	bls _080350B0
_08034FCC:
	ldrb r0, [r4, #2]
	movs r3, #1
	adds r2, r3, #0
	adds r0, r0, r5
	lsls r1, r0, #2
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x55
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	lsls r2, r7
	cmp r0, #0
	beq _08034FF2
	lsrs r0, r0, #5
	ldr r7, _080351BC @ =gUnknown_03003478
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r2
	beq _08034FF6
_08034FF2:
	movs r2, #1
	b _08034FF8
_08034FF6:
	movs r2, #0
_08034FF8:
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x56
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	movs r3, #1
	lsls r3, r7
	cmp r0, #0
	beq _08035016
	lsrs r0, r0, #5
	ldr r7, _080351BC @ =gUnknown_03003478
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r3
	beq _0803501A
_08035016:
	movs r0, #1
	b _0803501C
_0803501A:
	movs r0, #0
_0803501C:
	adds r0, r0, r2
	lsls r2, r0, #0x18
	adds r0, r1, #0
	adds r0, #0xff
	adds r0, #0x57
	lsls r7, r0, #0x1b
	lsrs r7, r7, #0x1b
	movs r3, #1
	lsls r3, r7
	lsrs r2, r2, #0x18
	cmp r0, #0
	beq _08035040
	lsrs r0, r0, #5
	ldr r7, _080351BC @ =gUnknown_03003478
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ands r0, r3
	beq _08035044
_08035040:
	movs r0, #1
	b _08035046
_08035044:
	movs r0, #0
_08035046:
	adds r0, r0, r2
	adds r1, #0xff
	adds r1, #0x58
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r3
	cmp r1, #0
	beq _08035068
	lsrs r1, r1, #5
	ldr r7, _080351BC @ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r2
	beq _0803506C
_08035068:
	movs r1, #1
	b _0803506E
_0803506C:
	movs r1, #0
_0803506E:
	adds r0, r1, r0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x30]
	ldrb r0, [r4]
	cmp r0, #0xf
	bne _08035084
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _08035084
	strb r5, [r4]
_08035084:
	ldr r0, _08035188 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r6
	str r7, [sp, #0x40]
	adds r7, #0xff
	adds r7, #0xc1
	movs r1, #0xcb
	lsls r1, r1, #4
	str r0, [r7, #0x30]
	bl sub_800065C
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	movs r3, #0x34
	muls r0, r3, r0
	adds r0, #0x18
	str r0, [sp, #0x3c]
	lsrs r1, r5, #2
	b _080350B2
_080350B0:
	b _080351FA
_080350B2:
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x20
	str r1, [sp, #0x38]
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x30]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #4
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080350EA
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080350EA:
	movs r1, #1
	ldr r0, [r7, #0x30]
	bl sub_80401E4
	ldr r0, _08035188 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #1
	ldr r1, [sp, #0x40]
	lsls r2, r2, #9
	adds r7, r1, r2
	str r0, [r7, #0x30]
	ldrb r1, [r4, #2]
	ldr r2, _080351C0 @ =gUnknown_0805144C
	adds r1, r1, r5
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	ldr r0, [sp, #0x3c]
	add r3, sp, #0
	ldr r1, [sp, #0x38]
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x30]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #3
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08035144
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08035144:
	movs r1, #1
	ldr r0, [r7, #0x30]
	bl sub_80401E4
	ldr r1, [sp, #0x30]
	cmp r1, #4
	beq _080351EC
	ldr r0, _08035188 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7, #0x10]
	ldr r1, [sp, #0x30]
	ldr r2, _080351C4 @ =0x00000CE3
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [sp, #0x3c]
	add r3, sp, #0
	ldr r1, [sp, #0x38]
	strh r0, [r3, #0x2c]
	strh r1, [r3, #0x2e]
	ldr r0, [r7, #0x10]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r7, #0x10]
	ldrh r1, [r0, #0x2a]
	b _080351C8
	.align 2, 0
_08035180: .4byte gUnknown_0300345C
_08035184: .4byte gUnknown_03003460
_08035188: .4byte gUnknown_03003448
_0803518C: .4byte 0x0000FFFF
_08035190: .4byte gUnknown_03003468
_08035194: .4byte gUnknown_03003EA8
_08035198: .4byte 0x654D6742
_0803519C: .4byte 0x6353756E
_080351A0: .4byte 0x62706172
_080351A4: .4byte 0x006B6F6F
_080351A8: .4byte gUnknown_03003450
_080351AC: .4byte gUnknown_03003E98
_080351B0: .4byte gUnknown_0300344C
_080351B4: .4byte gUnknown_03003D1C
_080351B8: .4byte gUnknown_08051438
_080351BC: .4byte gUnknown_03003478
_080351C0: .4byte gUnknown_0805144C
_080351C4: .4byte 0x00000CE3
_080351C8:
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r3, #0
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #2
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080351E4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080351E4:
	movs r1, #1
	ldr r0, [r7, #0x10]
	bl sub_80401E4
_080351EC:
	adds r5, #1
	ldrb r0, [r4, #1]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bls _080351FA
	b _08034FCC
_080351FA:
	adds r0, r6, #0
	adds r0, #0xf8
	movs r1, #4
	adds r5, r0, #0
	bl sub_80147FA
	movs r2, #8
	ldr r1, _0803545C @ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp]
	movs r7, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	adds r3, r7, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0x34]
	bl _080137F8
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0x52
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	movs r0, #0x68
	str r0, [sp, #4]
	movs r2, #0
	movs r1, #0
	movs r3, #0x44
	adds r0, r5, #0
	bl sub_803F9C4
	movs r3, #0
	ldrsb r0, [r4, r3]
	ldrb r1, [r4, #2]
	movs r3, #0xff
	movs r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xcd
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	movs r1, #0xa
	adds r0, r5, #0
	str r2, [sp]
	ldr r3, _0803545C @ =0x0000FFFF
	bl sub_8013B9C
	ldr r0, _08035460 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r5, #0x50
	movs r2, #0
	movs r1, #0xff
	adds r1, #0xef
	str r0, [r5, #0x2c]
	bl sub_80007A0
	movs r3, #0
	ldrsb r0, [r4, r3]
	movs r3, #0x34
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r1, r1, r0
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r0, r0, r2
	muls r0, r3, r0
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x18
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	adds r1, #0x20
	strh r1, [r3, #0x2e]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	ldr r0, [r5, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x2a]
	movs r2, #3
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080352E4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080352E4:
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r5, #0x2c]
	bl sub_80401E4
	ldr r4, _08035464 @ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _08035318
	bl sub_800B72A
	cmp r0, #0
	beq _0803530C
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _08035318
_0803530C:
	ldr r0, _08035468 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_08035318:
	bl sub_8018070
	add sp, #0x44
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8035324
sub_8035324: @ 0x08035324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x58
	add r1, sp, #0xf8
	movs r2, #0x78
	adds r7, r1, #0
	mov r6, sp
	add r0, sp, #8
	ldr r3, _0803546C @ =sub_80143E0
	bl sub_803C3A4
	adds r0, r7, #0
	bl sub_80143E0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r5, r0, #0
	bl sub_80143E0
	adds r0, r6, #0
	bl sub_8034EE0
	adds r4, r5, #0
	adds r4, #0x70
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080353DA
_0803535C:
	ldr r0, _08035470 @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi _0803536A
	ldrh r1, [r0, #6]
_0803536A:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #0x1c
	lsls r1, r0, #0x1f
	bpl _0803537A
	movs r0, #6
	strb r0, [r4, #8]
	b _080353C8
_0803537A:
	lsls r1, r0, #0x1e
	bpl _08035384
	movs r0, #3
	strb r0, [r4, #8]
	b _080353C8
_08035384:
	lsls r1, r0, #0x1d
	bpl _0803538E
	movs r0, #4
	strb r0, [r4, #8]
	b _080353C8
_0803538E:
	lsls r1, r0, #0x1a
	bpl _0803539E
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b _080353C8
_0803539E:
	lsls r1, r0, #0x1b
	bpl _080353AC
	movs r1, #1
	adds r0, r6, #0
	bl sub_8034E4A
	b _080353C8
_080353AC:
	lsls r1, r0, #0x19
	bpl _080353BC
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b _080353C8
_080353BC:
	lsls r0, r0, #0x18
	bpl _080353C8
	movs r1, #4
	adds r0, r6, #0
	bl sub_8034E4A
_080353C8:
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	bl sub_800EF2A
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0803535C
_080353DA:
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	adds r0, r1, r0
	ldr r1, _08035474 @ =gUnknown_03003D35
	strb r0, [r1]
	ldr r1, _08035478 @ =gUnknown_03003D34
	movs r0, #0xb
	strb r0, [r1]
	ldrb r0, [r4, #8]
	cmp r0, #3
	beq _08035424
	ldr r4, _08035468 @ =gUnknown_0300345C
	cmp r0, #4
	beq _08035412
	cmp r0, #6
	bne _0803542A
	movs r0, #0xd
	bl sub_8018386
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b _0803542A
_08035412:
	movs r0, #0x11
	bl sub_8018386
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b _0803542A
_08035424:
	movs r0, #4
	bl sub_8018386
_0803542A:
	adds r0, r6, #0
	bl sub_8034D98
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x80
	ldr r3, _0803547C @ =sub_8014436
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x58
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803545C: .4byte 0x0000FFFF
_08035460: .4byte gUnknown_03003448
_08035464: .4byte gUnknown_03003460
_08035468: .4byte gUnknown_0300345C
_0803546C: .4byte sub_80143E0
_08035470: .4byte gUnknown_03003444
_08035474: .4byte gUnknown_03003D35
_08035478: .4byte gUnknown_03003D34
_0803547C: .4byte sub_8014436

	thumb_func_start sub_8035480
sub_8035480: @ 0x08035480
	push {r4, lr}
	adds r4, r0, #0
	bne _08035498
	movs r0, #0xac
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08035498
	adds r0, r4, #0
_08035492:
	pop {r4}
	pop {r3}
	bx r3
_08035498:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08035730 @ =_0803E814
	ldr r2, _08035734 @ =0xFF000FFF
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x20]
	movs r3, #0x7d
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	ands r1, r2
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	lsrs r2, r2, #0xc
	lsrs r1, r1, #0xc
	lsls r1, r1, #0xc
	bics r1, r2
	lsls r2, r2, #8
	bics r1, r2
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	movs r2, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r2, r2, #0x10
	bics r1, r2
	add r2, pc, #0x264 @ =_08035738
	str r2, [r4, #0x4c]
	movs r2, #0x13
	strh r2, [r4, #4]
	movs r2, #0x28
	strb r2, [r3, r4]
	movs r2, #0xff
	lsls r2, r2, #8
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #4]
	ldr r2, _0803574C @ =0xF000FFFF
	ands r1, r2
	str r1, [r0, #4]
	ldr r1, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x11
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _08035492

	non_word_aligned_thumb_func_start sub_803550E
sub_803550E: @ 0x0803550E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08035730 @ =_0803E814
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0803552A
	adds r0, r4, #0
	bl sub_803DA18
_0803552A:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8035530
sub_8035530: @ 0x08035530
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _08035544
	movs r0, #0x13
	str r0, [r4, #0x1c]
_08035544:
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803554A
sub_803554A: @ 0x0803554A
	push {r4}
	ldr r1, [r1]
	movs r3, #0
	ldrb r2, [r1, #5]
	lsls r2, r2, #0x10
	str r2, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x80
	str r3, [r2, #0x1c]
	ldrb r4, [r1, #4]
	cmp r4, #0xc
	bhs _080355EA
	add r3, pc, #0x8 @ =_0803556C
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0803556C:
	.byte 0x06
_0803556D:
	.byte 0x06
_0803556E:
	.byte 0x06
_0803556F:
	.byte 0x06
_08035570:
	.byte 0x13
_08035571:
	.byte 0x1C
_08035572:
	.byte 0x28
_08035573:
	.byte 0x34
_08035574:
	.byte 0x40
_08035575:
	.byte 0x49
_08035576:
	.byte 0x55
_08035577:
	.byte 0x61
loc_8035578:
	ldrb r1, [r1, #4]
	movs r4, #0xf
	ldr r3, [r0, #0x7c]
	lsls r4, r4, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0xff
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080355EA
loc_8035592:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080355EA
loc_80355a4:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080355EA
loc_80355bc:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080355EA
loc_80355d4:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
_080355EA:
	b _08035644
loc_80355ec:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08035644
loc_80355fe:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08035644
loc_8035616:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08035644
loc_803562e:
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
_08035644:
	movs r0, #0x13
	str r0, [r2, #0x1c]
	pop {r4}
	bx lr

	thumb_func_start sub_803564C
sub_803564C: @ 0x0803564C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08035672
	cmp r0, #0x1f
	beq _0803567A
	cmp r0, #0x22
	bne _0803568E
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
_0803566C:
	pop {r4}
	pop {r3}
	bx r3
_08035672:
	adds r0, r4, #0
	bl sub_803554A
	b _0803566C
_0803567A:
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0803566C
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b _0803566C
_0803568E:
	adds r0, r4, #0
	bl sub_801DD40
	b _0803566C

	non_word_aligned_thumb_func_start sub_8035696
sub_8035696: @ 0x08035696
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _080356CC
	cmp r0, #0x1f
	bne _080356D8
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _080356BC
	movs r1, #0x13
	str r1, [r0, #0x1c]
_080356BC:
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _080356C6
	movs r0, #0
_080356C6:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080356CC:
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _080356C6
	movs r0, #0
	b _080356C6
_080356D8:
	adds r0, r4, #0
	bl sub_801DF50
	b _080356C6

	thumb_func_start sub_80356E0
sub_80356E0: @ 0x080356E0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08035708
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08035708:
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	rsbs r1, r1, #0
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_08035730: .4byte _0803E814
_08035734: .4byte 0xFF000FFF
_08035738: .4byte 0x67676F54
_0803573C: .4byte 0x4F20656C
_08035740: .4byte 0x63656A62
_08035744: .4byte 0x72472074
_08035748: .4byte 0x0070756F
_0803574C: .4byte 0xF000FFFF

	thumb_func_start sub_8035750
sub_8035750: @ 0x08035750
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0803577C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0803577C:
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	rsbs r1, r1, #0
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80357A4
sub_80357A4: @ 0x080357A4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x20]
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	beq _08035846
	ldr r0, _08035B94 @ =gUnknown_03003EA0
	ldr r6, [r4, #0x2c]
	movs r7, #0
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	mvns r7, r7
	adds r1, r7, #0
	cmp r2, #0
	beq _080357D2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080357D2:
	ldr r0, [r5, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x14
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne _08035846
	ldr r6, [r4, #0x2c]
	ldr r1, [r6]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035846
	lsls r0, r0, #8
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x18]
	ldr r0, _08035B94 @ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r1, [r6, #0x44]
	cmp r1, #0
	beq _08035806
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r7, r0, #3
_08035806:
	ldr r1, [r5, #0x20]
	lsls r0, r7, #0x10
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0803581C
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0803581C:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803582A
	bl sub_8000914
_0803582A:
	ldr r0, [r5, #0x24]
	lsls r1, r0, #4
	lsrs r0, r1, #0x18
	beq _08035846
	ldr r0, _08035B98 @ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _08035846
	bl sub_8028C2E
_08035846:
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8035852
sub_8035852: @ 0x08035852
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x1f
	bne _0803588A
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge _0803586E
	rsbs r1, r1, #0
_0803586E:
	adds r0, #0x80
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, [r0, #0x28]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x28]
	movs r0, #0
	strb r0, [r2, #0xc]
_08035884:
	pop {r4}
	pop {r3}
	bx r3
_0803588A:
	bl sub_801E2DA
	b _08035884

	thumb_func_start sub_8035890
sub_8035890: @ 0x08035890
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _08035B9C @ =gUnknown_03003478
	adds r5, r0, #0
	ldr r1, [r1]
	movs r0, #0x20
	adds r2, r1, #0
	ands r1, r0
	adds r0, r5, #0
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, #0x70
	cmp r1, #0
	beq _080358C2
	ldr r1, [r4, #0x20]
	lsls r6, r1, #0x14
	ldr r1, [r4, #0x24]
	lsrs r6, r6, #0x14
	lsls r1, r1, #0xc
	lsrs r7, r1, #0x18
	ldr r1, [r4, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strb r1, [r0, #0xd]
	b _08035910
_080358C2:
	movs r1, #0x40
	ands r2, r1
	beq _08035968
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsls r7, r2, #0x18
	lsls r2, r2, #0x10
	lsls r6, r1, #0x14
	lsrs r2, r2, #0x18
	strb r2, [r0, #0xd]
	lsrs r6, r6, #0x14
	lsls r1, r1, #4
	lsrs r7, r7, #0x18
	lsrs r0, r1, #0x18
	beq _080358F4
	ldr r0, _08035B98 @ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _080358F4
	bl sub_80268AC
_080358F4:
	ldr r0, [r4, #0x24]
	lsls r1, r0, #0xc
	lsrs r0, r1, #0x18
	beq _08035910
	ldr r0, _08035B98 @ =gUnknown_0300345C
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _08035910
	bl sub_80268AC
_08035910:
	cmp r6, #0
	beq _08035956
	movs r0, #0x11
	str r0, [r4, #0x1c]
	strh r6, [r5, #0x18]
	ldr r0, _08035B94 @ =gUnknown_03003EA0
	ldr r4, [r5, #0x2c]
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08035936
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08035936:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq _08035948
	movs r2, #0
	adds r1, r6, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
_08035948:
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035956
	bl sub_8000914
_08035956:
	cmp r7, #0
	beq _08035968
	ldr r0, _08035B98 @ =gUnknown_0300345C
	lsls r1, r7, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
_08035968:
	ldr r0, _08035BA0 @ =gUnknown_03003E88
	movs r6, #0xff
	ldr r0, [r0]
	adds r6, #0x99
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldrh r2, [r1, #0x18]
	ldrh r6, [r6, r0]
	movs r4, #4
	adds r2, r2, r4
	movs r3, #0
	cmp r2, r6
	bls _08035986
	strh r3, [r1, #0x18]
_08035986:
	ldrh r2, [r1, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r1, #0x18]
	lsls r3, r2, #0x1e
	beq _080359A2
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1e
	subs r3, r4, r3
	adds r2, r2, r3
	strh r2, [r1, #0x18]
_080359A2:
	movs r1, #0x2c
	strh r1, [r0]
	strh r4, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _08035BA4 @ =gUnknown_03003454
	movs r3, #1
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80359C0
sub_80359C0: @ 0x080359C0
	push {r4, r5, r6, r7, lr}
	ldr r4, _08035BA8 @ =0xFF000FFF
	adds r3, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	movs r6, #0
	lsrs r5, r4, #0x10
	cmp r3, #0x5b
	beq _08035ABA
	bgt _08035ABC
	movs r7, #1
	lsls r7, r7, #0xf
	cmp r3, #0x58
	beq _08035ABE
	bgt _08035A54
	cmp r3, #0x42
	beq _08035AC0
	cmp r3, #0x56
	beq _08035AC2
	cmp r3, #0x57
	bne _08035A4E
	ldr r3, _08035BAC @ =0x000002B2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	lsrs r3, r4, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	lsls r3, r3, #0xc
	adds r2, r2, r3
	movs r0, #0x17
	lsls r0, r0, #0x15
	bics r2, r4
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
_08035A4E:
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08035A54:
	cmp r3, #0x59
	beq _08035B3C
	cmp r3, #0x5a
	bne _08035A4E
	ldr r3, _08035BB0 @ =0x0000028B
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	lsls r5, r5, #0xb
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #2
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	movs r4, #0xa3
	lsls r4, r4, #0xe
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	lsls r0, r0, #8
	adds r0, #0x2f
	movs r3, #0x2d
	lsls r3, r3, #0xc
	str r0, [r1, #0x28]
	movs r0, #0x17
	adds r2, r2, r3
	bics r2, r4
	lsls r0, r0, #0x15
	adds r0, r2, r0
	b _08035AC4
_08035ABA:
	b _08035C34
_08035ABC:
	b _08035AC8
_08035ABE:
	b _08035B50
_08035AC0:
	b _08035E20
_08035AC2:
	b _08035AE6
_08035AC4:
	str r0, [r1, #0x24]
	b _08035A4E
_08035AC8:
	adds r7, r3, #0
	subs r7, #0x5c
	cmp r7, #5
	bhs _08035ADA
	add r3, pc, #0x8 @ =_08035ADC
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_08035ADA:
	b _08035A4E
_08035ADC:
	.byte 0xFF, 0x00
_08035ADE:
	.byte 0x28, 0x01
_08035AE0:
	.byte 0xD5, 0x00
_08035AE2:
	.byte 0x51, 0x01
_08035AE4:
	.byte 0x7A, 0x01
_08035AE6:
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r3, r3, #0xc
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	adds r2, r2, r3
	bics r2, r4
	movs r0, #0x17
	lsls r0, r0, #0x15
	b _08035B3E
_08035B3C:
	b _08035BD4
_08035B3E:
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035B50:
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	ldr r2, [r1, #0x20]
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	b _08035BB4
	.align 2, 0
_08035B94: .4byte gUnknown_03003EA0
_08035B98: .4byte gUnknown_0300345C
_08035B9C: .4byte gUnknown_03003478
_08035BA0: .4byte gUnknown_03003E88
_08035BA4: .4byte gUnknown_03003454
_08035BA8: .4byte 0xFF000FFF
_08035BAC: .4byte 0x000002B2
_08035BB0: .4byte 0x0000028B
_08035BB4:
	lsrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	movs r0, #0x19
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #0x15
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035BD4:
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	bics r2, r3
	movs r0, #0x19
	lsls r0, r0, #0x15
	bics r2, r4
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b _08035A4E
_08035C34:
	ldr r3, _08035E68 @ =0x0000025D
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035c86:
	movs r3, #0x95
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035cda:
	ldr r3, _08035E6C @ =0x00000257
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035d2c:
	ldr r3, _08035E70 @ =0x0000025A
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xb
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #2
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0xb
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035d7e:
	ldr r3, _08035E74 @ =0x00000231
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x14
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xa
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	subs r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	adds r2, r2, r3
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	bics r2, r4
	str r2, [r1, #0x24]
	b _08035A4E
loc_8035dd0:
	ldr r3, _08035E78 @ =0x0000026A
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x3c
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #0xf
	ldr r2, [r1, #0x20]
	lsls r5, r5, #0xa
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	subs r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	lsls r4, r3, #0xc
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	lsls r4, r3, #8
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #8
	bics r2, r3
	bics r2, r4
	str r0, [r1, #0x28]
	str r2, [r1, #0x24]
	b _08035A4E
_08035E20:
	movs r3, #0x13
	lsls r3, r3, #5
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strb r6, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	ldr r2, [r1, #0x20]
	bics r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	ands r2, r4
	lsls r4, r3, #0xc
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	lsls r4, r3, #8
	bics r2, r3
	bics r2, r4
	lsls r0, r0, #8
	bics r2, r3
	bics r2, r4
	str r0, [r1, #0x28]
	str r2, [r1, #0x24]
	b _08035A4E
	.align 2, 0
_08035E68: .4byte 0x0000025D
_08035E6C: .4byte 0x00000257
_08035E70: .4byte 0x0000025A
_08035E74: .4byte 0x00000231
_08035E78: .4byte 0x0000026A

	thumb_func_start sub_8035E7C
sub_8035E7C: @ 0x08035E7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08035E94
	movs r0, #0xbc
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08035E94
	adds r0, r4, #0
_08035E8E:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08035E94:
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08036128 @ =_0803E528
	movs r1, #0
	str r0, [r4]
	add r0, pc, #0x288 @ =_0803612C
	str r0, [r4, #0x4c]
	movs r0, #0x14
	strh r0, [r4, #4]
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r2, r4, #0
	adds r2, #0xa0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r2, #8]
	ldr r3, [r0, #4]
	ldr r5, _08036140 @ =0xF000FFFF
	ands r3, r5
	str r3, [r0, #4]
	ldr r3, [r4, #0x7c]
	movs r5, #0xf
	lsls r5, r5, #0x18
	bics r3, r5
	str r3, [r4, #0x7c]
	movs r3, #0x11
	str r3, [r0, #0x1c]
	movs r3, #0xff
	strb r3, [r2]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	movs r3, #0x13
	lsls r3, r3, #5
	strh r1, [r4, #0x1e]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xa]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	movs r3, #4
	movs r5, #0x97
	strb r3, [r5, r4]
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xc
	orrs r3, r5
	str r3, [r0, #0xc]
	strh r1, [r2, #0x16]
	adds r0, r4, #0
	b _08035E8E

	non_word_aligned_thumb_func_start sub_8035EFA
sub_8035EFA: @ 0x08035EFA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08036128 @ =_0803E528
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08035F16
	adds r0, r4, #0
	bl sub_803DA18
_08035F16:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8035F1C
sub_8035F1C: @ 0x08035F1C
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x18]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #0x12]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #0x14]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq _08035F4E
	lsrs r2, r2, #5
	ldr r4, _08036144 @ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne _08035F4E
	ldrh r1, [r1, #4]
	strh r1, [r0, #0x16]
_08035F4A:
	pop {r4}
	bx lr
_08035F4E:
	movs r1, #0
	strh r1, [r0, #0x16]
	b _08035F4A

	thumb_func_start sub_8035F54
sub_8035F54: @ 0x08035F54
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #6]
	ldr r6, [r4, #0x2c]
	cmp r0, #0
	beq _08035F6A
	ldr r0, [r6]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08035FAC
_08035F6A:
	ldrh r0, [r5, #4]
	movs r1, #0
	mvns r1, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x1a]
	ldr r0, _08036148 @ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq _08035F8C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08035F8C:
	lsls r0, r1, #0x10
	ldrh r1, [r5, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08035F9E
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_08035F9E:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08035FAC
	bl sub_8000914
_08035FAC:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8035FB2
sub_8035FB2: @ 0x08035FB2
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	beq _08035FCE
	cmp r2, #0x27
	beq _08035FDA
	cmp r2, #0x28
	bne _08035FE0
	bl sub_8035F1C
_08035FC8:
	add sp, #4
	pop {r3}
	bx r3
_08035FCE:
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _08035FC8
_08035FDA:
	bl sub_8035F54
	b _08035FC8
_08035FE0:
	bl sub_801DD40
	b _08035FC8

	non_word_aligned_thumb_func_start sub_8035FE6
sub_8035FE6: @ 0x08035FE6
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne _08035FF8
	movs r0, #1
_08035FF2:
	add sp, #4
	pop {r3}
	bx r3
_08035FF8:
	bl sub_801DF50
	b _08035FF2

	non_word_aligned_thumb_func_start sub_8035FFE
sub_8035FFE: @ 0x08035FFE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08036026
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08036026:
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	rsbs r1, r1, #0
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803604E
sub_803604E: @ 0x0803604E
	push {r4}
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	str r2, [r0, #0x5c]
	ldrh r2, [r1, #4]
	cmp r2, #0
	bne _08036092
	ldrh r1, [r1, #6]
	cmp r1, #0
	bne _08036092
	movs r1, #0x7d
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bge _08036092
	ldr r1, _0803614C @ =gUnknown_03003454
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	adds r0, #0xa0
	ldrh r2, [r0, #0xe]
	ldrh r3, [r0, #0xa]
	ldrh r4, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	ldr r1, [r1, #0x1c]
	strh r4, [r1, #0x26]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x24]
	strh r3, [r1, #0x20]
_08036092:
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8036096
sub_8036096: @ 0x08036096
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _080360C2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080360C2:
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	rsbs r1, r1, #0
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80360EA
sub_80360EA: @ 0x080360EA
	push {r3, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x14
	beq _08036118
	cmp r3, #0x1f
	bne _08036122
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge _0803610A
	rsbs r1, r1, #0
_0803610A:
	adds r0, #0xa0
	strb r1, [r0, #8]
	movs r0, #0
	strb r0, [r2, #0xc]
_08036112:
	add sp, #4
	pop {r3}
	bx r3
_08036118:
	ldr r1, [r2, #4]
	strh r1, [r0, #0x1a]
	ldr r1, [r2, #4]
	strh r1, [r0, #0x18]
	b _08036112
_08036122:
	bl sub_801E2DA
	b _08036112
	.align 2, 0
_08036128: .4byte _0803E528
_0803612C: .4byte 0x6C6C6157
_08036130: .4byte 0x6A624F20
_08036134: .4byte 0x20746365
_08036138: .4byte 0x756F7247
_0803613C: .4byte 0x00000070
_08036140: .4byte 0xF000FFFF
_08036144: .4byte gUnknown_03003478
_08036148: .4byte gUnknown_03003EA0
_0803614C: .4byte gUnknown_03003454

	thumb_func_start sub_8036150
sub_8036150: @ 0x08036150
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080363C4 @ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, _080363C8 @ =gUnknown_03003478
	ldr r0, [r0, #0x1c]
	ldr r3, [r2]
	movs r1, #0x20
	adds r5, r3, #0
	ands r3, r1
	adds r1, r4, #0
	adds r2, r4, #0
	adds r2, #0x70
	adds r1, #0xa0
	cmp r3, #0
	beq _080361A4
	ldrh r5, [r0, #0x26]
	adds r3, r4, #0
	adds r3, #0xaa
	strh r5, [r3, #6]
	ldrh r5, [r0, #0x22]
	strh r5, [r3, #2]
	ldrh r5, [r0, #0x24]
	strh r5, [r3, #4]
	ldrh r5, [r0, #0x20]
	strh r5, [r3]
	ldrh r6, [r4, #0x26]
	ldrh r7, [r4, #0x22]
	ldrh r3, [r4, #0x24]
	ldrh r5, [r4, #0x20]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	rsbs r0, r0, #0
	strb r0, [r2, #0xd]
	b _080361BE
_080361A4:
	movs r3, #0x40
	ands r5, r3
	beq _080361BE
	ldrh r6, [r1, #0x10]
	ldrh r7, [r1, #0xc]
	ldrh r3, [r1, #0xe]
	ldrh r5, [r1, #0xa]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	strb r0, [r2, #0xd]
_080361BE:
	ldr r2, _080363C8 @ =gUnknown_03003478
	movs r5, #1
	ldr r1, [r2]
	lsls r0, r5, #8
	bics r1, r0
	str r1, [r2]
	movs r0, #0
	bl sub_803F110
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _080363C4 @ =gUnknown_03003454
	adds r3, r5, #0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80361E8
sub_80361E8: @ 0x080361E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	adds r0, r0, r2
	cmp r0, #2
	beq _0803620E
	cmp r0, #3
	beq _0803620E
	cmp r0, #5
	beq _0803620E
	cmp r0, #7
	bne _0803620E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
_0803620E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_8036222
sub_8036222: @ 0x08036222
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	adds r4, r0, #0
	ldrb r0, [r5]
	sub sp, #0x1c
	cmp r0, #0xff
	beq _08036318
	adds r0, #0xff
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _080363CC @ =gUnknown_0300345C
	strb r1, [r5]
	ldr r0, [r0]
	bne _0803631A
	ldr r1, _080363C4 @ =gUnknown_03003454
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	ldr r6, [r1, #0x1c]
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	beq _08036256
	strh r1, [r4, #0x18]
_08036256:
	cmp r1, #0
	beq _0803625C
	strh r1, [r4, #0x1a]
_0803625C:
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _0803626C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
_0803626C:
	adds r0, r4, #0
	adds r0, #0x70
	movs r3, #0xd
	ldrsb r1, [r0, r3]
	cmp r1, #0
	bge _08036288
	ldrh r3, [r5, #0x10]
	ldrh r7, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	strh r3, [r6, #0x26]
	strh r7, [r6, #0x22]
	strh r1, [r6, #0x24]
	strh r2, [r6, #0x20]
_08036288:
	movs r1, #0
	strb r1, [r0, #0xd]
	strb r1, [r5, #8]
	movs r0, #0xff
	strb r0, [r5]
	ldrh r0, [r4, #0x1e]
	ldr r1, _080363D0 @ =0x00000266
	cmp r0, r1
	beq _080362A8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
_080362A8:
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _0803635C
	ldr r0, [r4, #0x58]
	ldr r1, _080363C4 @ =gUnknown_03003454
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, [r1]
	ldrh r1, [r5, #0x16]
	ldr r0, [r0, #0x10]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _080362EE
	ldr r0, _080363D4 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_080362EE:
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #0x18]
	strh r0, [r3, #0x1a]
	ldr r6, [r4, #0x2c]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0803632E
	ldr r0, _080363D4 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	b _0803631C
_08036318:
	b _08036380
_0803631A:
	b _08036388
_0803631C:
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0803632E:
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #0x12]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #0x14]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r1, #0
	strh r1, [r5, #0x16]
_0803635C:
	ldr r2, _080363C8 @ =gUnknown_03003478
	movs r5, #1
	ldr r1, [r2]
	lsls r0, r5, #8
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	bl sub_803F110
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _080363C4 @ =gUnknown_03003454
	adds r3, r5, #0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_08036380:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08036388:
	ldrh r3, [r4, #0x1a]
	ldr r2, _080363D8 @ =0x00000261
	cmp r3, r2
	bne _080363AA
	movs r3, #5
	subs r1, r3, r1
	adds r1, r1, r2
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _08036380
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	b _08036380
_080363AA:
	ldrh r1, [r4, #0x1c]
	cmp r1, #0
	beq _080363B2
	strh r1, [r4, #0x18]
_080363B2:
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _08036380
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	b _08036380
	.align 2, 0
_080363C4: .4byte gUnknown_03003454
_080363C8: .4byte gUnknown_03003478
_080363CC: .4byte gUnknown_0300345C
_080363D0: .4byte 0x00000266
_080363D4: .4byte gUnknown_03003EA0
_080363D8: .4byte 0x00000261

	thumb_func_start sub_80363DC
sub_80363DC: @ 0x080363DC
	push {r4, r5, r6, r7}
	adds r3, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r4, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r4, #0x80
	adds r6, #0x90
	adds r1, #0xa0
	movs r7, #0x3c
	movs r5, #0
	cmp r3, #0x6c
	beq _080364C6
	bgt _08036448
	cmp r3, #0x69
	beq _08036498
	bgt _0803642A
	movs r4, #0x1e
	cmp r3, #0x42
	beq _08036466
	cmp r3, #0x67
	beq _0803647E
	cmp r3, #0x68
	bne _08036426
	ldr r3, _080365F0 @ =0x0000026F
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
_08036426:
	pop {r4, r5, r6, r7}
	bx lr
_0803642A:
	cmp r3, #0x6a
	beq _080364F6
	cmp r3, #0x6b
	bne _08036426
	strh r5, [r0, #0x1c]
	ldr r3, _080365F4 @ =0x0000028E
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b _08036426
_08036448:
	adds r7, r3, #0
	subs r7, #0x6d
	cmp r7, #5
	bhs _0803645A
	add r3, pc, #0x8 @ =_0803645C
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0803645A:
	b _08036426
_0803645C:
	.byte 0x70, 0x00
_0803645E:
	.byte 0x92, 0x00
_08036460:
	.byte 0x36, 0x00
_08036462:
	.byte 0x9E, 0x00
_08036464:
	.byte 0x4E, 0x00
_08036466:
	movs r3, #0x13
	lsls r3, r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b _08036426
_0803647E:
	ldr r3, _080365F8 @ =0x0000024B
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b _08036426
_08036498:
	ldr r3, _080365FC @ =0x00000266
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #5
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #5
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_080364C6:
	b _08036526
loc_80364c8:
	ldr r3, _08036600 @ =0x000002AF
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #2
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_080364F6:
	b _0803655E
loc_80364f8:
	ldr r3, _08036604 @ =0x000002BA
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _08036426
_08036526:
	strh r5, [r0, #0x1c]
	ldr r3, _08036608 @ =0x00000291
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b _08036426
loc_803653c:
	strh r5, [r0, #0x1c]
	ldr r3, _0803660C @ =0x0000029A
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b _08036426
_0803655E:
	strh r5, [r0, #0x1c]
	ldr r3, _08036610 @ =0x00000271
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b _08036426
loc_8036580:
	strh r5, [r0, #0x1c]
	ldr r3, _08036614 @ =0x00000233
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b _08036426
loc_8036598:
	strh r5, [r0, #0x1c]
	ldr r3, _08036618 @ =0x000002B6
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b _08036426

	thumb_func_start sub_80365B0
sub_80365B0: @ 0x080365B0
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080365E4
	ldr r0, _0803661C @ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _080365D8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080365D8:
	ldrh r0, [r4, #0x1a]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	beq _080365E4
	strh r0, [r4, #0x18]
_080365E4:
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_080365F0: .4byte 0x0000026F
_080365F4: .4byte 0x0000028E
_080365F8: .4byte 0x0000024B
_080365FC: .4byte 0x00000266
_08036600: .4byte 0x000002AF
_08036604: .4byte 0x000002BA
_08036608: .4byte 0x00000291
_0803660C: .4byte 0x0000029A
_08036610: .4byte 0x00000271
_08036614: .4byte 0x00000233
_08036618: .4byte 0x000002B6
_0803661C: .4byte gUnknown_03003EA0

	thumb_func_start sub_8036620
sub_8036620: @ 0x08036620
	push {r4, lr}
	adds r4, r0, #0
	bne _08036638
	movs r0, #0xe4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08036638
	adds r0, r4, #0
_08036632:
	pop {r4}
	pop {r3}
	bx r3
_08036638:
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _080368CC @ =_0803E7B0
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x288 @ =_080368D0
	str r0, [r4, #0x4c]
	movs r0, #0xc
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _080368E4 @ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _08036632

	thumb_func_start sub_803666C
sub_803666C: @ 0x0803666C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080368CC @ =_0803E7B0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _08036688
	adds r0, r4, #0
	bl sub_803DA18
_08036688:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803668E
sub_803668E: @ 0x0803668E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	adds r6, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r7, #0xe0
	adds r6, #0x70
	cmp r0, #0x3e
	sub sp, #0x1c
	beq _080366EC
	cmp r0, #0x3f
	beq _0803675C
	cmp r0, #0x40
	bne _080366E4
	movs r0, #0x93
	lsls r0, r0, #2
	strh r0, [r7]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	ldr r2, _080368E8 @ =0xFFFF007F
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ands r0, r2
	movs r2, #5
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x30]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xc]
_080366E4:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080366EC:
	movs r2, #2
	movs r1, #7
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	ldr r0, _080368EC @ =0x000002CF
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	movs r3, #0x32
	str r0, [sp]
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0x2d
	lsls r0, r0, #4
	strh r0, [r7]
	subs r0, #2
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x1a
	adds r0, r0, r1
	movs r1, #0
	movs r2, #1
	lsls r2, r2, #0x14
	str r1, [r5, #0x70]
	str r2, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8 @ =0xFFFF007F
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b _080366E4
_0803675C:
	movs r2, #2
	movs r1, #7
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x32
	movs r1, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0xfc
	str r0, [sp]
	movs r2, #2
	movs r1, #0
	movs r3, #0x28
	adds r0, r5, #0
	bl sub_802913E
	movs r0, #0xfd
	strh r0, [r7]
	movs r0, #0xfb
	strh r0, [r7, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x91
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	str r1, [r5, #0x70]
	str r1, [r4, #0x24]
	ldr r2, [r4, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	str r2, [r4, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080368E8 @ =0xFFFF007F
	adds r0, #0x32
	ands r0, r2
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x30]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	strb r1, [r6, #0xc]
	b _080366E4

	thumb_func_start nullsub_56
nullsub_56: @ 0x080367C0
	bx lr

	non_word_aligned_thumb_func_start sub_80367C2
sub_80367C2: @ 0x080367C2
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r4, [r5, #0x2c]
	movs r2, #1
	ldrh r1, [r4, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r6, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803687C
	ldr r1, [r4, #0x3c]
	lsls r7, r6, #2
	cmp r1, #0
	ldr r2, _080368F0 @ =gUnknown_03003EA0
	blt _08036816
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _08036816
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _08036816
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0803682C
_08036816:
	lsls r0, r0, #0x16
	bmi _0803687C
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r7
	orrs r0, r6
	str r0, [r4]
	b _0803687C
_0803682C:
	lsls r0, r0, #0x16
	bpl _08036846
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r7
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_08036846:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_0803687C:
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	bl sub_8005106
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _080368A6
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080368A6:
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080368CC: .4byte _0803E7B0
_080368D0: .4byte 0x74617453
_080368D4: .4byte 0x53206369
_080368D8: .4byte 0x70697263
_080368DC: .4byte 0x72472074
_080368E0: .4byte 0x0070756F
_080368E4: .4byte 0xF000FFFF
_080368E8: .4byte 0xFFFF007F
_080368EC: .4byte 0x000002CF
_080368F0: .4byte gUnknown_03003EA0

	thumb_func_start sub_80368F4
sub_80368F4: @ 0x080368F4
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _08036914
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08036914:
	lsls r0, r1, #0x10
	movs r1, #0xe2
	ldrh r1, [r1, r4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08036936
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036936
	bl sub_8000914
_08036936:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803693C
sub_803693C: @ 0x0803693C
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	movs r7, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r7, r7
	adds r1, r7, #0
	cmp r2, #0
	sub sp, #0xc
	beq _08036960
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08036960:
	adds r5, r4, #0
	adds r5, #0xe0
	lsls r0, r1, #0x10
	ldrh r1, [r5]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08036A0E
	ldr r0, _08036B6C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #0x23
	bls _080369AA
	movs r0, #0x1e
	movs r1, #0x7d
	strb r0, [r1, r4]
	ldrh r1, [r5]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080369AA
	bl sub_8000914
_080369AA:
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	ldr r6, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080369C6
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080369C6:
	lsls r0, r1, #0x10
	ldrh r1, [r5, #2]
	adds r6, r4, #0
	adds r6, #0x80
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _08036A16
	ldr r5, _08036B70 @ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _08036A0E
	ldr r0, [r5]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _08036A0E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl sub_803B8CA
_08036A0E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08036A16:
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08036A32
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08036A32:
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x2c]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x16
	cmp r0, r1
	bne _08036A0E
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036A0E
	ldrh r1, [r5, #2]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b _08036A0E

	thumb_func_start sub_8036A64
sub_8036A64: @ 0x08036A64
	movs r0, #0
	bx lr

	thumb_func_start sub_8036A68
sub_8036A68: @ 0x08036A68
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08036B6C @ =gUnknown_03003458
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r7, r4, #0
	adds r7, #0x80
	ldr r2, [r7, #0x2c]
	adds r6, r0, #0
	lsls r1, r2, #5
	lsrs r1, r1, #0x17
	cmp r1, #0x3e
	beq _08036B56
	cmp r1, #0x3f
	bne _08036AB8
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
_08036AB8:
	cmp r6, r0
	bhs _08036B4E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r1, r0, #0x16
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, _08036B68 @ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0x60 @ =_08036B74
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036B38
	bl sub_8000914
_08036B38:
	ldr r0, _08036B6C @ =gUnknown_03003458
	movs r3, #2
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D2
_08036B4E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08036B56:
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
	b _08036AB8
	.align 2, 0
_08036B68: .4byte gUnknown_03003EA0
_08036B6C: .4byte gUnknown_03003458
_08036B70: .4byte gUnknown_0300345C
_08036B74: .4byte 0x0010BE20
_08036B78: .4byte 0x00000000

	thumb_func_start sub_8036B7C
sub_8036B7C: @ 0x08036B7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC @ =gUnknown_0300345C
	adds r5, r1, #0
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	adds r6, r2, #0
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08036BA8
	movs r0, #0
_08036BA2:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08036BA8:
	movs r3, #0x97
	ldrsb r0, [r5, r3]
	adds r0, r0, r6
	subs r0, #2
	cmp r0, #6
	bhs _08036BE6
	add r3, pc, #0x4 @ =_08036BBC
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08036BBC:
	.byte 0x02
_08036BBD:
	.byte 0x02
_08036BBE:
	.byte 0x0D
_08036BBF:
	.byte 0x06
_08036BC0:
	.byte 0x0D
_08036BC1:
	.byte 0x06
loc_8036bc2:
	adds r0, r4, #0
	bl sub_801F286
	b _08036BEC
loc_8036bca:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08036BEC
loc_8036bd8:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08036BEC
_08036BE6:
	adds r0, r4, #0
	bl sub_801F286
_08036BEC:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08036BA2

	thumb_func_start sub_8036BFC
sub_8036BFC: @ 0x08036BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC @ =gUnknown_0300345C
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8036C24
sub_8036C24: @ 0x08036C24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_801E124
	movs r0, #0xa4
	ldr r0, [r0, r4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x5c]
	rsbs r0, r0, #0
	adds r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r3, [r4, #0x58]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08036C8E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08036C8E:
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8036CB4
sub_8036CB4: @ 0x08036CB4
	ldr r1, _08036CE0 @ =gUnknown_03003E98
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl _08036CD4
	ldr r1, _08036CDC @ =gUnknown_0300345C
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08036CD4:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08036CDC: .4byte gUnknown_0300345C
_08036CE0: .4byte gUnknown_03003E98

	thumb_func_start sub_8036CE4
sub_8036CE4: @ 0x08036CE4
	push {r4, lr}
	adds r4, r0, #0
	bne _08036CFC
	movs r0, #0xe0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08036CFC
	adds r0, r4, #0
_08036CF6:
	pop {r4}
	pop {r3}
	bx r3
_08036CFC:
	adds r0, r4, #0
	bl sub_8029070
	ldr r0, _080370E0 @ =_0803E8EC
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3D8 @ =_080370E4
	str r0, [r4, #0x4c]
	movs r0, #0xd
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _080370F8 @ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _08036CF6

	thumb_func_start sub_8036D30
sub_8036D30: @ 0x08036D30
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080370E0 @ =_0803E8EC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802911C
	cmp r5, #0
	beq _08036D4C
	adds r0, r4, #0
	bl sub_803DA18
_08036D4C:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8036D52
sub_8036D52: @ 0x08036D52
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x41
	bne _08036DFA
	movs r2, #3
	movs r1, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x6a
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	movs r1, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x64
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x46
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x63
	movs r1, #0xa8
	strh r0, [r1, r4]
	movs r1, #0xff
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x8b
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r1, #0
	movs r2, #5
	lsls r2, r2, #0x12
	str r1, [r4, #0x70]
	str r2, [r5, #0x24]
	ldr r2, [r5, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #5
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r2, _080370FC @ =0xFFFF007F
	adds r0, #0x32
	ands r0, r2
	movs r2, #9
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #0x1e
	adds r4, #0x70
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xc]
_08036DFA:
	add sp, #0x1c
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_57
nullsub_57: @ 0x08036E02
	bx lr

	thumb_func_start sub_8036E04
sub_8036E04: @ 0x08036E04
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r1, #0
	bl sub_803F2CC
	movs r0, #1
	movs r1, #0x9c
	str r0, [r1, r4]
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _08036E3A
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_08036E3A:
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8036E5E
sub_8036E5E: @ 0x08036E5E
	movs r1, #0x21
	adds r0, #0x80
	str r1, [r0, #0x1c]
	bx lr

	non_word_aligned_thumb_func_start sub_8036E66
sub_8036E66: @ 0x08036E66
	adds r1, r0, #0
	ldr r0, _08037100 @ =gUnknown_03003458
	push {r4, r5}
	ldr r0, [r0]
	ldr r5, [r1, #0x58]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r2, [r0, #4]
	ldr r4, [r0]
	ldr r3, [r1, #0x5c]
	subs r0, r4, r5
	subs r1, r2, r3
	cmp r4, r5
	bge _08036EB8
	cmp r2, r3
	bge _08036EA0
	cmp r0, #0
	bge _08036E8C
	rsbs r0, r0, #0
_08036E8C:
	cmp r1, #0
	bge _08036E92
	rsbs r1, r1, #0
_08036E92:
	cmp r0, r1
	ble _08036E9C
	movs r0, #2
_08036E98:
	pop {r4, r5}
	bx lr
_08036E9C:
	movs r0, #3
	b _08036E98
_08036EA0:
	cmp r0, #0
	bge _08036EA6
	rsbs r0, r0, #0
_08036EA6:
	cmp r1, #0
	bge _08036EAC
	rsbs r1, r1, #0
_08036EAC:
	cmp r0, r1
	ble _08036EB4
	movs r0, #2
	b _08036E98
_08036EB4:
	movs r0, #1
	b _08036E98
_08036EB8:
	cmp r2, r3
	bge _08036ED4
	cmp r0, #0
	bge _08036EC2
	rsbs r0, r0, #0
_08036EC2:
	cmp r1, #0
	bge _08036EC8
	rsbs r1, r1, #0
_08036EC8:
	cmp r0, r1
	ble _08036ED0
	movs r0, #0
	b _08036E98
_08036ED0:
	movs r0, #3
	b _08036E98
_08036ED4:
	cmp r0, #0
	bge _08036EDA
	rsbs r0, r0, #0
_08036EDA:
	cmp r1, #0
	bge _08036EE0
	rsbs r1, r1, #0
_08036EE0:
	cmp r0, r1
	ble _08036EE8
	movs r0, #0
	b _08036E98
_08036EE8:
	movs r0, #1
	b _08036E98

	thumb_func_start sub_8036EEC
sub_8036EEC: @ 0x08036EEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	adds r7, r4, #0
	adds r6, r4, #0
	adds r6, #0x58
	adds r7, #0xc0
	cmp r0, #0xf
	sub sp, #0xc
	beq _08036FD0
	bgt _08036F60
	cmp r0, #1
	beq _08036FD2
	cmp r0, #8
	beq _08036FDA
	cmp r0, #9
	bne _08036FC8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq _08036F44
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036F44
	bl sub_8000914
_08036F44:
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	ldr r2, [r4, #0x7c]
	lsls r2, r2, #4
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x1c
	cmp r2, #2
	bne _08037038
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _08037038
	movs r3, #1
	b _080371EA
_08036F60:
	cmp r0, #0x10
	beq _0803703A
	cmp r0, #0x20
	beq _08036FDC
	cmp r0, #0x21
	bne _08036FC8
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x68
	beq _08036F98
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x68
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036F98
	bl sub_8000914
_08036F98:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08036FC8
	ldr r0, _08037100 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _08036FD4
	movs r0, #1
	str r0, [r5, #0x1c]
_08036FC8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08036FD0:
	b _08037370
_08036FD2:
	b _0803703C
_08036FD4:
	movs r1, #8
	str r1, [r5, #0x1c]
	b _08036FC8
_08036FDA:
	b _0803713E
_08036FDC:
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x69
	beq _08037010
	movs r0, #0x1e
	movs r1, #0x7d
	strb r0, [r1, r4]
	movs r1, #0xff
	movs r2, #0
	adds r1, #0x69
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08036FC8
	bl sub_8000914
	b _08036FC8
_08037010:
	ldr r0, _08037100 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _08036FC8
	movs r0, #0x21
	str r0, [r5, #0x1c]
	b _08036FC8
_08037038:
	b _080371E8
_0803703A:
	b _08037422
_0803703C:
	ldr r0, _08037100 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r7]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _08037136
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x67
	beq _0803708A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x67
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803708A
	bl sub_8000914
_0803708A:
	ldr r0, _08037104 @ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xff
	bics r0, r1
	bne _08036FC8
	ldr r0, [r5, #0x2c]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	adds r0, #1
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	bne _08036FC8
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	b _08037108
	.align 2, 0
_080370E0: .4byte _0803E8EC
_080370E4: .4byte 0x74617453
_080370E8: .4byte 0x53206369
_080370EC: .4byte 0x70697263
_080370F0: .4byte 0x72472074
_080370F4: .4byte 0x0070756F
_080370F8: .4byte 0xF000FFFF
_080370FC: .4byte 0xFFFF007F
_08037100: .4byte gUnknown_03003458
_08037104: .4byte gUnknown_03003E98
_08037108:
	adds r0, r4, #0
	bl sub_8036E66
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0x2c]
	movs r1, #1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	lsrs r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0x14]
	movs r0, #9
	str r0, [r5, #0x1c]
_08037134:
	b _08036FC8
_08037136:
	b _08037138
_08037138:
	movs r0, #0x20
	str r0, [r5, #0x1c]
	b _08036FC8
_0803713E:
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x6d
	beq _08037164
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x6d
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037164
	bl sub_8000914
_08037164:
	ldr r0, _080374F4 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	cmp r0, #0x23
	bls _08037186
	movs r0, #0x20
	str r0, [r5, #0x1c]
_08037184:
	b _08036FC8
_08037186:
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bls _08037134
	ldr r0, [r5, #0x2c]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	str r0, [r5, #0x2c]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8036E66
	movs r2, #0xf
	lsls r2, r2, #0x18
	ldr r1, [r4, #0x7c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	movs r0, #9
	str r0, [r5, #0x1c]
_080371E6:
	b _08036FC8
_080371E8:
	movs r3, #0
_080371EA:
	cmp r1, r3
	beq _08037202
	cmp r2, #2
	bne _080371FC
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _080371FC
	movs r1, #1
	b _080371FE
_080371FC:
	movs r1, #0
_080371FE:
	bl sub_803F2CC
_08037202:
	ldr r7, [r4, #0x2c]
	ldr r0, [r7]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	beq _080372F0
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0x1d
	bne _08037278
	ldr r0, _080374F8 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r7, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r7, #0x48]
	subs r0, r1, r0
	ldr r1, [r5, #0x2c]
	asrs r0, r0, #2
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1b
	cmp r0, r1
	blo _08037184
	ldr r7, _080374F4 @ =gUnknown_03003458
	ldr r0, [r7]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_80187A0
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bls _08037184
	ldr r0, [r7]
	movs r3, #2
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D2
	b _08036FC8
_08037278:
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080371E6
	ldr r0, _080374F8 @ =gUnknown_03003EA0
	adds r6, r7, #0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r6, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo _080371E6
	lsls r1, r0, #0xf
	bpl _080371E6
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803735E
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x41
	bne _0803735E
	ldr r0, _080374FC @ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq _080372F2
	adds r0, r6, #0
	bl sub_802C884
	b _080372F2
_080372F0:
	b _0803736A
_080372F2:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #0
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	mvns r3, r3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _080374F4 @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0803735E
	bics r1, r0
	str r1, [r4, #0x7c]
_0803735E:
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_08037368:
	b _08036FC8
_0803736A:
	movs r0, #1
	str r0, [r5, #0x1c]
	b _08036FC8
_08037370:
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	subs r0, #0xff
	subs r0, #0x63
	beq _0803739C
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x63
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803739C
	bl sub_8000914
_0803739C:
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	ldr r2, [r4, #0x7c]
	lsls r2, r2, #4
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x1c
	cmp r2, #2
	bne _080373B8
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _080373B8
	movs r3, #1
	b _080373BA
_080373B8:
	movs r3, #0
_080373BA:
	cmp r1, r3
	beq _080373D2
	cmp r2, #2
	bne _080373CC
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _080373CC
	movs r1, #1
	b _080373CE
_080373CC:
	movs r1, #0
_080373CE:
	bl sub_803F2CC
_080373D2:
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08037368
	movs r0, #0x10
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	movs r1, #0
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r4, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	ldr r0, _08037500 @ =gUnknown_03003EB8
	ldr r1, [r4]
	beq _08037408
	lsls r1, r1, #0x1c
	bmi _08037414
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_80012F0
	b _08037414
_08037408:
	lsls r1, r1, #0x1c
	bpl _08037414
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_8001338
_08037414:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
	b _08036FC8
_08037422:
	ldr r0, _080374F8 @ =gUnknown_03003EA0
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08037504 @ =0x00000F42
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08037368
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq _08037368
	ldr r0, _08037508 @ =gUnknown_03003454
	movs r6, #4
	ldr r7, [r0]
	add r0, pc, #0xB8 @ =_0803750C
	str r0, [sp, #4]
	b _08037462
_08037458:
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs _0803746C
_08037462:
	lsls r0, r6, #2
	adds r0, r0, r7
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08037458
_0803746C:
	ldr r0, _08037528 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	lsls r1, r6, #2
	adds r1, r1, r7
	str r1, [sp, #8]
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	movs r1, #0xfd
	lsls r0, r6, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r7
	lsls r1, r1, #5
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	add r1, sp, #4
	ldm r1, {r0, r1}
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r2
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0xff
	adds r0, #0x91
	adds r0, r7, r0
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08037508 @ =gUnknown_03003454
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _0803752C @ =0xFFFF000F
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b _08036FC8
	.align 2, 0
_080374F4: .4byte gUnknown_03003458
_080374F8: .4byte gUnknown_03003EA0
_080374FC: .4byte gUnknown_0300346C
_08037500: .4byte gUnknown_03003EB8
_08037504: .4byte 0x00000F42
_08037508: .4byte gUnknown_03003454
_0803750C: .4byte 0x6D656E45
_08037510: .4byte 0x65442079
_08037514: .4byte 0x20687461
_08037518: .4byte 0x69726353
_0803751C: .4byte 0x47207470
_08037520: .4byte 0x70756F72
_08037524: .4byte 0x00000000
_08037528: .4byte gUnknown_03003468
_0803752C: .4byte 0xFFFF000F

	thumb_func_start sub_8037530
sub_8037530: @ 0x08037530
	movs r0, #0
	bx lr

	thumb_func_start sub_8037534
sub_8037534: @ 0x08037534
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r0, r3, #0
	ldr r3, [r5, #0x1c]
	cmp r3, #0xf
	beq _0803754C
	cmp r3, #0x10
	beq _0803754C
	cmp r3, #0x20
	bne _08037554
_0803754C:
	movs r0, #0
_0803754E:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08037554:
	ldr r3, [r5, #0xc]
	movs r6, #0
	lsls r3, r3, #1
	lsrs r3, r3, #0x14
	cmp r3, #0
	beq _08037574
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #0
	b _0803754E
_08037574:
	movs r3, #0x97
	ldrsb r1, [r1, r3]
	adds r1, r1, r2
	subs r1, #2
	cmp r1, #6
	bhs _080375FA
	add r3, pc, #0x4 @ =_08037588
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08037588:
	.byte 0x02
_08037589:
	.byte 0x02
_0803758A:
	.byte 0x34
_0803758B:
	.byte 0x06
_0803758C:
	.byte 0x12
_0803758D:
	.byte 0x06
loc_803758e:
	adds r0, r4, #0
	bl sub_801F286
	b _08037600
loc_8037596:
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r0, r2, r0
	strb r0, [r1, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08037600
loc_80375ae:
	ldr r0, _08037720 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _080375EA
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _080375EA
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r2, [r0, #6]
	subs r1, r2, r1
	strb r1, [r0, #6]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08037600
_080375EA:
	adds r0, r4, #0
	bl sub_801F286
	b _08037600
loc_80375f2:
	adds r0, r4, #0
	bl sub_801F286
	b _08037600
_080375FA:
	adds r0, r4, #0
	bl sub_801F286
_08037600:
	movs r0, #0xb6
	ldrsb r0, [r0, r4]
	cmp r0, #0
	bgt _08037634
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08037724 @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_802B0CA
_08037634:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	str r6, [r4, #0x34]
	movs r0, #1
	b _0803754E

	non_word_aligned_thumb_func_start sub_8037642
sub_8037642: @ 0x08037642
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08037724 @ =gUnknown_0300345C
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803766A
sub_803766A: @ 0x0803766A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_801E124
	movs r0, #0xa4
	ldr r0, [r0, r4]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x58]
	subs r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _080376D2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080376D2:
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80376F8
sub_80376F8: @ 0x080376F8
	ldr r1, _08037728 @ =gUnknown_03003E98
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl _08037718
	ldr r1, _08037724 @ =gUnknown_0300345C
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
_08037718:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08037720: .4byte gUnknown_03003458
_08037724: .4byte gUnknown_0300345C
_08037728: .4byte gUnknown_03003E98

	thumb_func_start sub_803772C
sub_803772C: @ 0x0803772C
	push {r4, lr}
	adds r4, r0, #0
	bne _08037744
	movs r0, #0x44
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08037744
	adds r0, r4, #0
_0803773E:
	pop {r4}
	pop {r3}
	bx r3
_08037744:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08037A00 @ =_0803EB10
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	b _0803773E

	non_word_aligned_thumb_func_start sub_8037756
sub_8037756: @ 0x08037756
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08037A00 @ =_0803EB10
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037776
	ldr r0, _08037A04 @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08037776:
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08037788
	adds r0, r4, #0
	bl sub_803DA18
_08037788:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803778E
sub_803778E: @ 0x0803778E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r6, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r5, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r5, r5, #0xb
	orrs r5, r7
	str r5, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	adds r5, r4, #0
	str r3, [r4, #0x20]
	adds r5, #0x1c
	adds r3, r6, #1
	str r7, [r4, #0x1c]
	bne _080377D4
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _080377E2
_080377D4:
	ldr r1, [r4, #0x34]
	lsls r3, r6, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_080377E2:
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r1, r2
	lsls r2, r1, #6
	lsrs r3, r2, #0x1c
	ldr r6, _08037A08 @ =gUnknown_030033BE
	lsls r3, r3, #1
	str r1, [r4, #0x34]
	ldrh r3, [r6, r3]
	lsrs r2, r2, #0x1c
	str r3, [r4, #0x38]
	bne _080378A0
	movs r3, #1
	lsls r3, r3, #0x11
	lsls r6, r1, #0x18
	movs r7, #7
	lsls r7, r7, #0x12
	lsrs r6, r6, #0x18
	lsrs r2, r3, #6
	cmp r6, #0
	beq _0803787A
	cmp r6, #1
	beq _0803783E
	cmp r6, #2
	beq _0803785A
	cmp r6, #3
	bne _0803789A
	movs r6, #5
	ldr r3, [r4, #0x20]
	lsls r6, r6, #0x10
	subs r3, r3, r6
	str r3, [r4, #0x20]
	ldr r3, _08037A0C @ =0xFFFE0000
	str r3, [r4, #0x28]
	adds r3, r1, #0
	adds r1, r1, r2
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b _0803789A
_0803783E:
	ldr r6, [r4, #0x20]
	str r3, [r4, #0x28]
	adds r3, r1, #0
	movs r7, #0x11
	lsls r7, r7, #0x10
	subs r1, r1, r2
	ands r1, r0
	adds r6, r6, r7
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x20]
	str r0, [r4, #0x34]
	b _0803789A
_0803785A:
	ldr r6, [r4, #0x1c]
	subs r6, r6, r7
	str r6, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	adds r3, r6, r3
	str r3, [r4, #0x20]
	ldr r3, _08037A0C @ =0xFFFE0000
	str r3, [r4, #0x24]
	adds r3, r1, #0
	subs r1, r1, r2
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b _0803789A
_0803787A:
	ldr r6, [r4, #0x1c]
	adds r6, r6, r7
	str r6, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	str r3, [r4, #0x24]
	adds r3, r1, #0
	movs r7, #1
	lsls r7, r7, #0x10
	subs r1, r1, r2
	ands r1, r0
	adds r6, r6, r7
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x20]
	str r0, [r4, #0x34]
_0803789A:
	movs r0, #1
	movs r1, #0x40
	strb r0, [r1, r4]
_080378A0:
	ldr r0, _08037A04 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7, r0
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r2, #4
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi _0803791E
	ldr r0, _08037A04 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80012F0
_0803791E:
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _08037952
	orrs r1, r6
	str r1, [r0]
_08037952:
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _08037A04 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x3c]
	adds r1, r5, #0
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0, r7
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7, r0
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080379E8
	orrs r1, r6
	str r1, [r0]
_080379E8:
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08037A00: .4byte _0803EB10
_08037A04: .4byte gUnknown_03003EB8
_08037A08: .4byte gUnknown_030033BE
_08037A0C: .4byte 0xFFFE0000

	thumb_func_start sub_8037A10
sub_8037A10: @ 0x08037A10
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08037A24
	movs r1, #0
	bl sub_80401E4
	b _08037A2A
_08037A24:
	movs r1, #1
	bl sub_80401E4
_08037A2A:
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq _08037AC2
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq _08037B28
	cmp r0, #2
	bne _08037ABC
	ldr r0, _08037CB8 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08037A62
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08037A62:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _08037B56
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037A84
	bl sub_8000914
_08037A84:
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037A9E
	bl sub_8000914
_08037A9E:
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _08037AB2
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_08037AB2:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
_08037ABC:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08037AC2:
	ldr r0, [r4, #4]
	ldr r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	bne _08037ABC
	lsls r2, r1, #6
	lsrs r2, r2, #0x1c
	bne _08037B0E
	lsls r2, r1, #0x18
	movs r1, #0xf
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x18
	cmp r2, #0
	beq _08037B02
	cmp r2, #1
	beq _08037AF2
	cmp r2, #2
	beq _08037AFA
	cmp r2, #3
	bne _08037B08
	ldr r2, [r4, #0x20]
	subs r1, r2, r1
	str r1, [r4, #0x20]
	b _08037B08
_08037AF2:
	ldr r2, [r4, #0x20]
	adds r1, r2, r1
	str r1, [r4, #0x20]
	b _08037B08
_08037AFA:
	ldr r2, [r4, #0x1c]
	subs r1, r2, r1
	str r1, [r4, #0x1c]
	b _08037B08
_08037B02:
	ldr r2, [r4, #0x1c]
	adds r1, r2, r1
	str r1, [r4, #0x1c]
_08037B08:
	movs r1, #1
	movs r2, #0x40
	strb r1, [r2, r4]
_08037B0E:
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #4]
	bl sub_8000914
	b _08037B2A
_08037B28:
	b _08037B60
_08037B2A:
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037B4C
	bl sub_8000914
_08037B4C:
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	b _08037B58
_08037B56:
	b _08037BBE
_08037B58:
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_08037B5E:
	b _08037ABC
_08037B60:
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _08037BAE
	cmp r0, #0
	beq _08037B98
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_08037B98:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037ABC
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _08037ABC
_08037BAE:
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b _08037ABC
_08037BBE:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037B5E
	cmp r0, #0
	beq _08037BD8
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_08037BD8:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037B5E
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _08037ABC

	non_word_aligned_thumb_func_start sub_8037BEE
sub_8037BEE: @ 0x08037BEE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037CB0
	ldr r6, _08037CB8 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08037C18
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08037C18:
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r1, r0
	str r1, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r0, #3]
	lsls r3, r3, #0x12
	bics r1, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r1, r3
	lsls r2, r2, #0x1c
	orrs r2, r1
	str r2, [r4, #0x30]
	ldr r1, [r0]
	lsrs r3, r3, #4
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsls r2, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r1, r2
	orrs r0, r1
	lsls r1, r2, #4
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08037CB0
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08037CBC @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08037CB0:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	.align 2, 0
_08037CB8: .4byte gUnknown_03003EA0
_08037CBC: .4byte gUnknown_03003EB8

	thumb_func_start sub_8037CC0
sub_8037CC0: @ 0x08037CC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037CDE
	ldr r0, _08037E3C @ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08037CDE:
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8037CE4
sub_8037CE4: @ 0x08037CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _08037D38
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_08037D38:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _08037E22
	ldr r0, _08037E3C @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _08037E40 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08037E44 @ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _08037D9E
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _08037DA4
_08037D9E:
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_08037DA4:
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08037DD6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08037DD6:
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _08037E1A
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_08037E1A:
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _08037E22
	b _08037E24
_08037E22:
	b _08037E2C
_08037E24:
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_08037E2C:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8037E34
sub_8037E34: @ 0x08037E34
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08037E3C: .4byte gUnknown_03003EB8
_08037E40: .4byte gUnknown_03003EA0
_08037E44: .4byte 0x0010BE20

	thumb_func_start sub_8037E48
sub_8037E48: @ 0x08037E48
	push {r4, lr}
	adds r4, r0, #0
	bne _08037E60
	movs r0, #0x48
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08037E60
	adds r0, r4, #0
_08037E5A:
	pop {r4}
	pop {r3}
	bx r3
_08037E60:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0803818C @ =_0803E350
	movs r1, #0x45
	str r0, [r4]
	movs r0, #0
	strb r0, [r1, r4]
	adds r0, r4, #0
	b _08037E5A

	thumb_func_start sub_8037E74
sub_8037E74: @ 0x08037E74
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803818C @ =_0803E350
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _08037E9A
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_08037E9A:
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08037EAC
	adds r0, r4, #0
	bl sub_803DA18
_08037EAC:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8037EB2
sub_8037EB2: @ 0x08037EB2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r1, #0
	ldr r1, [r1, #0x2c]
	adds r5, r3, #0
	str r1, [r4, #0x14]
	ldr r0, [r0, #0x30]
	str r0, [r4, #0x18]
	ldrb r3, [r1, #5]
	movs r0, #0xff
	ldr r6, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r6, r0
	lsls r3, r3, #0xb
	orrs r3, r6
	str r3, [r4, #0x34]
	adds r1, #0x2c
	ldr r6, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r6, [r4, #0x1c]
	movs r6, #1
	str r6, [r4, #0x24]
	cmn r5, r6
	bne _08037EFC
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0x34]
	ldr r1, [r1, #0x7c]
	lsrs r3, r3, #8
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _08037F0A
_08037EFC:
	ldr r1, [r4, #0x34]
	lsls r3, r5, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_08037F0A:
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r1, r2
	lsls r2, r1, #6
	lsrs r3, r2, #0x1c
	movs r6, #1
	lsls r6, r6, #0x10
	adds r2, r4, #0
	adds r2, #0x40
	lsrs r5, r6, #5
	movs r7, #0
	cmp r3, #0
	str r1, [r4, #0x34]
	beq _08037F50
	cmp r3, #1
	beq _08037FAA
	cmp r3, #2
	bne _08038004
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq _08038006
	cmp r3, #1
	beq _08038008
	cmp r3, #2
	beq _0803802A
	cmp r3, #3
	bne _0803802C
	ldr r3, _08038190 @ =0xFFD50000
	str r3, [r4, #0x40]
	str r6, [r4, #0x3c]
	b _0803802C
_08037F50:
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq _08037F82
	cmp r3, #1
	beq _08037F6C
	cmp r3, #2
	beq _08037F76
	cmp r3, #3
	bne _08037F8E
	ldr r3, _08038194 @ =0xFFFF0000
	str r3, [r4, #0x3c]
	ldr r3, _08038198 @ =0xFFE10000
	str r3, [r4, #0x40]
	b _08037F8E
_08037F6C:
	movs r3, #0x33
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	str r6, [r4, #0x3c]
	b _08037F8E
_08037F76:
	ldr r3, _0803819C @ =0xFFD80000
	str r3, [r4, #0x3c]
	movs r3, #0xb
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	b _08037F8E
_08037F82:
	movs r3, #5
	lsls r3, r3, #0x13
	str r3, [r4, #0x3c]
	movs r3, #9
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
_08037F8E:
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	movs r0, #0xff
	adds r0, #0xdf
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	movs r0, #3
	strb r0, [r2, #5]
	b _08038004
_08037FAA:
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq _0803800A
	cmp r3, #1
	beq _08037FD2
	cmp r3, #2
	beq _08037FEA
	cmp r3, #3
	bne _08038020
	ldr r3, _080381A0 @ =0xFFDC0000
	str r3, [r4, #0x40]
	adds r3, r1, #0
	adds r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r7, [r4, #0x3c]
	str r0, [r4, #0x34]
	b _08038020
_08037FD2:
	movs r3, #0x15
	lsls r3, r3, #0x11
	str r3, [r4, #0x40]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x3c]
	str r0, [r4, #0x34]
	b _08038020
_08037FEA:
	ldr r3, _080381A4 @ =0xFFD40000
	str r3, [r4, #0x3c]
	movs r3, #3
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b _08038020
_08038004:
	b _0803806E
_08038006:
	b _0803804C
_08038008:
	b _08038034
_0803800A:
	movs r3, #0x2d
	lsls r3, r3, #0x10
	str r3, [r4, #0x3c]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x40]
	str r0, [r4, #0x34]
_08038020:
	movs r0, #0xff
	adds r0, #0xdf
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	b _0803802E
_0803802A:
	b _08038042
_0803802C:
	b _08038056
_0803802E:
	movs r0, #3
	strb r0, [r2, #5]
	b _0803806E
_08038034:
	movs r3, #1
	lsls r3, r3, #0x11
	str r3, [r4, #0x3c]
	movs r3, #5
	lsls r3, r3, #0x13
	str r3, [r4, #0x40]
	b _08038056
_08038042:
	ldr r3, _08038190 @ =0xFFD50000
	str r3, [r4, #0x3c]
	ldr r3, _080381A8 @ =0xFFFE0000
	str r3, [r4, #0x40]
	b _08038056
_0803804C:
	movs r3, #0x2b
	lsls r3, r3, #0x10
	str r3, [r4, #0x3c]
	ldr r3, _080381AC @ =0xFFFD0000
	str r3, [r4, #0x40]
_08038056:
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	ldr r0, _080381B0 @ =0x000002E6
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	movs r0, #3
	strb r0, [r2, #5]
_0803806E:
	ldr r0, [r4, #0x14]
	ldr r7, _080381B4 @ =gUnknown_03003EB8
	ldr r2, [r0]
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r5
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r6, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _080380D6
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_080380D6:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08038136
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08038136:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _08038176
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _08038164
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08038164
	ldr r0, _080381B8 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_08038164:
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _08038176
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r4]
_08038176:
	ldr r0, _080381BC @ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x49
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803818C: .4byte _0803E350
_08038190: .4byte 0xFFD50000
_08038194: .4byte 0xFFFF0000
_08038198: .4byte 0xFFE10000
_0803819C: .4byte 0xFFD80000
_080381A0: .4byte 0xFFDC0000
_080381A4: .4byte 0xFFD40000
_080381A8: .4byte 0xFFFE0000
_080381AC: .4byte 0xFFFD0000
_080381B0: .4byte 0x000002E6
_080381B4: .4byte gUnknown_03003EB8
_080381B8: .4byte gUnknown_03003EA0
_080381BC: .4byte gUnknown_0300345C

	thumb_func_start sub_80381C0
sub_80381C0: @ 0x080381C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r6, r4, #0
	movs r7, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	lsls r7, r7, #8
	adds r6, #0x1c
	cmp r0, #0
	sub sp, #0x1c
	beq _08038282
	adds r5, r4, #0
	adds r5, #0x40
	cmp r0, #1
	beq _080382C4
	cmp r0, #2
	beq _080382C6
	cmp r0, #4
	bne _0803827A
	ldr r2, _08038454 @ =gUnknown_03003458
	ldr r0, [r2]
	ldr r1, [r0, #0x20]
	adds r1, #0xa0
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0803824E
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _0803824E
	ldrb r1, [r5, #6]
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r5, #6]
	bne _0803824E
	adds r5, r2, #0
	ldr r0, [r0, #0x20]
	bl sub_8020B50
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08038242
	ldr r0, [r5]
	movs r3, #5
	ldr r1, [r0, #0x20]
	lsls r3, r3, #0x13
	adds r2, r1, #0
	ldr r1, [r1, #0x58]
	adds r2, #0x58
	str r1, [sp, #0x14]
	ldr r2, [r2, #4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	subs r2, r2, r3
	str r1, [sp, #4]
	add r1, sp, #4
	str r2, [sp, #8]
	bl sub_801CA1E
_08038242:
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r7
	adds r0, r0, r1
	str r0, [r4, #0x34]
_0803824E:
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
_0803827A:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08038282:
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080382A6
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	bics r0, r7
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_080382A6:
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	b _080382C8
_080382C4:
	b _080382DA
_080382C6:
	b _08038396
_080382C8:
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
	b _0803827A
_080382DA:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08038368
	ldrb r0, [r5, #5]
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #5]
	bne _08038324
	ldr r0, [r4, #0x34]
	movs r1, #1
	bics r0, r7
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r5, _08038458 @ =gUnknown_0300345C
	str r0, [r4, #0x34]
	ldr r0, [r5]
	movs r7, #0x49
	lsls r7, r7, #6
	adds r0, r7, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08038368
	ldr r0, [r5]
	adds r0, r7, r0
	bl sub_80268AC
	b _08038368
_08038324:
	ldr r0, _0803845C @ =gUnknown_03003EA0
	adds r5, r1, #0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0x114 @ =_08038460
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
_08038368:
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
_08038394:
	b _0803827A
_08038396:
	ldr r0, _0803845C @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080383B2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080383B2:
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	movs r6, #0
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	ldr r5, _08038468 @ =gUnknown_03003EB8
	beq _080383F4
	movs r2, #0
	bl sub_80007A0
	ldr r7, [r4, #4]
	ldr r0, [r7]
	lsls r0, r0, #0x1c
	bpl _080383DA
	adds r1, r7, #0
	ldr r0, [r5]
	bl sub_8001338
_080383DA:
	ldr r0, [r7]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r7]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08038394
	bl sub_8000914
	b _0803827A
_080383F4:
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08038394
	ldr r7, _08038454 @ =gUnknown_03003458
	ldr r0, [r7]
	ldr r0, [r0, #0x20]
	bl sub_8020B60
	cmp r0, #0
	beq _08038394
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0803841A
	ldr r0, [r7]
	bl sub_801CAC0
_0803841A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08038394
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
	b _0803827A

	thumb_func_start sub_803842C
sub_803842C: @ 0x0803842C
	push {r3, r4, r5, lr}
	bl sub_802E47A
	ldr r4, _08038458 @ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0803844C
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_0803844C:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_08038454: .4byte gUnknown_03003458
_08038458: .4byte gUnknown_0300345C
_0803845C: .4byte gUnknown_03003EA0
_08038460: .4byte 0x0010BE20
_08038464: .4byte 0x00000000
_08038468: .4byte gUnknown_03003EB8

	thumb_func_start sub_803846C
sub_803846C: @ 0x0803846C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080384B4
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6, r0
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3]
	ldrh r1, [r3]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_080384B4:
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	bne _080384D0
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_080384D0:
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80384D8
sub_80384D8: @ 0x080384D8
	push {r3, r4, r5, lr}
	ldr r4, _08038524 @ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _080384F4
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_080384F4:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80384FA
sub_80384FA: @ 0x080384FA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E8B0
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3c
	adds r4, #0x40
	strb r0, [r4, #6]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803851E
sub_803851E: @ 0x0803851E
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_08038524: .4byte gUnknown_0300345C

	thumb_func_start sub_8038528
sub_8038528: @ 0x08038528
	push {r4, lr}
	adds r4, r0, #0
	bl _080180BE
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08038850 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_8000DE6
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8038544
sub_8038544: @ 0x08038544
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldrb r1, [r4]
	sub sp, #8
	bpl _0803855E
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	subs r1, #1
	bl sub_803C04C
	strb r1, [r4]
	b _0803856C
_0803855E:
	cmp r0, #0
	ble _0803856C
	adds r1, #1
	ldrb r0, [r4, #1]
	bl sub_803C124
	strb r1, [r4]
_0803856C:
	ldrb r0, [r4]
	ldr r1, _08038854 @ =gUnknown_0804AE30
	movs r2, #0
	ldrb r3, [r1, r0]
	movs r1, #0x72
	adds r0, r4, #4
	bl sub_80138E2
	ldrb r0, [r4]
	movs r1, #0x52
	lsls r3, r0, #4
	subs r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #0x36
	strh r0, [r3, #6]
	movs r0, #0xb
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08038858 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80385AC
sub_80385AC: @ 0x080385AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	add r0, sp, #0x14
	bl sub_80046F8
	add r0, pc, #0x2A0 @ =_0803885C
	bl sub_800EF60
	ldr r5, _08038864 @ =gUnknown_03003460
	ldr r0, [r5]
	cmp r0, #0
	beq _080385E4
	bl sub_800B72A
	cmp r0, #0
	beq _080385D8
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq _080385E4
_080385D8:
	ldr r0, _08038858 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_080385E4:
	movs r1, #1
	adds r0, r4, #4
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #8
	str r2, [sp, #0xc]
	ldr r7, _08038868 @ =0x0000FFFF
	movs r2, #0
	movs r3, #5
	movs r1, #1
	adds r0, r5, #0
	str r2, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r6, _0803886C @ =gUnknown_03003D30
	movs r2, #0
	ldr r0, [r6]
	movs r1, #0x72
	ldrb r3, [r0, #3]
	adds r0, r5, #0
	bl sub_80138E2
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _08038854 @ =gUnknown_0804AE30
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0803869A
	ldr r5, _08038854 @ =gUnknown_0804AE30
_0803862C:
	ldr r0, _08038868 @ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldrb r0, [r4, #1]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r3, r0, #4
	subs r0, r3, r0
	adds r2, #0x3c
	lsls r0, r0, #3
	adds r0, r0, r4
	str r2, [sp]
	movs r2, #0
	adds r0, #0x7c
	movs r3, #0x64
	movs r1, #0
	bl sub_803F9C4
	ldrb r0, [r4, #1]
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0x7c
	movs r1, #4
	bl sub_80147FA
	ldrb r0, [r4, #1]
	movs r2, #0
	ldrb r1, [r5, r0]
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0x7c
	adds r3, r1, #0
	movs r1, #0x75
	bl sub_80138E2
	ldr r0, [r6]
	ldrb r1, [r0, #3]
	ldrb r0, [r4, #1]
	ldrb r2, [r5, r0]
	cmp r1, r2
	bne _0803868C
	strb r0, [r4]
_0803868C:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	ldrb r0, [r5, r0]
	cmp r0, #0xff
	bne _0803862C
_0803869A:
	ldr r0, _08038850 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0xb
	lsls r1, r1, #6
	adds r5, r4, r1
	movs r2, #0
	movs r1, #0xa4
	str r0, [r5, #0x14]
	bl sub_80007A0
	ldrb r0, [r4]
	lsls r3, r0, #4
	subs r0, r3, r0
	adds r0, #0x36
	movs r1, #0x52
	add r3, sp, #0
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x10
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #5
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080386EA
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080386EA:
	ldr r4, [r5, #0x14]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _08038726
	ldr r0, _08038870 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _08038714
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08038714
	ldr r0, _08038874 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_08038714:
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _08038726
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
_08038726:
	ldr r0, [r5, #0x14]
	bl sub_8000914
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x14
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8038754
sub_8038754: @ 0x08038754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe0
	add r0, sp, #4
	adds r5, r0, #0
	mov r4, sp
	bl sub_80143E0
	movs r2, #0x78
	movs r1, #0xb5
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x2d8]
	ldr r3, _08038878 @ =sub_80143E0
	add r0, sp, #0x7c
	bl sub_803C3A4
	ldr r0, _08038854 @ =gUnknown_0804AE30
	movs r1, #0x97
	ldrb r0, [r0, #1]
	lsls r1, r1, #2
	mov r7, sp
	adds r7, r7, r1
	movs r6, #0
	cmp r0, #0xff
	bne _080387BE
	ldr r0, _08038854 @ =gUnknown_0804AE30
	ldr r1, _0803886C @ =gUnknown_03003D30
	ldrb r0, [r0]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _0803887C @ =gUnknown_0300344C
	ldr r1, [r1]
	strb r0, [r1, #9]
	movs r0, #2
	bl sub_8018386
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r7, #0
	ldr r3, _08038880 @ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
_080387B4:
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080387BE:
	adds r0, r4, #0
	bl sub_80385AC
_080387C4:
	ldr r0, _08038884 @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _080387D2
	ldrh r1, [r0, #6]
_080387D2:
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _080387E4
	movs r1, #0
	mvns r1, r1
	mov r0, sp
	bl sub_8038544
_080387E4:
	lsls r0, r4, #0x18
	bpl _080387F0
	movs r1, #1
	mov r0, sp
	bl sub_8038544
_080387F0:
	lsls r0, r4, #0x1f
	bpl _080387FE
	ldr r0, _08038858 @ =gUnknown_0300345C
	movs r6, #1
	ldr r0, [r0]
	bl sub_8028C2E
_080387FE:
	bl sub_800EF2A
	cmp r6, #0
	beq _080387C4
	add r3, sp, #0
	ldrb r0, [r3]
	ldr r1, _08038854 @ =gUnknown_0804AE30
	ldr r4, _0803886C @ =gUnknown_03003D30
	ldrb r0, [r1, r0]
	ldr r1, [r4]
	strb r0, [r1, #3]
	bl sub_80235E4
	ldr r1, [r4]
	ldr r0, _0803887C @ =gUnknown_0300344C
	ldrb r1, [r1, #3]
	ldr r0, [r0]
	strb r1, [r0, #9]
	movs r0, #2
	bl sub_8018386
	bl _080180BE
	ldr r0, _08038850 @ =gUnknown_03003448
	ldr r1, [sp, #0x2d8]
	ldr r0, [r0]
	bl sub_8000DE6
	movs r2, #0x77
	mvns r2, r2
	adds r1, r5, #0
	adds r0, r7, #0
	ldr r3, _08038880 @ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	b _080387B4
	.align 2, 0
_08038850: .4byte gUnknown_03003448
_08038854: .4byte gUnknown_0804AE30
_08038858: .4byte gUnknown_0300345C
_0803885C: .4byte 0x6F506742
_08038860: .4byte 0x00707570
_08038864: .4byte gUnknown_03003460
_08038868: .4byte 0x0000FFFF
_0803886C: .4byte gUnknown_03003D30
_08038870: .4byte gUnknown_03003EB8
_08038874: .4byte gUnknown_03003EA0
_08038878: .4byte sub_80143E0
_0803887C: .4byte gUnknown_0300344C
_08038880: .4byte sub_8014436
_08038884: .4byte gUnknown_03003444

	thumb_func_start sub_8038888
sub_8038888: @ 0x08038888
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08038C70 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_8018390
	adds r7, r4, #0
	movs r1, #0x21
	lsls r1, r1, #4
	adds r7, #0xff
	adds r7, #0xe9
	adds r6, r4, r1
	adds r5, r4, #4
	cmp r0, #0xf
	bne _08038902
	bl sub_801810E
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls _080388EA
_080388CE:
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _080388CE
_080388EA:
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C78 @ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_801B170
_080388FC:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08038902:
	bl _080180BE
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls _0803893E
_08038922:
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08038922
_0803893E:
	ldr r0, _08038C74 @ =gUnknown_03003448
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	b _080388FC

	non_word_aligned_thumb_func_start sub_803894A
sub_803894A: @ 0x0803894A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl _08038964
	movs r3, #4
	ldrsb r1, [r4, r3]
	b _0803896E
_08038964:
	ldrb r2, [r4, #5]
	cmp r2, r1
	bgt _0803896E
	movs r3, #4
	ldrsb r1, [r4, r3]
_0803896E:
	cmp r0, r1
	beq _080389C6
	strb r1, [r4, #4]
	ldrb r1, [r4, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3, r0
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x14
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x1c
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xe9
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	ldrb r0, [r4, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C @ =gUnknown_080514B8
	movs r3, #0xff
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	adds r0, r5, #0
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x71
	bl sub_80138E2
	ldr r0, _08038C70 @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080389C6:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80389CC
sub_80389CC: @ 0x080389CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _08038C80 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _08038C84 @ =gUnknown_03003EA8
	add r1, pc, #0x29C @ =_08038C88
	ldr r0, [r0]
	bl sub_8004FFC
	movs r7, #0
	adds r3, r7, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _08038C94 @ =gUnknown_03003450
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _08038C98 @ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r5, _08038C9C @ =gUnknown_03003460
	ldr r0, [r5]
	cmp r0, #0
	beq _08038A46
	bl sub_800B72A
	cmp r0, #0
	beq _08038A3A
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq _08038A46
_08038A3A:
	ldr r0, _08038C70 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_08038A46:
	movs r0, #0
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #8
	str r0, [r4, #4]
	movs r5, #0
	movs r6, #0
	movs r3, #0xc
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r0, #0x34
	bl sub_803F708
	movs r1, #1
	cmp r0, #0
	beq _08038A72
	adds r5, r1, #0
	lsls r1, r1, #9
	adds r0, r4, r1
	strb r6, [r0, #0xc]
_08038A72:
	movs r6, #1
	movs r0, #0x35
	bl sub_803F708
	cmp r0, #0
	beq _08038A90
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038A90:
	movs r6, #2
	movs r0, #0x36
	bl sub_803F708
	cmp r0, #0
	beq _08038AAE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #8
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038AAE:
	movs r6, #3
	movs r0, #0x37
	bl sub_803F708
	cmp r0, #0
	beq _08038ACE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038ACE:
	movs r6, #4
	movs r0, #0x38
	bl sub_803F708
	cmp r0, #0
	beq _08038AEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #7
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038AEC:
	movs r6, #5
	movs r0, #0x39
	bl sub_803F708
	cmp r0, #0
	beq _08038B0C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B0C:
	movs r6, #6
	movs r0, #0x3a
	bl sub_803F708
	cmp r0, #0
	beq _08038B2C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B2C:
	movs r6, #7
	movs r0, #0x3b
	bl sub_803F708
	cmp r0, #0
	beq _08038B4C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B4C:
	movs r1, #0x21
	lsls r1, r1, #4
	adds r6, r4, r1
	strb r5, [r6, #5]
	adds r0, r5, #0
	movs r7, #0
	movs r5, #0
	cmp r0, #0
	strb r7, [r6, #4]
	bls _08038BE2
_08038B60:
	ldr r0, _08038C74 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	movs r2, #1
	lsls r2, r2, #9
	adds r7, #0xff
	adds r1, r4, r5
	adds r1, r1, r2
	adds r7, #0xc1
	str r0, [r7, #0x2c]
	ldrb r1, [r1, #0xc]
	ldr r2, _08038C7C @ =gUnknown_080514B8
	subs r2, #8
	ldrb r1, [r2, r1]
	ldr r2, _08038CA0 @ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	movs r3, #0x34
	muls r0, r3, r0
	lsrs r1, r5, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x18
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x20
	strh r1, [r3, #0x2a]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08038BCE
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08038BCE:
	movs r1, #1
	ldr r0, [r7, #0x2c]
	bl sub_80401E4
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08038B60
_08038BE2:
	adds r0, r4, #0
	adds r0, #0xf8
	movs r1, #4
	adds r5, r0, #0
	bl sub_80147FA
	movs r2, #8
	ldr r1, _08038CA4 @ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r7, #0xff
	movs r1, #0x27
	lsls r1, r1, #5
	adds r3, r7, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #8
	ldr r1, _08038CA4 @ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #0x52
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x44
	adds r0, r5, #0
	bl sub_803F9C4
	ldrb r0, [r6, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C @ =gUnknown_080514B8
	adds r3, r7, #0
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #5
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08038C74 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r4, #0xff
	adds r4, #0xc1
	b _08038CA8
	.align 2, 0
_08038C70: .4byte gUnknown_0300345C
_08038C74: .4byte gUnknown_03003448
_08038C78: .4byte gUnknown_03003458
_08038C7C: .4byte gUnknown_080514B8
_08038C80: .4byte gUnknown_03003468
_08038C84: .4byte gUnknown_03003EA8
_08038C88: .4byte 0x654D6742
_08038C8C: .4byte 0x6157756E
_08038C90: .4byte 0x00007072
_08038C94: .4byte gUnknown_03003450
_08038C98: .4byte gUnknown_03003E98
_08038C9C: .4byte gUnknown_03003460
_08038CA0: .4byte gUnknown_08050716
_08038CA4: .4byte 0x0000FFFF
_08038CA8:
	movs r2, #0
	lsls r1, r7, #1
	str r0, [r4, #0x28]
	bl sub_80007A0
	ldrb r1, [r6, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3, r0
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x14
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x1c
	strh r1, [r3, #0x2a]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r4, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08038CF6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08038CF6:
	ldr r0, [r4, #0x28]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x28]
	bl sub_80401E4
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #4
	movs r1, #0xc
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8038D2C
sub_8038D2C: @ 0x08038D2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r6, r1, #0
	adds r0, r5, #0
	movs r2, #0x78
	adds r0, #8
	ldr r3, _08038E2C @ =sub_80143E0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r7, r0, #0
	bl sub_80143E0
	movs r4, #0
	adds r0, r5, #0
	bl sub_80389CC
_08038D60:
	ldr r0, _08038E30 @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08038D6E
	ldrh r1, [r0, #6]
_08038D6E:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x1e
	bpl _08038D7A
	movs r4, #1
	b _08038DBC
_08038D7A:
	lsls r1, r0, #0x1f
	bpl _08038D82
	movs r4, #2
	b _08038DBC
_08038D82:
	lsls r1, r0, #0x1a
	bpl _08038D92
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038D92:
	lsls r1, r0, #0x1b
	bpl _08038DA0
	movs r1, #1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038DA0:
	lsls r1, r0, #0x19
	bpl _08038DB0
	movs r1, #3
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038DB0:
	lsls r0, r0, #0x18
	bpl _08038DBC
	movs r1, #4
	adds r0, r5, #0
	bl sub_803894A
_08038DBC:
	bl sub_800EF2A
	cmp r4, #0
	beq _08038D60
	cmp r4, #2
	bne _08038DF4
	movs r0, #0x21
	lsls r0, r0, #4
	adds r0, r5, r0
	ldrb r0, [r0, #4]
	lsls r1, r4, #8
	movs r2, #0x90
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038E34 @ =gUnknown_080514B0
	ldrb r1, [r1, r0]
	ldr r0, _08038E38 @ =gUnknown_03003D2C
	ldr r0, [r0]
	strb r1, [r2, r0]
	ldr r1, _08038E3C @ =0x0000FFFF
	adds r0, #0x80
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl sub_8018386
	b _08038DFA
_08038DF4:
	movs r0, #0x11
	bl sub_8018386
_08038DFA:
	adds r0, r5, #0
	bl sub_8038888
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r6, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r5, #0
	adds r0, #0x80
	ldr r3, _08038E40 @ =sub_8014436
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_08038E2C: .4byte sub_80143E0
_08038E30: .4byte gUnknown_03003444
_08038E34: .4byte gUnknown_080514B0
_08038E38: .4byte gUnknown_03003D2C
_08038E3C: .4byte 0x0000FFFF
_08038E40: .4byte sub_8014436

	thumb_func_start sub_8038E44
sub_8038E44: @ 0x08038E44
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080391A4 @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r6, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _08038E66
	bl sub_801810E
	b _08038E6A
_08038E66:
	bl _080180BE
_08038E6A:
	ldr r4, _080391A8 @ =gUnknown_03003448
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x39
	ldr r0, [r4]
	bl sub_8000DE6
	movs r5, #0
_08038E8A:
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r4, r1, #0
	ldr r7, _080391A8 @ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0x2d
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x21
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x15
	ldr r0, [r7]
	bl sub_8000DE6
	movs r4, #0
	lsls r0, r5, #3
	adds r7, r0, r6
_08038EBA:
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _080391A8 @ =gUnknown_03003448
	adds r1, #0xf8
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08038EBA
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08038E8A
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8038EE2
sub_8038EE2: @ 0x08038EE2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1ac
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp, #0x198]
	add r5, sp, #0x104
	movs r6, #0
	adds r0, r5, #0
	bl sub_80143E0
	add r4, sp, #0x14
	adds r1, r4, #0
	adds r1, #0xf0
	movs r2, #0x78
	adds r0, r4, #0
	ldr r3, _080391AC @ =sub_80143E0
	bl sub_803C3A4
	movs r0, #0xb0
	str r0, [sp, #4]
	movs r0, #0x4d
	lsls r0, r0, #5
	movs r2, #0xff
	movs r1, #0x30
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r7, r7, r0
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0 @ =gUnknown_080514C8
	movs r3, #0x20
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #4
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #0
	adds r0, r5, #0
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _080391B4 @ =0x000004DF
	bl sub_80138E2
	movs r2, #4
	movs r1, #0x10
	movs r0, #0x60
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0 @ =gUnknown_080514C8
	movs r3, #0x18
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #0x20
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #0
	adds r0, r4, #0
	bl sub_80147FA
	movs r1, #0x9b
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r2, #4
	movs r1, #0x10
	movs r0, #0x60
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0 @ =gUnknown_080514C8
	movs r3, #0x78
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #0x20
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r3
	str r0, [sp, #0x1a8]
	bl sub_803F9C4
	movs r1, #0
	ldr r0, [sp, #0x1a8]
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	ldr r1, _080391B8 @ =0x000004D9
	ldr r0, [sp, #0x1a8]
	bl sub_80138E2
	movs r5, #0
_08038FC6:
	ldr r0, _080391A8 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r4, r5, #2
	str r4, [sp, #0x1a4]
	add r1, sp, #0x180
	str r0, [r1, r4]
	lsls r1, r5, #1
	ldr r2, _080391B0 @ =gUnknown_080514C8
	str r1, [sp, #0x1a0]
	adds r2, #0x1a
	ldrh r1, [r2, r1]
	bl sub_800065C
	ldr r0, _080391B0 @ =gUnknown_080514C8
	ldr r1, [sp, #0x1a0]
	adds r0, #0x26
	ldrh r1, [r0, r1]
	ldrb r0, [r7, #0xd]
	ldr r2, _080391B0 @ =gUnknown_080514C8
	add r3, sp, #0
	lsls r0, r0, #1
	ldrh r0, [r2, r0]
	strh r1, [r3, #0x10]
	add r1, sp, #0x180
	strh r0, [r3, #0x12]
	ldr r0, [r1, r4]
	add r1, sp, #0x10
	bl sub_8040034
	add r1, sp, #0x180
	ldr r4, [r1, r4]
	movs r1, #1
	cmp r5, #5
	beq _08039010
	movs r1, #0
_08039010:
	ldrh r2, [r4, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi _08039030
	adds r0, r4, #0
	bl sub_804025C
_08039030:
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x1a4]
	add r4, sp, #0x180
	ldr r0, [r4, r0]
	movs r1, #1
	bl sub_80401C0
	ldr r0, [sp, #0x1a4]
	movs r1, #1
	ldr r0, [r4, r0]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08038FC6
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	add r1, sp, #0x14
	adds r0, r0, r1
	movs r2, #0
	movs r4, #0
	adds r3, r4, #0
	str r2, [sp]
	add r1, sp, #0x19c
	bl sub_803F814
	ldr r0, _080391A8 @ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa4
	str r0, [sp, #0x17c]
	bl sub_80007A0
	ldrb r1, [r7, #0xd]
	add r3, sp, #0x180
	ldrh r0, [r3, #0x1c]
	ldr r2, _080391B0 @ =gUnknown_080514C8
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	subs r0, #0x14
	add r3, sp, #0
	strh r0, [r3, #0x10]
	adds r1, #0x1c
	strh r1, [r3, #0x12]
	ldr r0, [sp, #0x17c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #1
	ldr r0, [sp, #0x17c]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [sp, #0x17c]
	bl sub_80401E4
	ldr r0, [sp, #0x17c]
	bl sub_8000914
	bl sub_800EF2A
	ldr r0, [sp, #0x198]
	cmp r0, #0
	beq _0803914A
	ldr r5, _080391A4 @ =gUnknown_0300345C
_080390C2:
	ldr r0, _080391BC @ =gUnknown_03003444
	adds r1, r4, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _080390D0
	ldrh r1, [r0, #6]
_080390D0:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x1f
	bpl _080390E4
	ldr r0, [r5]
	bl sub_8028C2E
	movs r0, #0
	str r0, [sp, #0x198]
	b _08039140
_080390E4:
	lsls r1, r0, #0x1e
	bpl _080390F6
	ldr r0, [r5]
	bl sub_8028C2E
	movs r0, #0
	str r0, [sp, #0x198]
	movs r6, #0
	b _08039140
_080390F6:
	lsls r1, r0, #0x1a
	bmi _080390FE
	lsls r0, r0, #0x1b
	bpl _08039140
_080390FE:
	ldr r0, [r5]
	adds r0, #0x20
	bl sub_8028C2E
	adds r6, #1
	lsls r6, r6, #0x1f
	lsrs r6, r6, #0x1f
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	add r1, sp, #0x14
	adds r0, r0, r1
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	add r1, sp, #0x19c
	bl sub_803F814
	add r3, sp, #0x180
	ldrb r0, [r7, #0xd]
	ldrh r1, [r3, #0x1c]
	ldr r2, _080391B0 @ =gUnknown_080514C8
	lsls r0, r0, #1
	ldrh r0, [r2, r0]
	subs r1, #0x14
	add r3, sp, #0
	strh r1, [r3, #0x10]
	adds r0, #0x1c
	strh r0, [r3, #0x12]
	ldr r0, [sp, #0x17c]
	add r1, sp, #0x10
	bl sub_8040034
_08039140:
	bl sub_800EF2A
	ldr r0, [sp, #0x198]
	cmp r0, #0
	bne _080390C2
_0803914A:
	cmp r6, #1
	bne _08039160
	ldrb r0, [r7, #0xd]
	ldr r1, _080391C0 @ =gUnknown_03003D28
	strb r0, [r1]
	bl sub_80239EC
	bl sub_802383A
	movs r0, #4
	strb r0, [r7, #0xc]
_08039160:
	ldr r5, _080391A8 @ =gUnknown_03003448
	movs r4, #0
	add r6, sp, #0x180
_08039166:
	lsls r0, r4, #2
	adds r1, r0, r6
	ldr r0, [r5]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _08039166
	add r1, sp, #0x17c
	ldr r0, [r5]
	bl sub_8000DE6
	movs r2, #0x77
	mvns r2, r2
	movs r1, #0x63
	mvns r1, r1
	add r1, sp
	ldr r3, _080391C4 @ =sub_8014436
	ldr r0, [sp, #0x1a8]
	bl sub_803C3C8
	movs r1, #0
	add r0, sp, #0x104
	bl sub_8014436
	add sp, #0x1ac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_080391A4: .4byte gUnknown_0300345C
_080391A8: .4byte gUnknown_03003448
_080391AC: .4byte sub_80143E0
_080391B0: .4byte gUnknown_080514C8
_080391B4: .4byte 0x000004DF
_080391B8: .4byte 0x000004D9
_080391BC: .4byte gUnknown_03003444
_080391C0: .4byte gUnknown_03003D28
_080391C4: .4byte sub_8014436

	thumb_func_start sub_80391C8
sub_80391C8: @ 0x080391C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080395AC @ =gUnknown_0300345C
	ldr r0, [r0]
	bl sub_8028C2E
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xd]
	movs r3, #0x13
	lsls r3, r3, #7
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r2, r2, r3
	ldr r2, [r2, #0x30]
	cmp r2, #0
	bne _080391FE
	ldr r2, _080395B0 @ =gUnknown_03003D28
	strb r1, [r2]
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_802383A
_080391F8:
	pop {r4}
	pop {r3}
	bx r3
_080391FE:
	adds r0, r4, #0
	bl sub_8038EE2
	b _080391F8

	non_word_aligned_thumb_func_start sub_8039206
sub_8039206: @ 0x08039206
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r6, r5, r0
	ldrb r0, [r6, #0xd]
	cmp r1, #0
	sub sp, #0xc
	bge _08039222
	adds r0, #2
	bl sub_8040640
	strb r0, [r6, #0xd]
	b _0803922E
_08039222:
	cmp r1, #0
	ble _0803922E
	adds r0, #1
	bl sub_8040640
	strb r0, [r6, #0xd]
_0803922E:
	movs r4, #0
_08039230:
	ldrb r0, [r6, #0xd]
	ldr r7, _080395B4 @ =0x00000CED
	cmp r0, r4
	bne _0803923A
	subs r7, #2
_0803923A:
	lsls r0, r4, #3
	adds r0, r0, r5
	adds r0, #0xc0
	str r0, [sp, #8]
	ldr r1, [r0, #0x38]
	ldr r0, _080395B8 @ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _08039274
	ldr r0, [sp, #8]
	adds r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_800065C
	ldr r0, [sp, #8]
	adds r1, r7, #1
	ldr r0, [r0, #0x3c]
	bl sub_800065C
_08039274:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _08039230
	ldrb r0, [r6, #0xd]
	movs r1, #5
	adds r4, r5, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #2
	adds r4, #0xff
	adds r4, #1
	strh r0, [r3, #6]
	ldr r0, [r4, #0x38]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xd]
	movs r1, #0x13
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	adds r1, r5, #0
	adds r1, #8
	cmp r0, #0
	beq _080392C0
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _080392CA
_080392C0:
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_080392CA:
	ldr r0, _080395B8 @ =gUnknown_03003EA0
	ldr r7, [r4, #0x10]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080392E6
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080392E6:
	lsls r0, r1, #0x10
	ldrb r1, [r6, #0xd]
	lsrs r0, r0, #0x10
	adds r2, r1, r5
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrb r1, [r1, #0xc]
	ldr r2, _080395BC @ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	beq _08039306
	ldr r0, [r4, #0x10]
	bl sub_800065C
_08039306:
	ldr r0, [r4, #0x10]
	movs r3, #0x13
	ldr r1, [r0]
	lsls r3, r3, #7
	lsls r2, r1, #0x1f
	ldrb r1, [r6, #0xd]
	lsrs r2, r2, #0x1f
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, r1, r3
	ldr r1, [r1, #0x30]
	cmp r2, r1
	beq _08039324
	bl sub_80401E4
_08039324:
	ldr r0, _080395AC @ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8039336
sub_8039336: @ 0x08039336
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r5, r0
	sub sp, #0x5c
	str r0, [sp, #0x58]
	movs r4, #0
	strb r4, [r0, #0xc]
	ldr r0, [sp, #0x58]
	strb r4, [r0, #0xd]
	str r4, [r5]
	str r4, [r5, #4]
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r0, _080395C0 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_8001A60
	ldr r0, _080395C4 @ =gUnknown_03003EA8
	add r1, pc, #0x258 @ =_080395C8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r4, _080395D4 @ =gUnknown_03003450
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r6, #0
	bl sub_800D9E0
	ldr r0, _080395D8 @ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r4]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r0, #0x70
	str r0, [sp, #4]
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp, #0xc]
	str r2, [sp]
	movs r2, #0
	adds r0, #0x3d
	movs r1, #1
	movs r3, #0x78
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	movs r1, #1
	adds r0, r4, #0
	bl sub_80138E2
	movs r4, #0
_080393DA:
	ldr r0, [sp, #0x58]
	ldr r1, _080395B4 @ =0x00000CED
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne _080393E6
	subs r1, #2
_080393E6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	str r1, [sp, #0x30]
	str r0, [sp, #0x50]
	adds r0, #5
	str r0, [sp, #0x54]
	lsls r0, r4, #3
	movs r6, #0
	adds r1, r0, r5
	str r1, [sp, #0x4c]
_080393FC:
	ldr r7, _080395DC @ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, [sp, #0x4c]
	lsls r2, r6, #2
	adds r7, r1, r2
	adds r7, #0xc0
	str r0, [r7, #0x38]
	ldr r1, [sp, #0x30]
	adds r1, r1, r6
	bl sub_800065C
	lsls r1, r6, #6
	adds r1, #5
	add r3, sp, #0
	ldr r0, [sp, #0x54]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r7, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x38]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _080393FC
	ldr r7, _080395DC @ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	lsls r1, r4, #2
	adds r6, r1, r5
	str r6, [sp, #0x44]
	adds r6, #0xff
	str r1, [sp, #0x48]
	adds r6, #1
	str r0, [r6, #0x2c]
	ldr r1, _080395E0 @ =0x000008A4
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xf
	movs r1, #0x21
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x2c]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x2c]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _080395E4 @ =0x00000C9D
	str r0, [r6, #0x20]
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xe
	str r0, [sp, #0x40]
	movs r1, #0x3a
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x20]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x20]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x20]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _080395E8 @ =0x00000C8B
	str r0, [r6, #0x14]
	bl sub_800065C
	movs r1, #0x58
	add r3, sp, #0
	ldr r0, [sp, #0x40]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x14]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x14]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x14]
	bl sub_80401E4
	ldr r0, _080395B0 @ =gUnknown_03003D28
	strb r4, [r0]
	bl sub_802383A
	ldr r0, _080395EC @ =gUnknown_03003D2C
	movs r3, #0x9b
	ldr r1, [r0]
	movs r0, #0x90
	ldrb r0, [r0, r1]
	lsls r3, r3, #4
	adds r2, r5, r4
	adds r2, r2, r3
	strb r0, [r2, #0xc]
	ldr r1, [r1]
	movs r0, #1
	cmp r1, #0
	bne _0803950C
	movs r0, #0
_0803950C:
	movs r1, #0x13
	ldr r6, [sp, #0x44]
	lsls r1, r1, #7
	adds r1, r6, r1
	str r1, [sp, #0x3c]
	str r0, [r1, #0x30]
	movs r0, #8
	str r0, [sp, #4]
	lsls r0, r4, #4
	movs r2, #4
	str r2, [sp, #0xc]
	subs r0, r0, r4
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	ldr r2, [sp, #0x50]
	adds r0, r0, r5
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r2, #0xa
	str r2, [sp]
	adds r6, r0, r1
	movs r1, #0
	movs r2, #0
	str r0, [sp, #0x38]
	movs r3, #0x10
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _080395F0 @ =gUnknown_080514D0
	ldr r0, [sp, #0x48]
	movs r2, #0
	ldr r1, [r1, r0]
	adds r0, r6, #0
	bl _080137F8
	movs r0, #0xff
	adds r0, #0x69
	ldr r1, _080395F4 @ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	muls r0, r4, r0
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r0, r5
	ldr r0, _080395F8 @ =0x00000574
	adds r2, #0x10
	adds r7, r2, #0
	str r2, [sp]
	str r1, [sp, #0x34]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x31
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _080395EC @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	adds r2, r1, #0
	add r1, pc, #0x5C @ =_080395FC
	adds r0, r6, #0
	bl sub_801390A
	movs r2, #0xff
	b _08039600
	.align 2, 0
_080395AC: .4byte gUnknown_0300345C
_080395B0: .4byte gUnknown_03003D28
_080395B4: .4byte 0x00000CED
_080395B8: .4byte gUnknown_03003EA0
_080395BC: .4byte gUnknown_08050716
_080395C0: .4byte gUnknown_03003468
_080395C4: .4byte gUnknown_03003EA8
_080395C8: .4byte 0x654D6742
_080395CC: .4byte 0x6153756E
_080395D0: .4byte 0x00006576
_080395D4: .4byte gUnknown_03003450
_080395D8: .4byte gUnknown_03003E98
_080395DC: .4byte gUnknown_03003448
_080395E0: .4byte 0x000008A4
_080395E4: .4byte 0x00000C9D
_080395E8: .4byte 0x00000C8B
_080395EC: .4byte gUnknown_03003D2C
_080395F0: .4byte gUnknown_080514D0
_080395F4: .4byte 0x0000FFFF
_080395F8: .4byte 0x00000574
_080395FC: .4byte 0x00006925
_08039600:
	ldr r1, _08039944 @ =0x0000FFFF
	ldr r0, _08039948 @ =0x000005EC
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x4a
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0803994C @ =gUnknown_03003D2C
	add r1, pc, #0x328 @ =_08039950
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _08039944 @ =0x0000FFFF
	ldr r0, _08039958 @ =0x00000664
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	movs r2, #0xff
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x69
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0803994C @ =gUnknown_03003D2C
	ldr r0, [r0]
	ldr r7, [r0]
	adds r0, r7, #0
	bl sub_80406C4
	adds r0, r1, #0
	bl sub_80406C4
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	bl sub_8040660
	adds r2, r1, #0
	add r1, pc, #0x2E4 @ =_0803995C
	adds r0, r6, #0
	ldr r3, [sp, #0x2c]
	bl sub_801390A
	movs r2, #4
	str r2, [sp, #0xc]
	movs r1, #0x10
	movs r0, #0x80
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #0x50]
	ldr r1, _08039968 @ =0x0000040C
	ldr r0, [sp, #0x38]
	adds r2, #0x21
	str r2, [sp]
	adds r6, r0, r1
	movs r1, #0
	movs r2, #0
	movs r3, #5
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, [sp, #0x3c]
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _080396CA
	ldr r0, _0803994C @ =gUnknown_03003D2C
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r1, #0x78
	adds r0, r6, #0
	bl sub_80138E2
	b _080396D6
_080396CA:
	movs r3, #0xff
	movs r2, #0
	movs r1, #0x77
	adds r0, r6, #0
	bl sub_80138E2
_080396D6:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	bhs _080396E2
	b _080393DA
_080396E2:
	ldr r0, [sp, #0x58]
	movs r4, #0x13
	ldrb r0, [r0, #0xd]
	lsls r4, r4, #7
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r4
	ldr r0, [r0, #0x30]
	adds r1, #8
	cmp r0, #0
	beq _08039706
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _08039710
_08039706:
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_08039710:
	ldr r1, _0803996C @ =gUnknown_03003D28
	movs r0, #0
	strb r0, [r1]
	bl sub_802383A
	ldr r7, _08039970 @ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #1
	movs r3, #0x9b
	lsls r3, r3, #4
	adds r1, r5, r3
	str r0, [r6, #0x10]
	ldrb r1, [r1, #0xc]
	ldr r2, _08039974 @ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0x8f
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0x3c
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x10]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r6, #0x10]
	bl sub_80401C0
	adds r0, r5, r4
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _08039766
	movs r1, #1
	ldr r0, [r6, #0x10]
	bl sub_80401E4
_08039766:
	ldr r0, [r7]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0xf0
	str r0, [r6, #0x38]
	bl sub_80007A0
	ldr r0, [sp, #0x58]
	ldrb r0, [r0, #0xd]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	adds r0, #2
	movs r1, #5
	add r3, sp, #0
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #3
	ldr r0, [r6, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80401E4
	ldr r0, [r6, #0x38]
	bl sub_8000914
	ldr r4, _08039978 @ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _080397D0
	bl sub_800B72A
	cmp r0, #0
	beq _080397C4
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _080397D0
_080397C4:
	ldr r0, _0803997C @ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_080397D0:
	bl sub_8018070
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80397DC
sub_80397DC: @ 0x080397DC
	push {r4, r5, r6, r7, lr}
	ldr r3, _08039980 @ =0xFFFFF634
	ldr r4, _08039984 @ =sub_80143E0
	add sp, r3
	add r6, sp, #4
	adds r1, r6, #0
	adds r1, #0xf8
	adds r0, r6, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl sub_803C3A4
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _08039968 @ =0x0000040C
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r5, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _08039988 @ =0x00000574
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _0803998C @ =0x000009AC
	movs r2, #0x78
	adds r1, r6, r0
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_8039336
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r6, r0
_0803985E:
	ldr r0, _08039990 @ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0803986C
	ldrh r1, [r0, #6]
_0803986C:
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x1e
	bpl _0803987A
	movs r0, #3
	strb r0, [r5, #0xc]
	b _08039896
_0803987A:
	lsls r0, r4, #0x19
	bpl _0803988A
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8039206
	b _08039896
_0803988A:
	lsls r0, r4, #0x18
	bpl _08039896
	movs r1, #1
	adds r0, r6, #0
	bl sub_8039206
_08039896:
	lsls r0, r4, #0x1f
	bpl _080398A0
	adds r0, r6, #0
	bl sub_80391C8
_080398A0:
	bl sub_800EF2A
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0803985E
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _0803993C
	cmp r0, #4
	bne _080398BA
	movs r0, #0x10
	bl sub_8018386
_080398BA:
	adds r0, r6, #0
	bl sub_8038E44
	ldr r0, _08039998 @ =0x000004FC
	ldr r4, _08039994 @ =sub_8014436
	adds r1, r6, r0
	ldr r0, _0803999C @ =0x00000934
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r6, r0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r5, r1, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, #0
	adds r0, #0x80
	bl sub_803C3C8
	ldr r3, _080399A0 @ =0x000009CC
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803993C:
	movs r0, #2
	bl sub_8018386
	b _080398BA
	.align 2, 0
_08039944: .4byte 0x0000FFFF
_08039948: .4byte 0x000005EC
_0803994C: .4byte gUnknown_03003D2C
_08039950: .4byte 0x69323025
_08039954: .4byte 0x00000000
_08039958: .4byte 0x00000664
_0803995C: .4byte 0x69323025
_08039960: .4byte 0x3230253A
_08039964: .4byte 0x00000069
_08039968: .4byte 0x0000040C
_0803996C: .4byte gUnknown_03003D28
_08039970: .4byte gUnknown_03003448
_08039974: .4byte gUnknown_08050716
_08039978: .4byte gUnknown_03003460
_0803997C: .4byte gUnknown_0300345C
_08039980: .4byte 0xFFFFF634
_08039984: .4byte sub_80143E0
_08039988: .4byte 0x00000574
_0803998C: .4byte 0x000009AC
_08039990: .4byte gUnknown_03003444
_08039994: .4byte sub_8014436
_08039998: .4byte 0x000004FC
_0803999C: .4byte 0x00000934
_080399A0: .4byte 0x000009CC

	thumb_func_start sub_80399A4
sub_80399A4: @ 0x080399A4
	push {r4, lr}
	adds r4, r0, #0
	bne _080399BC
	movs r0, #0xec
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080399BC
	adds r0, r4, #0
_080399B6:
	pop {r4}
	pop {r3}
	bx r3
_080399BC:
	adds r0, r4, #0
	bl sub_80344E4
	ldr r0, _08039D6C @ =_0803EB90
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xe0
	strb r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #9]
	adds r0, r4, #0
	b _080399B6

	non_word_aligned_thumb_func_start sub_80399D6
sub_80399D6: @ 0x080399D6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08039D6C @ =_0803EB90
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8034536
	cmp r5, #0
	beq _080399F2
	adds r0, r4, #0
	bl sub_803DA18
_080399F2:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80399F8
sub_80399F8: @ 0x080399F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r0, #0
	adds r5, #0x80
	adds r6, #0xa0
	movs r7, #0x46
	adds r4, r0, #0
	cmp r1, #0x3a
	sub sp, #0x1c
	beq _08039AF0
	cmp r1, #0x3b
	beq _08039AF2
	cmp r1, #0x3c
	beq _08039AF4
	cmp r1, #0x3d
	bne _08039AEE
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x32
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xff
	adds r0, #0x71
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x7a
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x74
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0x16
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x79
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70 @ =0xFFFF007F
	adds r0, #0x5a
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x30]
_08039AEE:
	b _08039AF6
_08039AF0:
	b _08039B3C
_08039AF2:
	b _08039BE6
_08039AF4:
	b _08039C98
_08039AF6:
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x17
	ldr r0, _08039D74 @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #9]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	strb r1, [r0, #8]
	ldr r0, [r5, #0x1c]
	cmp r0, #0x10
	beq _08039BE4
	ldr r0, [r5, #0xc]
	lsls r1, r0, #0x13
	bmi _08039BE4
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r4, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x1f
	ldr r0, _08039D78 @ =gUnknown_03003EB8
	ldr r1, [r4]
	beq _08039C12
	lsls r1, r1, #0x1c
	bmi _08039C14
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_80012F0
	b _08039C14
_08039B3C:
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0xa5
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r1, #0
	str r2, [sp, #0x14]
	movs r2, #0x32
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r0, #0xb1
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xab
	strh r0, [r4, #0xe]
	movs r0, #0xac
	strh r0, [r4, #0xa]
	movs r0, #0xad
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xae
	strh r0, [r4, #0x1e]
	movs r0, #0xaf
	strh r0, [r4, #0x1a]
	movs r0, #0xb0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xa8
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1b
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x6d
	str r1, [r5, #0x34]
	ldr r1, _08039D7C @ =0x00015998
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _08039D70 @ =0xFFFF007F
	lsls r0, r0, #7
	adds r0, #0x50
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _08039AEE
_08039BE4:
	b _08039DA4
_08039BE6:
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x8b
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r1, #0
	movs r0, #3
	str r0, [sp, #0xc]
	b _08039C16
_08039C12:
	b _08039D8C
_08039C14:
	b _08039D98
_08039C16:
	str r2, [sp, #0x14]
	movs r2, #0x32
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	movs r0, #0x94
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0x97
	strh r0, [r4, #0xe]
	movs r0, #0x98
	strh r0, [r4, #0xa]
	movs r0, #0x99
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x9a
	strh r0, [r4, #0x1e]
	movs r0, #0x9b
	strh r0, [r4, #0x1a]
	movs r0, #0x9c
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x8e
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0x17
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x71
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70 @ =0xFFFF007F
	adds r0, #0x5a
	ands r0, r1
	movs r1, #0x19
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _08039AEE
_08039C98:
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08039D80 @ =0x0000032B
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	adds r3, r7, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #3
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08039D84 @ =0x00000325
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r7, #0x32
	adds r3, r7, #0
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #2
	movs r1, #6
	movs r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xcd
	lsls r0, r0, #2
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	movs r1, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	ldr r0, _08039D88 @ =0x0000032E
	movs r1, #0xff
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x65
	lsls r0, r0, #3
	strh r0, [r6, #8]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1d
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x75
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _08039D70 @ =0xFFFF007F
	adds r0, #0x64
	ands r0, r1
	lsls r1, r7, #7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _08039AEE
	.align 2, 0
_08039D6C: .4byte _0803EB90
_08039D70: .4byte 0xFFFF007F
_08039D74: .4byte gUnknown_03003D2C
_08039D78: .4byte gUnknown_03003EB8
_08039D7C: .4byte 0x00015998
_08039D80: .4byte 0x0000032B
_08039D84: .4byte 0x00000325
_08039D88: .4byte 0x0000032E
_08039D8C:
	lsls r1, r1, #0x1c
	bpl _08039D98
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_8001338
_08039D98:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
_08039DA4:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8039DAC
sub_8039DAC: @ 0x08039DAC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r0, #0
	ldr r0, _0803A030 @ =gUnknown_03003E98
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xe0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	adds r7, #0x80
	movs r2, #0
	cmp r0, #0
	bne _08039E2E
	movs r3, #9
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #8]
	bpl _08039DE0
	strb r2, [r5, #8]
	rsbs r0, r0, #0
	strb r0, [r5, #9]
	b _08039DEC
_08039DE0:
	cmp r1, #4
	ble _08039DEC
	movs r1, #4
	strb r1, [r5, #8]
	rsbs r0, r0, #0
	strb r0, [r5, #9]
_08039DEC:
	movs r3, #8
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls _08039E00
	movs r6, #3
	b _08039E06
_08039E00:
	cmp r6, #1
	bhs _08039E06
	movs r6, #1
_08039E06:
	ldr r1, [r4, #0x30]
	ldr r0, _0803A034 @ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _0803A038 @ =0x000011EF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq _08039E2E
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08039E2E:
	movs r3, #8
	ldrsb r0, [r5, r3]
	ldr r1, [r7, #0x24]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x2c]
	subs r6, r2, r0
	ldr r2, [r1, #0x2c]
	ldr r3, [r4, #0x58]
	ldr r7, [r1, #0x34]
	subs r5, r3, r2
	ldr r2, [r1, #0x30]
	adds r7, r7, r5
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	subs r2, r6, r2
	adds r7, r7, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r7, [r1, #0x38]
	ldr r7, [r0, #8]
	adds r5, r7, r5
	str r5, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r2, r5, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r6, [r1, #0x30]
	ldr r2, [r1]
	movs r0, #0xff
	adds r0, #1
	orrs r2, r0
	str r2, [r1]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08039EB0
	ldr r3, [r4, #0x58]
	ldr r5, [r2, #0x2c]
	ldr r6, [r2, #0x30]
	subs r5, r3, r5
	ldr r3, [r4, #0x5c]
	adds r1, r2, #0
	subs r3, r3, r6
	ldr r6, [r2, #0x34]
	adds r1, #0x34
	adds r6, r6, r5
	str r6, [r2, #0x34]
	ldr r6, [r2, #0x38]
	adds r6, r6, r3
	str r6, [r1, #4]
	ldr r6, [r1, #8]
	adds r5, r6, r5
	str r5, [r1, #8]
	ldr r5, [r1, #0xc]
	adds r3, r5, r3
	str r3, [r1, #0xc]
	adds r4, #0x58
	ldm r4, {r3, r4}
	str r3, [r2, #0x2c]
	str r4, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
_08039EB0:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8039EB6
sub_8039EB6: @ 0x08039EB6
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r1, #0
	adds r6, r3, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08039ECE
	cmp r0, #0x10
	bne _08039ED8
_08039ECE:
	movs r0, #0
_08039ED0:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08039ED8:
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _08039EF4
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b _08039ED0
_08039EF4:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08039F0C
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08039F0C
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_801F450
_08039F0C:
	movs r3, #0x97
	ldrsb r0, [r7, r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #2
	cmp r0, #6
	bhs _08039FB4
	add r3, pc, #0x8 @ =_08039F24
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_08039F24:
	.byte 0x03
_08039F25:
	.byte 0x03
_08039F26:
	.byte 0x44
_08039F27:
	.byte 0x07
_08039F28:
	.byte 0x1E
_08039F29:
	.byte 0x07
loc_8039f2a:
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
loc_8039f32:
	ldr r0, _0803A03C @ =gUnknown_03003D2C
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r6
	strb r1, [r0, #6]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08039FBA
loc_8039f60:
	ldr r0, _0803A040 @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08039FA4
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08039FA4
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08039FBA
_08039FA4:
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
loc_8039fac:
	adds r0, r4, #0
	bl sub_801F286
	b _08039FBA
_08039FB4:
	adds r0, r4, #0
	bl sub_801F286
_08039FBA:
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt _08039FDE
	ldr r2, _0803A044 @ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq _08039FDE
	ldr r0, _0803A03C @ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _0803A048 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	b _0803A01E
_08039FDE:
	ldr r1, _0803A03C @ =gUnknown_03003D2C
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _0803A048 @ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _0803A04C @ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
_0803A01E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08039ED0
	.align 2, 0
_0803A030: .4byte gUnknown_03003E98
_0803A034: .4byte gUnknown_03003EA0
_0803A038: .4byte 0x000011EF
_0803A03C: .4byte gUnknown_03003D2C
_0803A040: .4byte gUnknown_03003458
_0803A044: .4byte gUnknown_03003478
_0803A048: .4byte gUnknown_030034F8
_0803A04C: .4byte gUnknown_0300345C

	thumb_func_start sub_803A050
sub_803A050: @ 0x0803A050
	push {r4, lr}
	adds r4, r0, #0
	bne _0803A068
	movs r0, #0xf4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0803A068
	adds r0, r4, #0
_0803A062:
	pop {r4}
	pop {r3}
	bx r3
_0803A068:
	adds r0, r4, #0
	bl sub_8030668
	ldr r0, _0803A420 @ =_0803E9B4
	adds r1, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r1, #0xf0
	movs r2, #8
	adds r0, #0xe0
	ldr r3, _0803A424 @ =sub_8041020
	bl sub_803C3A4
	add r0, pc, #0x3A4 @ =_0803A428
	str r0, [r4, #0x4c]
	movs r0, #0xb
	strh r0, [r4, #4]
	movs r0, #2
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _0803A440 @ =0xF000FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, #0x40
	ldr r1, [r0, #0x30]
	lsrs r2, r2, #0xa
	bics r1, r2
	movs r2, #8
	bics r1, r2
	movs r2, #0x10
	bics r1, r2
	movs r2, #0x20
	orrs r1, r2
	ldr r2, _0803A444 @ =0xFFFF803F
	ands r1, r2
	movs r2, #0x2d
	lsls r2, r2, #8
	adds r1, r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x30]
	adds r0, r4, #0
	b _0803A062

	non_word_aligned_thumb_func_start sub_803A0D2
sub_803A0D2: @ 0x0803A0D2
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803A420 @ =_0803E9B4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80306B4
	cmp r5, #0
	beq _0803A0EE
	adds r0, r4, #0
	bl sub_803DA18
_0803A0EE:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803A0F4
sub_803A0F4: @ 0x0803A0F4
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0xc0
	cmp r4, #0xf
	beq _0803A122
	cmp r4, #0x11
	beq _0803A134
	cmp r4, #0x12
	bne _0803A146
	ldr r0, [r3, #4]
	movs r3, #1
	lsls r3, r3, #0x10
	ldr r1, [r2, #0x30]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0xf
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
_0803A11C:
	pop {r4}
	pop {r3}
	bx r3
_0803A122:
	ldr r0, [r3, #4]
	ldr r1, [r2, #0x30]
	movs r3, #8
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1c
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0803A11C
_0803A134:
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #3
	lsls r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0803A11C
_0803A146:
	bl sub_8029420
	b _0803A11C

	thumb_func_start sub_803A14C
sub_803A14C: @ 0x0803A14C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	movs r3, #0xff
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r3, #0x2d
	adds r6, #0xa0
	movs r7, #0
	cmp r0, #0x37
	sub sp, #0x2c
	beq _0803A24E
	cmp r0, #0x38
	beq _0803A250
	cmp r0, #0x39
	bne _0803A252
	movs r1, #0
	movs r0, #0x17
	lsls r0, r0, #5
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	ldr r0, _0803A448 @ =0x000002E3
	movs r1, #0xff
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A44C @ =0x00010CD0
	movs r2, #0xf
	str r1, [r4, #0x70]
	str r7, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xf
	adds r1, r1, r2
	ldr r2, _0803A450 @ =0xFFFF007F
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	b _0803A254
_0803A24E:
	b _0803A2BE
_0803A250:
	b _0803A3A8
_0803A252:
	b _0803A258
_0803A254:
	bics r1, r0
	str r1, [r5, #0xc]
_0803A258:
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0x28]
	adds r0, #0x1e
	mov ip, r0
	lsls r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0, #0x20]
	ldrh r6, [r4, #0x26]
	str r6, [sp, #0x24]
	adds r6, #0x1e
	lsls r2, r6, #0x10
	str r2, [r0, #0x24]
	ldrh r3, [r4, #0x20]
	mov lr, r6
	adds r6, r3, #0
	subs r3, #0x1e
	str r3, [sp, #0x20]
	lsls r3, r3, #0x10
	str r3, [r0, #0x28]
	str r3, [sp, #0x1c]
	ldrh r5, [r4, #0x22]
	adds r7, r5, #0
	subs r5, #0x1e
	lsls r3, r5, #0x10
	str r3, [r0, #0x2c]
	ldr r0, [sp, #0x28]
	subs r0, r6, r0
	ldr r6, [sp, #0x24]
	subs r7, r7, r6
	movs r6, #0xf
	lsls r6, r6, #0x18
	cmp r0, r7
	ble _0803A380
	ldr r3, [sp, #0x1c]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r0, r0, r1
	str r0, [r4, #0x58]
	str r2, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	bics r0, r6
	str r0, [r4, #0x7c]
	mov r0, ip
	strh r0, [r4, #0x24]
	ldr r3, [sp, #0x20]
	strh r3, [r4, #0x20]
_0803A2B6:
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803A2BE:
	movs r1, #0
	movs r0, #0xff
	adds r0, #0xd9
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xdc
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A454 @ =0x00012668
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x10
	b _0803A382
_0803A380:
	b _0803A458
_0803A382:
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r2, _0803A450 @ =0xFFFF007F
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	bics r1, r0
	str r1, [r5, #0xc]
	b _0803A258
_0803A3A8:
	movs r1, #0
	movs r0, #0xff
	adds r0, #0x15
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x18
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r2, _0803A450 @ =0xFFFF007F
	movs r1, #0x19
	lsls r1, r1, #9
	ands r0, r2
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _0803A258
	.align 2, 0
_0803A420: .4byte _0803E9B4
_0803A424: .4byte sub_8041020
_0803A428: .4byte 0x6E616353
_0803A42C: .4byte 0x2072656E
_0803A430: .4byte 0x69726353
_0803A434: .4byte 0x47207470
_0803A438: .4byte 0x70756F72
_0803A43C: .4byte 0x00000000
_0803A440: .4byte 0xF000FFFF
_0803A444: .4byte 0xFFFF803F
_0803A448: .4byte 0x000002E3
_0803A44C: .4byte 0x00010CD0
_0803A450: .4byte 0xFFFF007F
_0803A454: .4byte 0x00012668
_0803A458:
	subs r0, r3, r2
	asrs r0, r0, #1
	adds r0, r0, r2
	str r0, [r4, #0x5c]
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	movs r1, #1
	bics r0, r6
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	mov r6, lr
	strh r6, [r4, #0x26]
	strh r5, [r4, #0x22]
	b _0803A2B6

	non_word_aligned_thumb_func_start sub_803A476
sub_803A476: @ 0x0803A476
	movs r1, #0
_0803A478:
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq _0803A486
	movs r0, #1
	bx lr
_0803A486:
	adds r1, #1
	cmp r1, #5
	blo _0803A478
	movs r0, #0
	bx lr

	thumb_func_start sub_803A490
sub_803A490: @ 0x0803A490
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0x2c]
	adds r5, r4, #0
	lsls r0, r0, #5
	lsrs r1, r0, #0x17
	adds r5, #0xc0
	ldr r0, [r5, #0x30]
	cmp r1, #0x38
	bne _0803A52C
	lsls r1, r0, #0xf
	bmi _0803A52C
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r1, #0xe0
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #5
	bhs _0803A4FA
	movs r0, #0
_0803A4C4:
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A4E0
	adds r0, #1
	cmp r0, #5
	blo _0803A4C4
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A4E0:
	ldr r1, [r5, #0x30]
	movs r2, #0x20
	lsls r0, r1, #0x1a
	asrs r0, r0, #0x1f
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1a
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x30]
_0803A4F4:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803A4FA:
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne _0803A4F4
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq _0803A4F4
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #4
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0803A4F4
_0803A52C:
	ldr r7, _0803A900 @ =0xFFFF803F
	adds r1, r0, #0
	subs r0, #0x40
	mvns r2, r7
	ands r0, r2
	ands r1, r7
	orrs r0, r1
	str r0, [r5, #0x30]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	bne _0803A56C
_0803A542:
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A55E
	adds r0, #1
	cmp r0, #5
	blo _0803A542
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A55E:
	ldr r0, [r5, #0x30]
	movs r1, #0x2d
	lsls r1, r1, #8
	ands r0, r7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _0803A4F4
_0803A56C:
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne _0803A4F4
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq _0803A4F4
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #0x10
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC @ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0803A4F4

	non_word_aligned_thumb_func_start sub_803A59E
sub_803A59E: @ 0x0803A59E
	adds r2, r0, #0
	adds r2, #0x80
	push {r4, r5, r6}
	ldr r1, [r2, #0x2c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	cmp r1, #0x38
	beq _0803A5F8
	ldr r1, [r0, #0x30]
	movs r3, #3
	ldrh r4, [r1, #0x2a]
	lsls r3, r3, #0xa
	movs r5, #0x7f
	bics r4, r3
	movs r3, #1
	lsls r3, r3, #0xa
	orrs r4, r3
	strh r4, [r1, #0x2a]
	strb r5, [r1, #5]
	ldr r5, [r1]
	movs r4, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt _0803A5D2
	orrs r5, r4
	str r5, [r1]
_0803A5D2:
	ldr r0, [r0, #0x2c]
	movs r1, #3
	ldrh r5, [r0, #0x2a]
	lsls r1, r1, #0xa
	bics r5, r1
	orrs r3, r5
	strh r3, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi _0803A5EE
	orrs r1, r4
	str r1, [r0]
_0803A5EE:
	movs r1, #1
	ldr r0, [r2, #0xc]
	lsls r1, r1, #0xe
	bics r0, r1
	str r0, [r2, #0xc]
_0803A5F8:
	pop {r4, r5, r6}
	bx lr

	thumb_func_start sub_803A5FC
sub_803A5FC: @ 0x0803A5FC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r6, #0xc0
	cmp r0, #0x39
	bne _0803A6F8
	movs r1, #0
	ldr r0, _0803A904 @ =gUnknown_03003EA0
	ldr r2, [r5, #0x1c]
	mvns r1, r1
	cmp r2, #0
	ldr r0, [r0]
	bne _0803A6BA
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A634
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A634:
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _0803A662
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A662
	bl sub_8000914
_0803A662:
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A67E
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A67E
	movs r3, #1
	b _0803A680
_0803A67E:
	movs r3, #0
_0803A680:
	cmp r2, r3
	beq _0803A698
	cmp r1, #2
	bne _0803A692
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A692
	movs r1, #1
	b _0803A694
_0803A692:
	movs r1, #0
_0803A694:
	bl sub_803F2CC
_0803A698:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0803A6B4
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A786
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b _0803A786
_0803A6B4:
	movs r0, #4
	str r0, [r5, #0x1c]
	b _0803A786
_0803A6BA:
	cmp r2, #9
	bne _0803A788
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A6D2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A6D2:
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq _0803A70A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	b _0803A6FA
_0803A6F8:
	b _0803A836
_0803A6FA:
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A70A
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0803A70A:
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A726
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A726
	movs r3, #1
	b _0803A728
_0803A726:
	movs r3, #0
_0803A728:
	cmp r2, r3
	beq _0803A754
	cmp r1, #2
	bne _0803A73A
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A73A
	movs r1, #1
	b _0803A73C
_0803A73A:
	movs r1, #0
_0803A73C:
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A754
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0803A754:
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A786
	ldr r1, [r5, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq _0803A78A
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	ldr r0, [r5, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r5, #0x14]
_0803A786:
	b _0803A834
_0803A788:
	b _0803A790
_0803A78A:
	movs r0, #4
	str r0, [r5, #0x1c]
	b _0803A834
_0803A790:
	cmp r2, #4
	bne _0803A834
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A7A8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A7A8:
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0803A7EA
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0803A7E6
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0803A908 @ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0803A7E6:
	movs r0, #0
	str r0, [r4, #0x78]
_0803A7EA:
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A806
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A806
	movs r3, #1
	b _0803A808
_0803A806:
	movs r3, #0
_0803A808:
	cmp r2, r3
	beq _0803A820
	cmp r1, #2
	bne _0803A81A
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A81A
	movs r1, #1
	b _0803A81C
_0803A81A:
	movs r1, #0
_0803A81C:
	bl sub_803F2CC
_0803A820:
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bpl _0803A834
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A834
	bl sub_803FC14
_0803A834:
	b _0803A83C
_0803A836:
	adds r0, r4, #0
	bl sub_801EBCA
_0803A83C:
	ldr r1, _0803A90C @ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _0803A858
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl _0803A858
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A858:
	ldr r0, [r5, #0x1c]
	cmp r0, #9
	bne _0803A942
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0xf
	bpl _0803A942
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A944
	lsls r0, r0, #5
	adds r7, r4, #0
	adds r7, #0x90
	lsrs r0, r0, #0x17
	cmp r0, #0x37
	ldr r1, _0803A910 @ =gUnknown_0300346C
	beq _0803A914
	cmp r0, #0x38
	beq _0803A96C
	cmp r0, #0x39
	bne _0803A944
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl _0803A8A4
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
_0803A8A4:
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq _0803A8C6
	ldr r0, [sp]
	bl sub_8037E48
_0803A8C6:
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl _0803A9DA
	adds r3, #4
	b _0803A9E6
	.align 2, 0
_0803A8FC: .4byte gUnknown_03003454
_0803A900: .4byte 0xFFFF803F
_0803A904: .4byte gUnknown_03003EA0
_0803A908: .4byte gUnknown_03003EB8
_0803A90C: .4byte gUnknown_03003478
_0803A910: .4byte gUnknown_0300346C
_0803A914:
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl _0803A92E
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
_0803A92E:
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	b _0803A946
_0803A942:
	b _0803AAC0
_0803A944:
	b _0803AAB6
_0803A946:
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq _0803A956
	ldr r0, [sp]
	bl sub_8037E48
_0803A956:
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0803A96E
_0803A96C:
	b _0803AA2E
_0803A96E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl _0803A98E
	adds r3, #4
	b _0803A994
_0803A98E:
	cmp r3, #4
	blt _0803A994
	subs r3, #4
_0803A994:
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	b _0803A9DC
_0803A9DA:
	b _0803A9E0
_0803A9DC:
	str r0, [r4, #0x7c]
	b _0803AAB6
_0803A9E0:
	cmp r3, #4
	blt _0803A9E6
	subs r3, #4
_0803A9E6:
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	str r0, [r4, #0x7c]
	b _0803AAB6
_0803AA2E:
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq _0803AA4E
	adds r0, r6, #0
	bl sub_8037E48
_0803AA4E:
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	lsls r1, r1, #4
	ldr r2, [r0]
	ldr r3, [r2, #4]
	adds r6, r3, r2
	lsrs r3, r1, #0x1c
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 @ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	str r0, [r4, #0x7c]
_0803AAB6:
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_0803AAC0:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803AAC6
sub_803AAC6: @ 0x0803AAC6
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_803AAE2
sub_803AAE2: @ 0x0803AAE2
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802B054
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x38
	beq _0803AB6C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r3, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r5, #0x7f
	bics r3, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r3, r2
	strh r3, [r0, #0x2a]
	strb r5, [r0, #5]
	ldr r5, [r0]
	movs r3, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt _0803AB1C
	orrs r5, r3
	str r5, [r0]
_0803AB1C:
	ldr r0, [r4, #0x2c]
	movs r5, #3
	ldrh r6, [r0, #0x2a]
	lsls r5, r5, #0xa
	bics r6, r5
	orrs r2, r6
	strh r2, [r0, #0x2a]
	movs r5, #0x60
	strb r5, [r0, #5]
	ldr r2, [r0]
	lsls r5, r2, #0x16
	bmi _0803AB38
	orrs r2, r3
	str r2, [r0]
_0803AB38:
	movs r2, #1
	ldr r0, [r1, #0xc]
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
	ldr r5, [r4, #0x30]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0803AB56
	ldr r0, _0803AB7C @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803AB56:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
_0803AB6C:
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_58
nullsub_58: @ 0x0803AB72
	bx lr

	thumb_func_start nullsub_59
nullsub_59: @ 0x0803AB74
	bx lr
	.align 2, 0
_0803AB78: .4byte gUnknown_03003458
_0803AB7C: .4byte gUnknown_03003EB8

	thumb_func_start sub_803AB80
sub_803AB80: @ 0x0803AB80
	push {r4, lr}
	adds r4, r0, #0
	bne _0803AB98
	movs r0, #0x40
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0803AB98
	adds r0, r4, #0
_0803AB92:
	pop {r4}
	pop {r3}
	bx r3
_0803AB98:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0803AE48 @ =_0803ED4C
	str r0, [r4]
	adds r0, r4, #0
	b _0803AB92

	non_word_aligned_thumb_func_start sub_803ABA6
sub_803ABA6: @ 0x0803ABA6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803AE48 @ =_0803ED4C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0803ABC2
	adds r0, r4, #0
	bl sub_803DA18
_0803ABC2:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803ABC8
sub_803ABC8: @ 0x0803ABC8
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	movs r1, #0xff
	lsls r1, r1, #0xb
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x10
	adds r6, r3, #0
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _0803AE4C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldr r5, [r0, #0x58]
	ldr r0, _0803AE50 @ =gUnknown_03003450
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	movs r3, #0xf
	lsls r3, r3, #0x13
	subs r2, r5, r1
	cmp r2, r3
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x34]
	ble _0803AC1E
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x60
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	b _0803AC2E
_0803AC1E:
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x10
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
_0803AC2E:
	ldr r0, [r4, #0x34]
	lsls r1, r6, #0x18
	lsrs r0, r0, #8
	lsls r0, r0, #8
	lsrs r1, r1, #0x18
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0803AE54 @ =gUnknown_030033C0
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	movs r2, #0x3c
	ldr r6, _0803AE58 @ =gUnknown_03003EB8
	str r1, [r4, #0x38]
	movs r1, #4
	strb r1, [r2, r4]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #1
	lsls r0, r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r5
	ldr r5, [r0, #0x34]
	adds r1, #0x34
	adds r5, r5, r3
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r2
	str r5, [r1, #4]
	ldr r5, [r1, #8]
	adds r3, r5, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	orrs r1, r7
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0803ACCC
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_80012F0
_0803ACCC:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0803ACFE
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0803ACFE:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r5, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803AD3A
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803AD2C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803AD2C
	ldr r0, _0803AE5C @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803AD2C:
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803AD3A
	orrs r0, r7
	str r0, [r4]
_0803AD3A:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803AD40
sub_803AD40: @ 0x0803AD40
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r6, r4, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	movs r7, #0
	cmp r0, #0
	beq _0803ADBA
	cmp r0, #1
	beq _0803ADBA
	cmp r0, #2
	bne _0803ADB4
	ldr r0, _0803AE5C @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq _0803AD74
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803AD74:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xff
	subs r0, #0x8b
	ldr r0, [r4, #4]
	beq _0803AE2E
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x8b
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0803AD9C
	ldr r0, _0803AE58 @ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803AD9C:
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803ADB4
	bl sub_8000914
_0803ADB4:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803ADBA:
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, [r4]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _0803ADF2
	cmp r1, #0
	beq _0803ADB4
	ldr r0, _0803AE58 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803ADB4
_0803ADF2:
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x2c]
	ldr r5, [r1, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r0, r1, #0
	subs r2, r2, r5
	ldr r5, [r1, #0x34]
	adds r0, #0x34
	adds r5, r5, r3
	str r5, [r1, #0x34]
	ldr r5, [r1, #0x38]
	adds r4, #0x1c
	adds r5, r5, r2
	str r5, [r0, #4]
	ldr r5, [r0, #8]
	adds r3, r5, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldm r4!, {r2, r3}
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b _0803ADB4
_0803AE2E:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803ADB4
	cmp r0, #0
	beq _0803ADB4
	ldr r0, _0803AE58 @ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803ADB4
	.align 2, 0
_0803AE48: .4byte _0803ED4C
_0803AE4C: .4byte gUnknown_03003458
_0803AE50: .4byte gUnknown_03003450
_0803AE54: .4byte gUnknown_030033C0
_0803AE58: .4byte gUnknown_03003EB8
_0803AE5C: .4byte gUnknown_03003EA0

	thumb_func_start sub_803AE60
sub_803AE60: @ 0x0803AE60
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_803AE68
sub_803AE68: @ 0x0803AE68
	push {r4, lr}
	adds r4, r0, #0
	bne _0803AE80
	movs r0, #0x44
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0803AE80
	adds r0, r4, #0
_0803AE7A:
	pop {r4}
	pop {r3}
	bx r3
_0803AE80:
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0803B138 @ =_0803EDC4
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	b _0803AE7A

	non_word_aligned_thumb_func_start sub_803AE92
sub_803AE92: @ 0x0803AE92
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803B138 @ =_0803EDC4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0803AEAE
	adds r0, r4, #0
	bl sub_803DA18
_0803AEAE:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803AEB4
sub_803AEB4: @ 0x0803AEB4
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	movs r5, #2
	cmp r0, #0
	bne _0803AEE4
	ldr r0, _0803B13C @ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	str r0, [r4, #0x3c]
	movs r0, #0x9d
	str r0, [r4, #0x38]
	movs r0, #0x40
	strb r5, [r0, r4]
_0803AEE4:
	ldr r1, [r4, #0x3c]
	ldr r6, _0803B140 @ =gUnknown_03003EB8
	ldr r1, [r1, #0x2c]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r0, [r4, #0x3c]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	orrs r1, r5
	movs r5, #0xff
	adds r5, #1
	bics r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r7, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r7
	ldr r7, [r0, #0x34]
	adds r1, #0x34
	adds r7, r7, r3
	str r7, [r0, #0x34]
	ldr r7, [r0, #0x38]
	adds r7, r7, r2
	str r7, [r1, #4]
	ldr r7, [r1, #8]
	adds r3, r7, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	movs r3, #3
	orrs r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0803AF8A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0803AF8A:
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r7, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803AFC6
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803AFB8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803AFB8
	ldr r0, _0803B144 @ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803AFB8:
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803AFC6
	orrs r0, r5
	str r0, [r4]
_0803AFC6:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803AFCC
sub_803AFCC: @ 0x0803AFCC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #7
	lsls r0, r0, #0x15
	lsrs r1, r0, #0x1d
	lsls r5, r5, #8
	movs r6, #0
	cmp r1, #0
	ldr r0, [r4, #4]
	beq _0803B008
	cmp r1, #1
	beq _0803B02C
	cmp r1, #2
	bne _0803B0B4
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	cmp r0, #0
	beq _0803B002
	ldr r0, _0803B140 @ =gUnknown_03003EB8
	adds r1, r4, #4
	ldr r0, [r0]
	bl sub_8000DE6
	str r6, [r4, #4]
_0803B002:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803B008:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	bics r0, r5
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0803B0B4
_0803B02C:
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r1]
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	bne _0803B070
	ldr r1, [r4, #0x38]
	adds r1, #2
	bl sub_80007A0
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r5
	adds r0, r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	bne _0803B070
	ldr r0, [r4, #0x3c]
	movs r3, #4
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x10]
	bl sub_803B8D2
_0803B070:
	ldr r0, _0803B144 @ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl sub_803B998
	add r2, pc, #0xB0 @ =_0803B148
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
_0803B0B4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0803B002
	ldr r1, [r4, #0x3c]
	movs r2, #3
	ldr r3, [r1, #0x2c]
	lsls r2, r2, #0x11
	mov ip, r3
	ldr r3, [r1, #0x30]
	adds r1, r0, #0
	adds r0, r3, #0
	adds r0, #0x2c
	ldr r0, [r0, #4]
	ldr r3, [r3, #0x2c]
	adds r5, r0, r2
	ldr r2, [r1, #0x2c]
	ldr r6, [r1, #0x34]
	subs r7, r3, r2
	ldr r2, [r1, #0x30]
	adds r6, r6, r7
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	subs r2, r5, r2
	adds r6, r6, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r6, r6, r7
	str r6, [r0, #8]
	ldr r6, [r0, #0xc]
	adds r2, r6, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r5, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r2, r0
	str r2, [r1]
	mov r3, ip
	ldrb r0, [r3, #5]
	ldr r2, [r4, #4]
	ldrb r3, [r2, #5]
	subs r0, #2
	adds r1, r0, #0
	cmp r0, r3
	bne _0803B116
_0803B114:
	b _0803B002
_0803B116:
	ldrh r0, [r2, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r0, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r0, r3
	strh r0, [r2, #0x2a]
	strb r1, [r2, #5]
	ldr r0, [r2]
	lsls r1, r0, #0x16
	bmi _0803B114
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b _0803B002
	.align 2, 0
_0803B138: .4byte _0803EDC4
_0803B13C: .4byte gUnknown_03003458
_0803B140: .4byte gUnknown_03003EB8
_0803B144: .4byte gUnknown_03003EA0
_0803B148: .4byte 0x0010BE20
_0803B14C: .4byte 0x00000000

	thumb_func_start sub_803B150
sub_803B150: @ 0x0803B150
	push {r3, lr}
	bl sub_802E47A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_803B15C
sub_803B15C: @ 0x0803B15C
	push {r4, lr}
	adds r4, r0, #0
	bne _0803B174
	ldr r0, _0803B300 @ =0x0000172C
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0803B174
	adds r0, r4, #0
_0803B16E:
	pop {r4}
	pop {r3}
	bx r3
_0803B174:
	movs r1, #0
	adds r0, r4, #0
	bl sub_8010574
	ldr r0, _0803B304 @ =_0803EC7C
	str r0, [r4]
	adds r0, r4, #0
	b _0803B16E

	thumb_func_start sub_803B184
sub_803B184: @ 0x0803B184
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803B304 @ =_0803EC7C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80105AE
	cmp r5, #0
	beq _0803B1A0
	adds r0, r4, #0
	bl sub_803DA18
_0803B1A0:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_60
nullsub_60: @ 0x0803B1A6
	bx lr

	thumb_func_start sub_803B1A8
sub_803B1A8: @ 0x0803B1A8
	movs r0, #0
	bx lr

	thumb_func_start nullsub_61
nullsub_61: @ 0x0803B1AC
	bx lr

	non_word_aligned_thumb_func_start sub_803B1AE
sub_803B1AE: @ 0x0803B1AE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803B308 @ =gUnknown_03003E84
	movs r7, #0
	adds r6, r1, #0
	adds r3, r7, #0
	movs r2, #0xc
	sub sp, #0x14
	ldr r0, [r0]
	bl sub_800529A
	adds r5, r0, #0
	ldr r0, [r0]
	ldr r2, _0803B30C @ =0xFFC00FFF
	ldr r1, [r4, #0xc]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0xa
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r5]
	lsls r1, r1, #0xa
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x16
	lsrs r1, r1, #0xa
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_802F04E
	adds r1, r4, #0
	adds r1, #0x50
	str r1, [sp, #0x10]
	strb r7, [r1, #4]
	movs r1, #0x19
	lsls r1, r1, #6
	adds r5, r5, r0
	adds r0, r6, r0
	adds r1, r4, r1
	str r0, [r1, #0xc]
	movs r0, #3
	lsls r0, r0, #9
	ldm r5!, {r1, r2}
	subs r5, #8
	adds r0, r4, r0
	adds r0, #0x50
	stm r0!, {r1, r2}
	ldr r0, _0803B310 @ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	bl sub_80081A8
	ldr r6, [r5]
	ldr r1, _0803B314 @ =gUnknown_0804AE80
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1c
	ldr r7, [r4, #0xc]
	adds r5, r0, r1
	lsls r0, r7, #0xa
	lsrs r1, r0, #0x16
	ldrb r0, [r5]
	bl sub_803C124
	str r0, [sp, #0xc]
	ldrb r0, [r5, #1]
	lsrs r1, r7, #0x16
	bl sub_803C124
	ldr r1, [sp, #0xc]
	movs r7, #1
	muls r1, r0, r1
	adds r0, r7, #0
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x16
	lsls r3, r0, #8
	cmp r2, r3
	bhi _0803B258
	movs r0, #0
_0803B258:
	movs r2, #0x84
	str r0, [r2, r4]
	movs r2, #0
	movs r3, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x78]
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r0, r7, #0
	adds r7, r4, r1
	str r0, [r7, #0x34]
	adds r0, r4, #0
	bl sub_8010B8A
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	movs r1, #0x6d
	lsls r1, r1, #4
	str r0, [r7, #0x24]
	movs r0, #1
	adds r6, r4, r1
	strb r0, [r6, #0xc]
	movs r3, #0
	strb r3, [r6, #0xe]
_0803B296:
	adds r0, r4, #0
	bl sub_8010D60
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0803B296
	ldrb r1, [r6, #0xe]
	ldr r0, [r7, #0x24]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #4]
	movs r1, #0x65
	lsls r1, r1, #4
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, #0xc0
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	adds r2, r4, r1
	str r0, [sp]
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x16
	movs r1, #0xd3
	lsls r1, r1, #2
	movs r0, #0x17
	lsls r0, r0, #8
	adds r1, r4, r1
	str r2, [sp, #8]
	str r1, [sp, #4]
	adds r0, r4, r0
	ldr r1, [r0, #0x14]
	adds r2, r5, #0
	adds r0, r6, #0
	bl sub_803E210
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803B300: .4byte 0x0000172C
_0803B304: .4byte _0803EC7C
_0803B308: .4byte gUnknown_03003E84
_0803B30C: .4byte 0xFFC00FFF
_0803B310: .4byte gUnknown_03003E98
_0803B314: .4byte gUnknown_0804AE80

	thumb_func_start sub_803B318
sub_803B318: @ 0x0803B318
	push {r4, lr}
	adds r4, r0, #0
	bl _080180BE
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r0, #0
	bl sub_80050FA
	movs r0, #2
	bl sub_8018386
	bl sub_800B1D0
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803B342
sub_803B342: @ 0x0803B342
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0xc
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	add r0, pc, #0x160 @ =_0803B4B8
	bl sub_800EF60
	ldr r0, _0803B4C8 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	movs r1, #1
	adds r0, r4, #0
	bl sub_8014B02
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x2c]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r2, r2, r1
	movs r1, #0
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	movs r2, #0x14
	movs r1, #0x3c
	bl sub_803B8CE
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x78
	movs r1, #0x78
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	movs r1, #4
	bl sub_803B8D2
	adds r0, r4, #0
	bl sub_8013B76
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r1, #0
	movs r2, #1
	str r2, [sp, #8]
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #6
	movs r2, #4
	movs r3, #3
	adds r0, r4, #0
	bl sub_8013C40
	bl sub_8018070
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803B406
sub_803B406: @ 0x0803B406
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_80143E0
	movs r4, #0
	adds r0, r5, #0
	bl sub_803B342
	adds r0, r5, #0
	adds r0, #0x20
	str r0, [sp, #0x80]
	movs r6, #0
	b _0803B428
_0803B424:
	cmp r4, #0
	bne _0803B466
_0803B428:
	ldr r0, [sp, #0x80]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0803B464
	movs r2, #0
	ldr r0, [sp, #8]
	str r2, [sp]
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	movs r2, #0x40
	adds r4, r0, r1
	movs r1, #4
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803B8D0
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _0803B4CC @ =0x000004DC
	bl sub_80138E2
	movs r2, #0
	movs r1, #0xa
	adds r0, r5, #0
	str r2, [sp]
	ldr r3, _0803B4D0 @ =0x0000FFFF
	bl sub_8013B9C
	movs r4, #1
_0803B464:
	ldr r7, _0803B4D4 @ =gUnknown_03003444
_0803B466:
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	bl sub_800EF2A
	cmp r4, #0
	beq _0803B424
	ldr r0, [r7]
	adds r1, r6, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0803B482
	ldrh r1, [r0, #6]
_0803B482:
	lsls r0, r1, #0x10
	beq _0803B424
	bl _080180BE
	ldr r1, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r1, #4]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	bl sub_803B8CA
	movs r0, #0
	bl sub_80050FA
	movs r0, #2
	bl sub_8018386
	bl sub_800B1D0
	movs r1, #0
	add r0, sp, #8
	bl sub_8014436
	add sp, #0x84
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803B4B8: .4byte 0x654D6742
_0803B4BC: .4byte 0x7243756E
_0803B4C0: .4byte 0x74696465
_0803B4C4: .4byte 0x00000073
_0803B4C8: .4byte gUnknown_03003468
_0803B4CC: .4byte 0x000004DC
_0803B4D0: .4byte 0x0000FFFF
_0803B4D4: .4byte gUnknown_03003444

	thumb_func_start sub_803B4D8
sub_803B4D8: @ 0x0803B4D8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _0803B4F4
	ldr r1, _0803B4EC @ =gUnknown_03003EC0
	ldr r0, _0803B4F0 @ =gUnknown_08051744
	str r0, [r1]
	b _0803B510
	.align 2, 0
_0803B4EC: .4byte gUnknown_03003EC0
_0803B4F0: .4byte gUnknown_08051744
_0803B4F4:
	cmp r0, #0x40
	bne _0803B508
	ldr r1, _0803B500 @ =gUnknown_03003EC0
	ldr r0, _0803B504 @ =gUnknown_08051750
	str r0, [r1]
	b _0803B510
	.align 2, 0
_0803B500: .4byte gUnknown_03003EC0
_0803B504: .4byte gUnknown_08051750
_0803B508:
	ldr r1, _0803B518 @ =gUnknown_03003EC0
	ldr r0, _0803B51C @ =gUnknown_08051744
	str r0, [r1]
	movs r2, #1
_0803B510:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B518: .4byte gUnknown_03003EC0
_0803B51C: .4byte gUnknown_08051744

	thumb_func_start sub_803B520
sub_803B520: @ 0x0803B520
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _0803B580 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _0803B584 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _0803B588 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _0803B58C @ =gUnknown_03003EC0
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _0803B590 @ =0x040000D4
	str r0, [r3]
	ldr r0, _0803B594 @ =0x040000D8
	str r1, [r0]
	ldr r1, _0803B598 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0803B574
	ldr r2, _0803B59C @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_0803B56C:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0803B56C
_0803B574:
	ldr r0, _0803B580 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B580: .4byte 0x04000208
_0803B584: .4byte 0x04000204
_0803B588: .4byte 0x0000F8FF
_0803B58C: .4byte gUnknown_03003EC0
_0803B590: .4byte 0x040000D4
_0803B594: .4byte 0x040000D8
_0803B598: .4byte 0x040000DC
_0803B59C: .4byte 0x040000DE

	thumb_func_start sub_803B5A0
sub_803B5A0: @ 0x0803B5A0
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803B5B8 @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _0803B5C0
	ldr r0, _0803B5BC @ =0x000080FF
	b _0803B642
	.align 2, 0
_0803B5B8: .4byte gUnknown_03003EC0
_0803B5BC: .4byte 0x000080FF
_0803B5C0:
	ldr r0, _0803B64C @ =gUnknown_03003EC0
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _0803B5EA
_0803B5D6:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0803B5D6
_0803B5EA:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0803B64C @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl sub_803B520
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl sub_803B520
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_0803B618:
	movs r1, #0
	movs r3, #0
_0803B61C:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0803B61C
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803B618
	movs r0, #0
_0803B642:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803B64C: .4byte gUnknown_03003EC0

	thumb_func_start sub_803B650
sub_803B650: @ 0x0803B650
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl sub_803B664
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_803B664
sub_803B664: @ 0x0803B664
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _0803B680 @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0803B688
	ldr r0, _0803B684 @ =0x000080FF
	b _0803B7BC
	.align 2, 0
_0803B680: .4byte gUnknown_03003EC0
_0803B684: .4byte 0x000080FF
_0803B688:
	ldr r0, _0803B6C8 @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
_0803B69E:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0803B6A4:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0803B6A4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803B69E
	movs r4, #0
	ldr r0, _0803B6C8 @ =gUnknown_03003EC0
	adds r2, r0, #0
	ldr r0, [r0]
	b _0803B6DA
	.align 2, 0
_0803B6C8: .4byte gUnknown_03003EC0
_0803B6CC:
	strh r1, [r3]
	subs r3, #2
	lsrs r1, r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2]
_0803B6DA:
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0803B6CC
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0803B74C @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl sub_803B520
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _0803B750 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803B720
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _0803B7B0
_0803B720:
	add r3, sp, #0xa8
	ldr r0, _0803B750 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0803B79A
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _0803B754
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _0803B76A
	.align 2, 0
_0803B74C: .4byte gUnknown_03003EC0
_0803B750: .4byte 0x04000006
_0803B754:
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0803B76A:
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _0803B790
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803B7BA
	movs r0, #0xd0
	lsls r0, r0, #0x14
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803B7BA
	ldr r5, _0803B78C @ =0x0000C001
	b _0803B7BA
	.align 2, 0
_0803B78C: .4byte 0x0000C001
_0803B790:
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_0803B79A:
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803B720
	movs r0, #0xd0
	lsls r0, r0, #0x14
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0803B720
_0803B7B0:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	cmp r7, #0
	bne _0803B720
_0803B7BA:
	adds r0, r5, #0
_0803B7BC:
	add sp, #0xb0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803B7C4
sub_803B7C4: @ 0x0803B7C4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _0803B7E0 @ =gUnknown_03003EC0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0803B7E8
	ldr r0, _0803B7E4 @ =0x000080FF
	b _0803B812
	.align 2, 0
_0803B7E0: .4byte gUnknown_03003EC0
_0803B7E4: .4byte 0x000080FF
_0803B7E8:
	adds r0, r1, #0
	mov r1, sp
	bl sub_803B5A0
	mov r2, sp
	movs r3, #0
	b _0803B800
_0803B7F6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0803B810
_0803B800:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0803B7F6
	movs r5, #0x80
	lsls r5, r5, #8
_0803B810:
	adds r0, r5, #0
_0803B812:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_803B81C
sub_803B81C: @ 0x0803B81C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0803B82E
_0803B828:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B82E:
	cmp r6, #2
	bhi _0803B852
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B650
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803B828
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B7C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803B828
_0803B852:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_62
nullsub_62: @ 0x0803B85C
	bx lr

	non_word_aligned_thumb_func_start nullsub_63
nullsub_63: @ 0x0803B85E
	bx lr

	thumb_func_start sub_803B860
sub_803B860: @ 0x0803B860
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0x44
	str r0, [sp, #0x3c]
	ldr r0, _0803B89C @ =0x0000156F
	add r1, sp, #0x58
	str r1, [sp, #0x38]
	add r0, pc
	str r0, [sp, #0x20]
	ldr r0, _0803B8A0 @ =0x00001577
	add r0, pc
	str r0, [sp, #0x24]
	add r5, sp, #0x3c
	adds r0, r5, #0
	add r3, sp, #4
	add r2, sp, #0x38
	ldr r1, [sp, #0x54]
	bl sub_803C4B4
	adds r4, r0, #0
	adds r1, r5, #0
	movs r0, #0
	bl sub_803CDE0
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_0803B89C: .4byte 0x0000156F
_0803B8A0: .4byte 0x00001577

	thumb_func_start sub_803B8A4
sub_803B8A4: @ 0x0803B8A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_803CF48
	ldr r5, [r0]
	adds r4, r0, #0
	movs r2, #0xa
	movs r1, #0
	adds r0, r6, #0
	bl sub_803CF5C
	adds r1, r0, #0
	str r5, [r4]
	pop {r4, r5, r6}
	pop {r3}
	adds r0, r1, #0
	bx r3
	.align 2, 0

	thumb_func_start sub_803B8C8
sub_803B8C8: @ 0x0803B8C8
	bx r0

	non_word_aligned_thumb_func_start sub_803B8CA
sub_803B8CA: @ 0x0803B8CA
	bx r1

	thumb_func_start sub_803B8CC
sub_803B8CC: @ 0x0803B8CC
	bx r2

	non_word_aligned_thumb_func_start sub_803B8CE
sub_803B8CE: @ 0x0803B8CE
	bx r3

	thumb_func_start sub_803B8D0
sub_803B8D0: @ 0x0803B8D0
	bx r4

	non_word_aligned_thumb_func_start sub_803B8D2
sub_803B8D2: @ 0x0803B8D2
	bx r5

	thumb_func_start sub_803B8D4
sub_803B8D4: @ 0x0803B8D4
	bx r6

	non_word_aligned_thumb_func_start sub_803B8D6
sub_803B8D6: @ 0x0803B8D6
	bx r7

	thumb_func_start sub_803B8D8
sub_803B8D8: @ 0x0803B8D8
	push {r3, r4, r5, lr}
	ldr r4, _0803B8FC @ =0x00001BC4
	add r4, pc
	ldr r5, _0803B900 @ =0x00001BC4
	add r5, pc
	cmp r4, r5
	beq _0803B8F4
_0803B8E6:
	ldr r0, [r4]
	adds r0, r0, r4
	bl sub_803B8C8
	adds r4, #4
	cmp r4, r5
	bne _0803B8E6
_0803B8F4:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0803B8FC: .4byte 0x00001BC4
_0803B900: .4byte 0x00001BC4

	thumb_func_start sub_803B904
sub_803B904: @ 0x0803B904
	bx pc
	.align 2, 0

	arm_func_start sub_803B908
sub_803B908: @ 0x0803B908
	ldr r0, _0803B910 @ =gUnknown_03003D38
	bx lr
	.align 2, 0
_0803B910: .4byte gUnknown_03003D38

	thumb_func_start sub_803B914
sub_803B914: @ 0x0803B914
	bx pc
	.align 2, 0

	arm_func_start sub_803B918
sub_803B918: @ 0x0803B918
	asr r3, r2, #0x20
	b sub_0803CE48

	thumb_func_start sub_803B920
sub_803B920: @ 0x0803B920
	bx pc
	.align 2, 0

	arm_func_start sub_803B924
sub_803B924: @ 0x0803B924
	mov r3, #0
	b sub_0803CE48

	thumb_func_start sub_803B92C
sub_803B92C: @ 0x0803B92C
	bx pc
	.align 2, 0

	arm_func_start sub_803B930
sub_803B930: @ 0x0803B930
	asr r3, r1, #0x1f
	mov r2, r1
	asr r1, r0, #0x1f
	b sub_0803CE48

	thumb_func_start sub_803B940
sub_803B940: @ 0x0803B940
	bx pc
	.align 2, 0

	arm_func_start sub_803B944
sub_803B944: @ 0x0803B944
	push {r4, lr}
	asrs r4, r1, #1
	eor r4, r4, r3, lsr #1
	bpl _0803B95C
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B95C:
	tst r3, r3
	bpl _0803B96C
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B96C:
	bl sub_803BA28
	tst r4, #0x40000000
	beq _0803B980
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B980:
	tst r4, #-0x80000000
	beq _0803B990
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B990:
	pop {r4, lr}
	bx lr

	thumb_func_start sub_803B998
sub_803B998: @ 0x0803B998
	bx pc
	.align 2, 0

	arm_func_start sub_803B99C
sub_803B99C: @ 0x0803B99C
	subs r3, r2, #0x20
	bpl _0803B9B8
	rsb r3, r2, #0x20
	lsl r1, r1, r2
	orr r1, r1, r0, lsr r3
	lsl r0, r0, r2
	bx lr
_0803B9B8:
	lsl r1, r0, r3
	mov r0, #0
	bx lr

	thumb_func_start sub_803B9C4
sub_803B9C4: @ 0x0803B9C4
	bx pc
	.align 2, 0

	arm_func_start sub_803B9C8
sub_803B9C8: @ 0x0803B9C8
	push {r4, lr}
	asrs r4, r3, #1
	eor r4, r4, r1, lsr #1
	bpl _0803B9E0
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803B9E0:
	tst r1, r1
	bpl _0803B9F0
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803B9F0:
	bl sub_803CE68
	tst r4, #0x40000000
	beq _0803BA04
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0803BA04:
	tst r4, #-0x80000000
	beq _0803BA14
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0803BA14:
	pop {r4, lr}
	bx lr

	thumb_func_start j_nullsub_7
j_nullsub_7: @ 0x0803BA1C
	bx pc
	.align 2, 0

	arm_func_start nullsub_7
nullsub_7: @ 0x0803BA20
	bx lr

	thumb_func_start sub_803BA24
sub_803BA24: @ 0x0803BA24
	bx pc
	.align 2, 0

	arm_func_start sub_803BA28
sub_803BA28: @ 0x0803BA28
	push {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	mov r6, #0
	orrs ip, r3, r2, lsr #31
	bne _0803BA88
	tst r2, r2
	beq _0803BD7C
	lsrs ip, r2, #0xf
	addeq r6, r6, #0x10
	lsl ip, r2, r6
	lsrs lr, ip, #0x17
	lsleq ip, ip, #8
	addeq r6, r6, #8
	lsrs lr, ip, #0x1b
	lsleq ip, ip, #4
	addeq r6, r6, #4
	lsrs lr, ip, #0x1d
	lsleq ip, ip, #2
	addeq r6, r6, #2
	lsrs lr, ip, #0x1e
	lsleq ip, ip, #1
	addeq r6, r6, #1
	b _0803BAE8
_0803BA88:
	tst r3, #-0x80000000
	bne _0803BADC
	lsrs ip, r3, #0xf
	addeq r6, r6, #0x10
	lsl ip, r3, r6
	lsrs lr, ip, #0x17
	lsleq ip, ip, #8
	addeq r6, r6, #8
	lsrs lr, ip, #0x1b
	lsleq ip, ip, #4
	addeq r6, r6, #4
	lsrs lr, ip, #0x1d
	lsleq ip, ip, #2
	addeq r6, r6, #2
	lsrs lr, ip, #0x1e
	lsleq ip, ip, #1
	addeq r6, r6, #1
	rsb r3, r6, #0x20
	orr ip, ip, r2, lsr r3
	lsl lr, r2, r6
	b _0803BC10
_0803BADC:
	mov ip, r3
	mov lr, r2
	b _0803BD5C
_0803BAE8:
	mov r3, #0
	cmp r4, ip, lsl #1
	subhs r4, r4, ip, lsl #1
	addhs r3, r3, #2
	cmp r4, ip
	subhs r4, r4, ip
	adcs r3, r3, #0
	rsb ip, ip, #0
	add r2, r6, #0x20
	cmp r2, #0x20
	blo _0803BB24
	orrs r0, r4, r5, lsr #30
	moveq r4, r5
	moveq r5, #0
	subeq r2, r2, #0x20
_0803BB24:
	mov r1, #0
	cmp r2, #0x10
	blo _0803BB3C
	lsrs r0, r4, #0xe
	lsleq r4, r4, #0x10
	addeq r1, r1, #0x10
_0803BB3C:
	sub lr, r2, r1
	cmp lr, #8
	blo _0803BB54
	lsrs r0, r4, #0x16
	lsleq r4, r4, #8
	addeq r1, r1, #8
_0803BB54:
	rsb r0, r1, #0x20
	orr r4, r4, r5, lsr r0
	lsl r5, r5, r1
	sub r2, r2, r1
	cmp r2, #1
	blo _0803BBF0
	sub r2, r2, #1
	and r0, r2, #7
	eor r0, r0, #7
	adds r0, r0, r0, lsl #1
	add pc, pc, r0, lsl #2
	mov r0, r0
_0803BB84:
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	adcs r5, r5, r5
	adcs r4, ip, r4, lsl #1
	rsblo r4, ip, r4
	sub r2, r2, #8
	tst r2, r2
	bpl _0803BB84
_0803BBF0:
	lsr r2, r4, r6
	bic r4, r4, r2, lsl r6
	adcs r0, r5, r5
	adc r1, r4, r4
	add r1, r1, r3, lsl r6
	mov r3, #0
	pop {r4, r5, r6, lr}
	bx lr
_0803BC10:
	mov r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	subs r0, r5, lr
	sbcs r1, r4, ip
	movhs r5, r0
	movhs r4, r1
	adcs r3, r3, #0
	rsbs lr, lr, #0
	rsc ip, ip, #0
	mov r1, #0
	cmp r6, #0x10
	blo _0803BC70
	lsrs r0, r4, #0xe
	lsleq r4, r4, #0x10
	addeq r1, r1, #0x10
_0803BC70:
	sub r2, r6, r1
	cmp r2, #8
	blo _0803BC88
	lsrs r0, r4, #0x16
	lsleq r4, r4, #8
	addeq r1, r1, #8
_0803BC88:
	rsb r0, r1, #0x20
	orr r4, r4, r5, lsr r0
	lsl r5, r5, r1
	sub r2, r6, r1
	cmp r2, #1
	blo _0803BD24
	sub r2, r2, #1
	and r0, r2, #3
	rsb r0, r0, #3
	adds r0, r0, r0, lsl #1
	add pc, pc, r0, lsl #3
	mov r0, r0
_0803BCB8:
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	adcs r5, r5, r5
	adcs r4, r4, r4
	adcs r0, lr, r5
	adcs r1, ip, r4
	movhs r5, r0
	movhs r4, r1
	sub r2, r2, #4
	tst r2, r2
	bpl _0803BCB8
_0803BD24:
	lsr r2, r5, r6
	bic r5, r5, r2, lsl r6
	mov r1, #0
	adcs r0, r5, r5
	adc r1, r1, #0
	lsls lr, r3, r6
	adc r1, r1, #0
	adds r0, r0, lr
	adc r1, r1, #0
	lsr r3, r4, r6
	bic r4, r4, r3, lsl r6
	orr r2, r2, r4, ror r6
	pop {r4, r5, r6, lr}
	bx lr
_0803BD5C:
	subs r2, r5, lr
	sbcs r3, r4, ip
	movlo r2, r5
	movlo r3, r4
	mov r1, #0
	adc r0, r1, r1
	pop {r4, r5, r6, lr}
	bx lr
_0803BD7C:
	pop {r4, r5, r6, lr}
	b sub_0803CF3C

	thumb_func_start sub_803BD84
sub_803BD84: @ 0x0803BD84
	bx pc
	.align 2, 0

	arm_func_start sub_803BD88
sub_803BD88: @ 0x0803BD88
	subs r3, r2, #0x20
	bpl _0803BDA4
	rsb r3, r2, #0x20
	lsr r0, r0, r2
	orr r0, r0, r1, lsl r3
	lsr r1, r1, r2
	bx lr
_0803BDA4:
	lsr r0, r1, r3
	mov r1, #0
	bx lr

	thumb_func_start sub_803BDB0
sub_803BDB0: @ 0x0803BDB0
	push {r3, lr}
	movs r0, #0xc
	bl sub_803CF28
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_803BDC0
sub_803BDC0: @ 0x0803BDC0
	push {r4, r5}
	ldr r2, _0803BE5C @ =gUnknown_03003D98
	movs r1, #0x17
	str r1, [r2]
	movs r1, #0x36
	str r1, [r2, #4]
	ldr r4, _0803BE5C @ =gUnknown_03003D98
	ldr r2, _0803BE60 @ =0x66D619E1
	movs r1, #0
	adds r4, #8
_0803BDD4:
	lsrs r3, r0, #0x10
	adds r3, r3, r0
	lsls r5, r1, #2
	str r3, [r4, r5]
	ldr r3, _0803BE64 @ =0x00010DCD
	adds r1, #1
	muls r0, r3, r0
	adds r0, r0, r2
	cmp r1, #0x37
	blt _0803BDD4
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803BDEC
sub_803BDEC: @ 0x0803BDEC
	ldr r1, _0803BE5C @ =gUnknown_03003D98
	push {r4, r5}
	movs r0, #0x17
	str r0, [r1]
	movs r0, #0x36
	str r0, [r1, #4]
	ldr r2, _0803BE5C @ =gUnknown_03003D98
	ldr r1, _0803BE60 @ =0x66D619E1
	movs r0, #0
	movs r3, #1
	adds r2, #8
_0803BE02:
	lsrs r4, r3, #0x10
	adds r4, r4, r3
	lsls r5, r0, #2
	str r4, [r2, r5]
	adds r4, r3, #0
	ldr r3, _0803BE64 @ =0x00010DCD
	adds r0, #1
	muls r3, r4, r3
	adds r3, r3, r1
	cmp r0, #0x37
	blt _0803BE02
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803BE1C
sub_803BE1C: @ 0x0803BE1C
	ldr r0, _0803BE5C @ =gUnknown_03003D98
	push {r4, r5}
	ldr r1, [r0, #4]
	ldr r3, [r0]
	lsls r2, r1, #2
	ldr r1, _0803BE5C @ =gUnknown_03003D98
	lsls r5, r3, #2
	adds r1, #8
	ldr r4, [r1, r2]
	ldr r5, [r1, r5]
	subs r3, #1
	adds r4, r4, r5
	str r4, [r1, r2]
	str r3, [r0]
	subs r1, #8
	ldr r1, [r1, #4]
	movs r2, #0x36
	subs r1, #1
	cmp r3, #0
	bge _0803BE4A
	str r1, [r0, #4]
	str r2, [r0]
	b _0803BE52
_0803BE4A:
	str r1, [r0, #4]
	cmp r1, #0
	bge _0803BE52
	str r2, [r0, #4]
_0803BE52:
	lsls r0, r4, #1
	lsrs r0, r0, #1
	pop {r4, r5}
	bx lr
	.align 2, 0
_0803BE5C: .4byte gUnknown_03003D98
_0803BE60: .4byte 0x66D619E1
_0803BE64: .4byte 0x00010DCD

	thumb_func_start sub_803BE68
sub_803BE68: @ 0x0803BE68
	bx pc
	.align 2, 0

	arm_func_start sub_803BE6C
sub_803BE6C: @ 0x0803BE6C
	mov r2, #0
_0803BE70:
	cmp r1, #4
	blo _0803BE9C
	ands ip, r0, #3
	beq _0803BEB8
	rsb ip, ip, #4
	cmp ip, #2
	strb r2, [r0], #1
	strbge r2, [r0], #1
	strbgt r2, [r0], #1
	sub r1, r1, ip
	b _0803BEB8
_0803BE9C:
	lsls ip, r1, #0x1f
	strbhs r2, [r0], #1
	strbhs r2, [r0], #1
	strbmi r2, [r0], #1
	bx lr

	thumb_func_start sub_803BEB0
sub_803BEB0: @ 0x0803BEB0
	bx pc
	.align 2, 0

	arm_func_start sub_803BEB4
sub_803BEB4: @ 0x0803BEB4
	mov r2, #0
_0803BEB8:
	stmdb sp!, {lr}
	mov r3, r2
	mov ip, r2
	mov lr, r2
	subs r1, r1, #0x20
_0803BECC:
	stmhs r0!, {r2, r3, ip, lr}
	stmhs r0!, {r2, r3, ip, lr}
	subshs r1, r1, #0x20
	bhs _0803BECC
	lsls r1, r1, #0x1c
	stmhs r0!, {r2, r3, ip, lr}
	stmmi r0!, {r2, r3}
	ldm sp!, {lr}
	lsls r1, r1, #2
	strhs r2, [r0], #4
	bxeq lr
	strbmi r2, [r0], #1
	strbmi r2, [r0], #1
	tst r1, #0x40000000
	strbne r2, [r0], #1
	bx lr

	thumb_func_start sub_803BF0C
sub_803BF0C: @ 0x0803BF0C
	bx pc
	.align 2, 0

	arm_func_start sub_803BF10
sub_803BF10: @ 0x0803BF10
	cmp r2, #3
	bls _0803C014
	ands ip, r0, #3
	beq _0803BF44
	ldrb r3, [r1], #1
	cmp ip, #2
	add r2, r2, ip
	ldrbls ip, [r1], #1
	strb r3, [r0], #1
	ldrblo r3, [r1], #1
	sub r2, r2, #4
	strbls ip, [r0], #1
	strblo r3, [r0], #1
_0803BF44:
	ands r3, r1, #3
	beq sub_0803BFC8
	subs r2, r2, #4
	blo _0803C014
	ldr ip, [r1, -r3]!
	cmp r3, #2
	beq _0803BF84
	bhi _0803BFA4
_0803BF64:
	lsr r3, ip, #8
	ldr ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #24
	str r3, [r0], #4
	bhs _0803BF64
	add r1, r1, #1
	b _0803C014
_0803BF84:
	lsr r3, ip, #0x10
	ldr ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #16
	str r3, [r0], #4
	bhs _0803BF84
	add r1, r1, #2
	b _0803C014
_0803BFA4:
	lsr r3, ip, #0x18
	ldr ip, [r1, #4]!
	subs r2, r2, #4
	orr r3, r3, ip, lsl #8
	str r3, [r0], #4
	bhs _0803BFA4
	add r1, r1, #3
	b _0803C014

	thumb_func_start sub_0803BFC4
sub_0803BFC4: @ 0x0803BFC4
	bx pc
	.align 2, 0

	arm_func_start sub_0803BFC8
sub_0803BFC8: @ 0x0803BFC8
	push {r4, lr}
	subs r2, r2, #0x20
	blo _0803BFEC
_0803BFD4:
	ldmhs r1!, {r3, r4, ip, lr}
	stmhs r0!, {r3, r4, ip, lr}
	ldmhs r1!, {r3, r4, ip, lr}
	stmhs r0!, {r3, r4, ip, lr}
	subshs r2, r2, #0x20
	bhs _0803BFD4
_0803BFEC:
	lsls ip, r2, #0x1c
	ldmhs r1!, {r3, r4, ip, lr}
	stmhs r0!, {r3, r4, ip, lr}
	ldmmi r1!, {r3, r4}
	stmmi r0!, {r3, r4}
	pop {r4, lr}
	lsls ip, r2, #0x1e
	ldrhs r3, [r1], #4
	strhs r3, [r0], #4
	bxeq lr
_0803C014:
	lsls r2, r2, #0x1f
	ldrbmi r2, [r1], #1
	ldrbhs r3, [r1], #1
	ldrbhs ip, [r1], #1
	strbmi r2, [r0], #1
	strbhs r3, [r0], #1
	strbhs ip, [r0], #1
	bx lr

	thumb_func_start sub_803C034
sub_803C034: @ 0x0803C034
	bx pc
	.align 2, 0

	arm_func_start sub_803C038
sub_803C038: @ 0x0803C038
	and r3, r1, #0xff
	mov r1, r2
	orr r2, r3, r3, lsl #8
	orr r2, r2, r2, lsl #16
	b _0803BE70

	thumb_func_start sub_803C04C
sub_803C04C: @ 0x0803C04C
	bx pc
	.align 2, 0

	arm_func_start sub_803C050
sub_803C050: @ 0x0803C050
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	eors r3, r2, r1, asr #32
	rsbhs r1, r1, #0
	rsbs ip, r0, r1, lsr #3
	blo _0803C0EC
	rsbs ip, r0, r1, lsr #8
	blo _0803C0B0
	lsl r0, r0, #8
	orr r2, r2, #0xff000000
	rsbs ip, r0, r1, lsr #4
	blo _0803C0E0
	rsbs ip, r0, r1, lsr #8
	blo _0803C0B0
	lsl r0, r0, #8
	orr r2, r2, #0xff0000
	rsbs ip, r0, r1, lsr #8
	lslhs r0, r0, #8
	orrhs r2, r2, #0xff00
	rsbs ip, r0, r1, lsr #4
	blo _0803C0E0
	rsbs ip, r0, #0
	bhs sub_0803CF3C
_0803C0AC:
	lsrhs r0, r0, #8
_0803C0B0:
	rsbs ip, r0, r1, lsr #7
	subhs r1, r1, r0, lsl #7
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #6
	subhs r1, r1, r0, lsl #6
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #5
	subhs r1, r1, r0, lsl #5
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #4
	subhs r1, r1, r0, lsl #4
	adc r2, r2, r2
_0803C0E0:
	rsbs ip, r0, r1, lsr #3
	subhs r1, r1, r0, lsl #3
	adc r2, r2, r2
_0803C0EC:
	rsbs ip, r0, r1, lsr #2
	subhs r1, r1, r0, lsl #2
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #1
	subhs r1, r1, r0, lsl #1
	adc r2, r2, r2
	rsbs ip, r0, r1
	subhs r1, r1, r0
	adcs r2, r2, r2
	bhs _0803C0AC
	eors r0, r2, r3, asr #31
	add r0, r0, r3, lsr #31
	rsbhs r1, r1, #0
	bx lr

	thumb_func_start sub_803C124
sub_803C124: @ 0x0803C124
	bx pc
	.align 2, 0

	arm_func_start sub_803C128
sub_803C128: @ 0x0803C128
	mov r2, #0
	rsbs ip, r0, r1, lsr #3
	blo _0803C1B8
	rsbs ip, r0, r1, lsr #8
	blo _0803C17C
	lsl r0, r0, #8
	orr r2, r2, #0xff000000
	rsbs ip, r0, r1, lsr #4
	blo _0803C1AC
	rsbs ip, r0, r1, lsr #8
	blo _0803C17C
	lsl r0, r0, #8
	orr r2, r2, #0xff0000
	rsbs ip, r0, r1, lsr #8
	lslhs r0, r0, #8
	orrhs r2, r2, #0xff00
	rsbs ip, r0, r1, lsr #4
	blo _0803C1AC
	rsbs ip, r0, #0
	bhs sub_0803CF3C
_0803C178:
	lsrhs r0, r0, #8
_0803C17C:
	rsbs ip, r0, r1, lsr #7
	subhs r1, r1, r0, lsl #7
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #6
	subhs r1, r1, r0, lsl #6
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #5
	subhs r1, r1, r0, lsl #5
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #4
	subhs r1, r1, r0, lsl #4
	adc r2, r2, r2
_0803C1AC:
	rsbs ip, r0, r1, lsr #3
	subhs r1, r1, r0, lsl #3
	adc r2, r2, r2
_0803C1B8:
	rsbs ip, r0, r1, lsr #2
	subhs r1, r1, r0, lsl #2
	adc r2, r2, r2
	rsbs ip, r0, r1, lsr #1
	subhs r1, r1, r0, lsl #1
	adc r2, r2, r2
	rsbs ip, r0, r1
	subhs r1, r1, r0
	adcs r2, r2, r2
	bhs _0803C178
	mov r0, r2
	bx lr
	.align 2, 0
_0803C1E8: .4byte 0x01010101

	thumb_func_start sub_803C1EC
sub_803C1EC: @ 0x0803C1EC
	bx pc
	.align 2, 0

	arm_func_start sub_803C1F0
sub_803C1F0: @ 0x0803C1F0
	tst r0, #3
	tsteq r1, #3
	bne _0803C25C
	stmdb sp!, {lr}
	ldr lr, _0803C1E8 @ =0x01010101
_0803C204:
	ldr r2, [r0], #4
	ldr r3, [r1], #4
	sub ip, r2, lr
	bic ip, ip, r2
	ands ip, ip, lr, lsl #7
	cmpeq r2, r3
	beq _0803C204
	ldm sp!, {lr}
	lsl r0, r3, #0x18
	subs r0, r0, r2, lsl #24
	tsteq ip, #0xff0
	bne _0803C254
	lsl r0, r3, #0x10
	subs r0, r0, r2, lsl #16
	tsteq ip, #0xff00
	bne _0803C254
	lsl r0, r3, #8
	subs r0, r0, r2, lsl #8
	tsteq ip, #0xff0000
	subseq r0, r3, r2
_0803C254:
	rrxne r0, r0
	bx lr
_0803C25C:
	ldrb r2, [r0], #1
	ldrb r3, [r1], #1
	cmp r2, #1
	cmphs r2, r3
	bne _0803C284
	ldrb r2, [r0], #1
	ldrb r3, [r1], #1
	cmp r2, #1
	cmphs r2, r3
	beq _0803C25C
_0803C284:
	sub r0, r2, r3
	bx lr

	thumb_func_start sub_803C28C
sub_803C28C: @ 0x0803C28C
	adds r2, r0, #0
	adds r3, r0, #0
	orrs r3, r1
	lsls r3, r3, #0x1e
	push {r4, r5, r6}
	bne _0803C2BA
	ldr r4, _0803C2D8 @ =0x01010101
	lsls r6, r4, #7
	b _0803C2A0
_0803C29E:
	stm r2!, {r3}
_0803C2A0:
	ldm r1!, {r3}
	subs r5, r3, r4
	bics r5, r3
	ands r5, r6
	beq _0803C29E
_0803C2AA:
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r2]
	adds r2, #1
	cmp r1, #0
	beq _0803C2D2
	lsrs r3, r3, #8
	b _0803C2AA
_0803C2BA:
	ldrb r3, [r1]
	adds r1, #1
	strb r3, [r2]
	adds r2, #1
	cmp r3, #0
	beq _0803C2D2
	ldrb r3, [r1]
	adds r1, #1
	strb r3, [r2]
	adds r2, #1
	cmp r3, #0
	bne _0803C2BA
_0803C2D2:
	pop {r4, r5, r6}
	bx lr
	.align 2, 0
_0803C2D8: .4byte 0x01010101

	thumb_func_start sub_803C2DC
sub_803C2DC: @ 0x0803C2DC
	push {r4, r5}
	adds r4, r0, #1
	lsls r1, r0, #0x1e
	beq _0803C2F6
_0803C2E4:
	ldrb r1, [r0]
	adds r0, #1
	cmp r1, #0
	bne _0803C2F2
	subs r0, r0, r4
_0803C2EE:
	pop {r4, r5}
	bx lr
_0803C2F2:
	lsls r1, r0, #0x1e
	bne _0803C2E4
_0803C2F6:
	ldr r2, _0803C324 @ =0x01010101
	lsls r5, r2, #7
_0803C2FA:
	ldm r0!, {r1}
	subs r3, r1, r2
	bics r3, r1
	ands r3, r5
	beq _0803C2FA
	subs r0, r0, r4
	lsls r2, r1, #0x18
	bne _0803C30E
	subs r0, #3
	b _0803C2EE
_0803C30E:
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x18
	bne _0803C318
	subs r0, #2
	b _0803C2EE
_0803C318:
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	bne _0803C2EE
	subs r0, #1
	b _0803C2EE
	.align 2, 0
_0803C324: .4byte 0x01010101

	thumb_func_start sub_803C328
sub_803C328: @ 0x0803C328
	push {r4, r5, r6, r7}
	adds r3, r0, #0
	adds r4, r0, #0
	orrs r4, r1
	lsls r4, r4, #0x1e
	bne _0803C34E
	ldr r5, _0803C378 @ =0x01010101
	lsls r7, r5, #7
	b _0803C340
_0803C33A:
	adds r1, #4
	subs r2, #4
	stm r3!, {r4}
_0803C340:
	cmp r2, #4
	blo _0803C34E
	ldr r4, [r1]
	subs r6, r4, r5
	bics r6, r4
	ands r6, r7
	beq _0803C33A
_0803C34E:
	cmp r2, #0
	beq _0803C362
_0803C352:
	ldrb r4, [r1]
	adds r1, #1
	strb r4, [r3]
	adds r3, #1
	cmp r4, #0
	beq _0803C366
	subs r2, #1
	bne _0803C352
_0803C362:
	pop {r4, r5, r6, r7}
	bx lr
_0803C366:
	cmp r2, #1
	bls _0803C362
	subs r1, r2, #1
	movs r2, #0
_0803C36E:
	strb r2, [r3]
	adds r3, #1
	subs r1, #1
	bne _0803C36E
	b _0803C362
	.align 2, 0
_0803C378: .4byte 0x01010101

	thumb_func_start sub_803C37C
sub_803C37C: @ 0x0803C37C
	push {r4, r5}
_0803C37E:
	adds r3, r0, #0
	adds r4, r1, #0
_0803C382:
	ldrb r2, [r3]
	ldrb r5, [r4]
	adds r4, #1
	adds r3, #1
	cmp r2, #1
	blo _0803C392
	cmp r2, r5
	beq _0803C382
_0803C392:
	cmp r5, #0
	beq _0803C39C
	cmp r2, #0
	bne _0803C3A0
	adds r0, r2, #0
_0803C39C:
	pop {r4, r5}
	bx lr
_0803C3A0:
	adds r0, #1
	b _0803C37E

	thumb_func_start sub_803C3A4
sub_803C3A4: @ 0x0803C3A4
	push {r6, r7, lr}
	push {r3, r4, r5}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r0, r1
	beq _0803C3C0
_0803C3B4:
	adds r0, r4, #0
	bl sub_803B8D6
	adds r4, r4, r6
	cmp r4, r5
	bne _0803C3B4
_0803C3C0:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_803C3C8
sub_803C3C8: @ 0x0803C3C8
	push {r6, r7, lr}
	push {r3, r4, r5}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r0, r1
	beq _0803C3E6
_0803C3D8:
	movs r1, #0
	adds r0, r4, #0
	bl sub_803B8D6
	adds r4, r4, r6
	cmp r4, r5
	bne _0803C3D8
_0803C3E6:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803C3EC
sub_803C3EC: @ 0x0803C3EC
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	sub sp, #4
	ldr r7, [sp, #0x28]
	adds r5, r0, #0
	beq _0803C41C
	cmp r3, #0
	beq _0803C3FE
	stm r5!, {r1}
_0803C3FE:
	cmp r7, #0
	beq _0803C41C
	adds r4, r5, #0
	subs r6, r1, #1
	cmp r1, #0
	bls _0803C41C
_0803C40A:
	adds r0, r4, #0
	bl sub_803B8D6
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bhi _0803C40A
_0803C41C:
	adds r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_803C428
sub_803C428: @ 0x0803C428
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	adds r7, r2, #0
	cmp r0, #0
	sub sp, #4
	beq _0803C46C
	subs r6, r0, #4
	cmp r7, #0
	beq _0803C45E
	ldr r1, [r6]
	ldr r3, [sp, #8]
	adds r2, r1, #0
	muls r2, r3, r2
	adds r4, r2, r0
	subs r5, r1, #1
	cmp r1, #0
	bls _0803C45E
_0803C44A:
	ldr r3, [sp, #8]
	movs r1, #0
	subs r4, r4, r3
	adds r0, r4, #0
	bl sub_803B8D6
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bhi _0803C44A
_0803C45E:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0803C474
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	bl sub_803B8CA
_0803C46C:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803C474:
	adds r0, r6, #0
	bl sub_803DA4C
	b _0803C46C

	thumb_func_start sub_803C47C
sub_803C47C: @ 0x0803C47C
	push {r4, r5, lr}
	ldr r3, _0803C4AC @ =0x0000095B
	sub sp, #0x3c
	add r3, pc
	str r3, [sp, #0x1c]
	ldr r3, _0803C4B0 @ =0x00000963
	add r3, pc
	str r3, [sp, #0x20]
	str r0, [sp, #0x34]
	add r5, sp, #0x34
	adds r0, r5, #0
	mov r3, sp
	bl sub_803C4B4
	adds r4, r0, #0
	adds r1, r5, #0
	movs r0, #0
	bl sub_803CDE0
	adds r0, r4, #0
	add sp, #0x3c
	pop {r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0803C4AC: .4byte 0x0000095B
_0803C4B0: .4byte 0x00000963

	thumb_func_start sub_803C4B4
sub_803C4B4: @ 0x0803C4B4
	push {r4, r5, r6, r7, lr}
	push {r0, r1, r2, r3}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #0x1c]
	ldrb r0, [r1]
	adds r7, r1, #1
	adds r6, r3, #0
	adds r5, r2, #0
	cmp r0, #0
	beq _0803C594
_0803C4CA:
	cmp r0, #0x25
	beq _0803C4DE
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	b _0803C752
_0803C4DE:
	movs r4, #0
	str r4, [sp, #0x14]
	movs r1, #0
	str r1, [r6, #8]
	movs r1, #1
	movs r2, #4
	movs r0, #8
_0803C4EC:
	ldrb r3, [r7]
	adds r7, #1
	cmp r3, #0x2b
	str r3, [sp, #0x20]
	beq _0803C51E
	bgt _0803C504
	cmp r3, #0x20
	beq _0803C524
	cmp r3, #0x23
	bne _0803C528
	orrs r4, r0
	b _0803C4EC
_0803C504:
	cmp r3, #0x2d
	beq _0803C514
	cmp r3, #0x30
	bne _0803C528
	movs r3, #0xff
	adds r3, #1
	orrs r4, r3
	b _0803C4EC
_0803C514:
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	orrs r4, r1
	b _0803C4EC
_0803C51E:
	movs r3, #2
	orrs r4, r3
	b _0803C4EC
_0803C524:
	orrs r4, r2
	b _0803C4EC
_0803C528:
	ldr r3, [sp, #0x20]
	movs r2, #0
	cmp r3, #0x2a
	bne _0803C546
	ldr r3, [r5]
	ldm r3!, {r2}
	str r3, [r5]
	cmp r2, #0
	bge _0803C53E
	rsbs r2, r2, #0
	eors r4, r1
_0803C53E:
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C568
_0803C546:
	ldr r1, [sp, #0x20]
	subs r1, #0x30
	cmp r1, #0xa
	bhs _0803C568
_0803C54E:
	lsls r1, r2, #2
	adds r1, r1, r2
	ldr r3, [sp, #0x20]
	lsls r1, r1, #1
	adds r2, r1, r3
	ldrb r3, [r7]
	adds r7, #1
	subs r2, #0x30
	adds r1, r3, #0
	subs r1, #0x30
	cmp r1, #0xa
	str r3, [sp, #0x20]
	blo _0803C54E
_0803C568:
	movs r1, #0
	adds r3, r1, #0
	cmp r2, #0
	blt _0803C572
	adds r3, r2, #0
_0803C572:
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x20]
	cmp r3, #0x2e
	bne _0803C5C0
	ldrb r3, [r7]
	adds r7, #1
	movs r2, #0
	cmp r3, #0x2a
	str r3, [sp, #0x20]
	bne _0803C596
	ldr r3, [r5]
	ldm r3!, {r2}
	str r3, [r5]
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C5B6
_0803C594:
	b _0803CA2C
_0803C596:
	ldr r3, [sp, #0x20]
	subs r3, #0x30
	cmp r3, #0xa
	bhs _0803C5BA
_0803C59E:
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r3, [sp, #0x20]
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrb r3, [r7]
	adds r7, #1
	subs r2, #0x30
	str r3, [sp, #0x20]
	subs r3, #0x30
	cmp r3, #0xa
	blo _0803C59E
_0803C5B6:
	cmp r2, #0
	blt _0803C5C0
_0803C5BA:
	movs r3, #0x10
	orrs r4, r3
	str r2, [r6, #8]
_0803C5C0:
	ldr r3, [sp, #0x20]
	cmp r3, #0x6c
	beq _0803C5CE
	ldr r3, [sp, #0x20]
	cmp r3, #0x4c
	bne _0803C5E8
	b _0803C5DC
_0803C5CE:
	ldrb r2, [r7]
	cmp r2, #0x6c
	bne _0803C5DC
	movs r2, #0x40
	orrs r4, r2
	adds r7, #1
	b _0803C5E0
_0803C5DC:
	movs r2, #0x20
	orrs r4, r2
_0803C5E0:
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C5E8:
	ldr r3, [sp, #0x20]
	cmp r3, #0x68
	bne _0803C60A
	ldrb r2, [r7]
	cmp r2, #0x68
	bne _0803C5FE
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r4, r2
	adds r7, #1
	b _0803C602
_0803C5FE:
	movs r2, #0x80
	orrs r4, r2
_0803C602:
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C60A:
	ldr r3, [sp, #0x20]
	cmp r3, #0x6a
	bne _0803C61C
	ldrb r3, [r7]
	movs r2, #0x40
	orrs r4, r2
	adds r7, #1
	str r3, [sp, #0x20]
	b _0803C62E
_0803C61C:
	ldr r3, [sp, #0x20]
	cmp r3, #0x74
	beq _0803C628
	ldr r3, [sp, #0x20]
	cmp r3, #0x7a
	bne _0803C62E
_0803C628:
	ldrb r3, [r7]
	adds r7, #1
	str r3, [sp, #0x20]
_0803C62E:
	ldr r3, [sp, #0x20]
	cmp r3, #0x67
	beq _0803C702
	bgt _0803C65C
	cmp r3, #0x63
	beq _0803C67E
	bgt _0803C64E
	cmp r3, #0
	beq _0803C6EE
	cmp r3, #0x45
	beq _0803C702
	cmp r3, #0x47
	beq _0803C702
	cmp r3, #0x58
	beq _0803C718
	b _0803C686
_0803C64E:
	cmp r3, #0x64
	beq _0803C71A
	cmp r3, #0x65
	beq _0803C702
	cmp r3, #0x66
	beq _0803C702
	b _0803C686
_0803C65C:
	cmp r3, #0x70
	beq _0803C72E
	bgt _0803C670
	cmp r3, #0x69
	beq _0803C71A
	cmp r3, #0x6e
	beq _0803C6F2
	cmp r3, #0x6f
	beq _0803C740
	b _0803C686
_0803C670:
	cmp r3, #0x73
	beq _0803C742
	cmp r3, #0x75
	beq _0803C744
	cmp r3, #0x78
	beq _0803C746
	b _0803C686
_0803C67E:
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x20]
_0803C686:
	ldr r3, [sp, #0x18]
	subs r3, #1
	str r3, [sp, #0x18]
	lsls r0, r4, #0x1f
	bmi _0803C6BE
	movs r0, #0x30
	lsls r1, r4, #0x17
	bmi _0803C698
	movs r0, #0x20
_0803C698:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bmi _0803C6BE
_0803C6A6:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bpl _0803C6A6
_0803C6BE:
	ldr r2, [r6, #0x1c]
	add r1, sp, #0x20
	ldm r1, {r0, r1}
	bl sub_803B8CC
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	lsls r0, r4, #0x1f
	bpl _0803C752
	ldr r4, [sp, #0x18]
	subs r4, #1
	bmi _0803C752
_0803C6D8:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	movs r0, #0x20
	bl sub_803B8CC
	subs r4, #1
	bpl _0803C6D8
	b _0803C752
_0803C6EE:
	subs r7, #1
	b _0803C752
_0803C6F2:
	lsls r0, r4, #0x15
	bpl _0803C704
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	strb r2, [r1]
	b _0803C752
_0803C702:
	b _0803C9E6
_0803C704:
	lsls r0, r4, #0x18
	bpl _0803C71C
	ldr r1, [r5]
	ldm r1!, {r0}
	str r1, [r5]
	ldr r2, [sp, #0x1c]
	strb r2, [r0]
	lsrs r3, r2, #8
	strb r3, [r0, #1]
	b _0803C752
_0803C718:
	b _0803C80E
_0803C71A:
	b _0803C974
_0803C71C:
	lsls r0, r4, #0x19
	bpl _0803C730
	ldr r0, [r5]
	ldm r0!, {r4}
	str r0, [r5]
	ldr r0, [sp, #0x1c]
	asrs r1, r0, #0x1f
	stm r4!, {r0, r1}
	b _0803C752
_0803C72E:
	b _0803C8C0
_0803C730:
	lsls r0, r4, #0x1a
	bpl _0803C748
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r2, [r1]
	b _0803C752
_0803C740:
	b _0803C8E0
_0803C742:
	b _0803C754
_0803C744:
	b _0803C92E
_0803C746:
	b _0803C866
_0803C748:
	ldr r2, [sp, #0x1c]
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r2, [r1]
_0803C752:
	b _0803C8BE
_0803C754:
	ldr r0, [r5]
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x10]
	lsls r0, r4, #0x1b
	bpl _0803C780
	movs r1, #0
	ldr r0, [r6, #8]
	str r1, [sp, #8]
	b _0803C76E
_0803C768:
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #8]
_0803C76E:
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _0803C788
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	ldrb r1, [r1, r2]
	cmp r1, #0
	bne _0803C768
	b _0803C788
_0803C780:
	ldr r0, [sp, #0x10]
	bl sub_803C2DC
	str r0, [sp, #8]
_0803C788:
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x18]
	subs r0, r3, r0
	str r0, [sp, #0x18]
	lsls r0, r4, #0x1f
	bmi _0803C7C2
	movs r0, #0x30
	lsls r1, r4, #0x17
	bmi _0803C79C
	movs r0, #0x20
_0803C79C:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bmi _0803C7C2
_0803C7AA:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bpl _0803C7AA
_0803C7C2:
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _0803C7E6
_0803C7CC:
	add r1, sp, #0xc
	ldm r1, {r0, r1}
	ldrb r0, [r1, r0]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	bl sub_803B8CC
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0803C7CC
_0803C7E6:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	lsls r0, r4, #0x1f
	bpl _0803C8BE
	ldr r4, [sp, #0x18]
	subs r4, #1
	bmi _0803C8BE
_0803C7F8:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	ldr r2, [r6, #0x1c]
	ldr r1, [sp, #0x24]
	movs r0, #0x20
	bl sub_803B8CC
	subs r4, #1
	bpl _0803C7F8
	b _0803C8BE
_0803C80E:
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C824
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C82A
_0803C824:
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C82A:
	lsls r0, r4, #0x15
	bpl _0803C838
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C844
_0803C838:
	lsls r0, r4, #0x18
	bpl _0803C844
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C844:
	add r0, pc, #0x3C0 @ =_0803CC08
	str r0, [r6, #0x24]
	lsls r0, r4, #0x1c
	bpl _0803C856
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0803C856
	add r0, pc, #0x3C8 @ =_0803CC1C
	b _0803C858
_0803C856:
	add r0, pc, #0x3C0 @ =_0803CC18
_0803C858:
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C8DE
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C8DE
_0803C866:
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C87C
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C882
_0803C87C:
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C882:
	lsls r0, r4, #0x15
	bpl _0803C890
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C89C
_0803C890:
	lsls r0, r4, #0x18
	bpl _0803C89C
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C89C:
	add r0, pc, #0x380 @ =_0803CC20
	str r0, [r6, #0x24]
	lsls r0, r4, #0x1c
	bpl _0803C8AE
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0803C8AE
	add r0, pc, #0x388 @ =_0803CC34
	b _0803C8B0
_0803C8AE:
	add r0, pc, #0x368 @ =_0803CC18
_0803C8B0:
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C8DE
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C8DE
_0803C8BE:
	b _0803CA22
_0803C8C0:
	ldr r2, [r5]
	ldm r2!, {r1}
	str r2, [r5]
	str r1, [sp, #0x14]
	add r1, pc, #0x354 @ =_0803CC20
	str r1, [r6, #0x24]
	lsls r1, r4, #0x1c
	bpl _0803C8D4
	add r1, pc, #0x364 @ =_0803CC38
	b _0803C8D6
_0803C8D4:
	add r1, pc, #0x340 @ =_0803CC18
_0803C8D6:
	movs r3, #0x10
	str r0, [r6, #8]
	str r1, [r6, #4]
	orrs r4, r3
_0803C8DE:
	b _0803C9E4
_0803C8E0:
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C8F6
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C8FC
_0803C8F6:
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C8FC:
	lsls r0, r4, #0x15
	bpl _0803C90A
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C916
_0803C90A:
	lsls r0, r4, #0x18
	bpl _0803C916
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C916:
	lsls r0, r4, #0x1c
	bpl _0803C91E
	add r0, pc, #0x320 @ =_0803CC3C
	b _0803C920
_0803C91E:
	add r0, pc, #0x2F8 @ =_0803CC18
_0803C920:
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C9E4
_0803C92E:
	lsls r0, r4, #0x19
	ldr r0, [r5]
	bpl _0803C944
	adds r1, r0, #0
	adds r1, #8
	str r1, [r5]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x30]
	str r1, [r6, #0x2c]
	b _0803C94A
_0803C944:
	ldm r0!, {r1}
	str r0, [r5]
	str r1, [sp, #0x14]
_0803C94A:
	lsls r0, r4, #0x15
	bpl _0803C958
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	b _0803C964
_0803C958:
	lsls r0, r4, #0x18
	bpl _0803C964
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
_0803C964:
	add r0, pc, #0x2B0 @ =_0803CC18
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
	b _0803C9E4
_0803C974:
	lsls r0, r4, #0x19
	ldr r1, [r5]
	bpl _0803C99E
	adds r0, r1, #0
	adds r0, #8
	str r0, [r5]
	ldm r1, {r0, r1}
	str r0, [r6, #0x2c]
	str r1, [r6, #0x30]
	add r2, pc, #0x2B8 @ =_0803CC40
	ldm r2, {r2, r3}
	bl sub_803D15C
	bge _0803C9C6
	ldr r0, [r6, #0x2c]
	ldr r1, [r6, #0x30]
	bl sub_803D17C
	str r0, [r6, #0x2c]
	str r1, [r6, #0x30]
	b _0803C9C2
_0803C99E:
	ldm r1!, {r0}
	str r1, [r5]
	lsls r1, r4, #0x15
	bpl _0803C9AC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0803C9B4
_0803C9AC:
	lsls r1, r4, #0x18
	bpl _0803C9B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0803C9B4:
	rsbs r1, r0, #0
	cmp r0, #0
	blt _0803C9BC
	adds r1, r0, #0
_0803C9BC:
	str r1, [sp, #0x14]
	cmp r0, #0
	bge _0803C9C6
_0803C9C2:
	add r0, pc, #0x284 @ =_0803CC48
	b _0803C9D8
_0803C9C6:
	lsls r0, r4, #0x1e
	bpl _0803C9CE
	add r0, pc, #0x280 @ =_0803CC4C
	b _0803C9D8
_0803C9CE:
	lsls r0, r4, #0x1d
	bpl _0803C9D6
	add r0, pc, #0x27C @ =_0803CC50
	b _0803C9D8
_0803C9D6:
	add r0, pc, #0x240 @ =_0803CC18
_0803C9D8:
	str r0, [r6, #4]
	lsls r0, r4, #0x1b
	bpl _0803C9E4
	movs r3, #0xff
	adds r3, #1
	bics r4, r3
_0803C9E4:
	b _0803CA0A
_0803C9E6:
	movs r0, #1
	lsls r0, r0, #9
	orrs r4, r0
	lsls r0, r4, #0x1b
	bmi _0803C9F4
	movs r0, #6
	str r0, [r6, #8]
_0803C9F4:
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #8
	str r2, [r5]
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #0x18]
	str r1, [r6, #4]
	str r2, [r6, #0x14]
	movs r1, #0
	str r1, [sp, #0x14]
_0803CA0A:
	ldr r3, [sp, #0x18]
	adds r2, r6, #0
	str r3, [r6, #0x28]
	str r4, [r6]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	bl sub_803CA48
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	str r0, [sp, #0x1c]
_0803CA22:
	ldrb r0, [r7]
	adds r7, #1
	cmp r0, #0
	beq _0803CA2C
	b _0803C4CA
_0803CA2C:
	ldr r1, [r6, #0x20]
	ldr r0, [sp, #0x24]
	bl sub_803B8CA
	cmp r0, #0
	beq _0803CA44
	movs r0, #0
	mvns r0, r0
_0803CA3C:
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803CA44:
	ldr r0, [sp, #0x1c]
	b _0803CA3C

	thumb_func_start sub_803CA48
sub_803CA48: @ 0x0803CA48
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	ldr r2, [r2]
	sub sp, #0x3c
	movs r5, #0
	mvns r1, r5
	str r2, [sp, #0x10]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	movs r1, #0x21
	lsls r1, r1, #4
	movs r6, #0
	ands r2, r1
	bne _0803CA6C
	movs r1, #1
	str r1, [r4, #8]
_0803CA6C:
	add r1, pc, #0x1D0 @ =_0803CC40
	cmp r0, #0x67
	beq _0803CA90
	bgt _0803CAC2
	cmp r0, #0x64
	beq _0803CB42
	bgt _0803CA88
	cmp r0, #0x45
	beq _0803CA90
	cmp r0, #0x47
	beq _0803CA90
	cmp r0, #0x58
	bne _0803CA9A
	b _0803CAF6
_0803CA88:
	cmp r0, #0x65
	beq _0803CA90
	cmp r0, #0x66
	bne _0803CA9A
_0803CA90:
	adds r2, r4, #0
	add r1, sp, #0x14
	bl sub_08041440
	adds r6, r0, #0
_0803CA9A:
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x10]
	str r1, [sp, #8]
	lsls r0, r2, #0x16
	bpl _0803CB88
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _0803CAB2
	subs r0, #1
	str r0, [sp, #0xc]
_0803CAB2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _0803CB8A
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	subs r0, #1
	str r0, [sp, #0xc]
	b _0803CB8A
_0803CAC2:
	cmp r0, #0x70
	beq _0803CAF6
	bgt _0803CAEE
	cmp r0, #0x69
	beq _0803CB42
	cmp r0, #0x6f
	bne _0803CA9A
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CB94
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x160 @ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CB92
	b _0803CB5E
_0803CAEE:
	cmp r0, #0x75
	beq _0803CB42
	cmp r0, #0x78
	bne _0803CA9A
_0803CAF6:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CB44
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x13C @ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CA9A
_0803CB12:
	add r1, sp, #8
	ldm r1, {r0, r1}
	lsls r0, r0, #0x1c
	ldr r1, [r4, #0x24]
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, r0]
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	add r1, sp, #8
	adds r6, #1
	movs r2, #4
	ldm r1, {r0, r1}
	bl sub_803BD84
	str r0, [sp, #8]
	add r0, pc, #0x10C @ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CA9A
	b _0803CB12
_0803CB42:
	b _0803CBBA
_0803CB44:
	cmp r3, #0
	beq _0803CA9A
	add r2, sp, #0x14
_0803CB4A:
	lsls r1, r3, #0x1c
	ldr r0, [r4, #0x24]
	lsrs r1, r1, #0x1c
	ldrb r1, [r0, r1]
	adds r0, r6, #0
	adds r6, #1
	lsrs r3, r3, #4
	strb r1, [r2, r0]
	beq _0803CA9A
	b _0803CB4A
_0803CB5E:
	add r1, sp, #8
	ldm r1, {r0, r1}
	lsls r0, r0, #0x1d
	ldr r1, [r4, #0x24]
	lsrs r0, r0, #0x1d
	ldrb r1, [r1, r0]
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	add r1, sp, #8
	adds r6, #1
	movs r2, #3
	ldm r1, {r0, r1}
	bl sub_803BD84
	str r0, [sp, #8]
	add r0, pc, #0xC0 @ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	b _0803CB8C
_0803CB88:
	b _0803CC70
_0803CB8A:
	b _0803CC7C
_0803CB8C:
	bl sub_803D16C
	bne _0803CB5E
_0803CB92:
	b _0803CBAA
_0803CB94:
	cmp r3, #0
	beq _0803CBAA
	add r2, sp, #0x14
_0803CB9A:
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #0x30
	adds r0, r6, #0
	adds r6, #1
	lsrs r3, r3, #3
	strb r1, [r2, r0]
	bne _0803CB9A
_0803CBAA:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1c
	bmi _0803CBB2
_0803CBB0:
	b _0803CA9A
_0803CBB2:
	ldr r0, [r4, #8]
	subs r0, #1
	str r0, [r4, #8]
	b _0803CA9A
_0803CBBA:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	bpl _0803CC54
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	str r0, [sp, #0xc]
	add r1, pc, #0x78 @ =_0803CC40
	str r2, [sp, #8]
	ldm r1!, {r2, r3}
	adds r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_803D16C
	beq _0803CBB0
_0803CBD6:
	add r1, sp, #8
	ldm r1, {r0, r1}
	bl sub_803D18C
	str r0, [sp, #0x38]
	adds r0, r2, #0
	adds r0, #0x30
	str r1, [sp, #0x34]
	adds r1, r0, #0
	adds r0, r6, #0
	add r2, sp, #0x14
	strb r1, [r2, r0]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp, #8]
	add r0, pc, #0x48 @ =_0803CC40
	str r1, [sp, #0xc]
	ldm r0!, {r2, r3}
	ldr r0, [sp, #8]
	adds r6, #1
	bl sub_803D16C
	beq _0803CBB0
	b _0803CBD6
	.align 2, 0
_0803CC08: .4byte 0x33323130
_0803CC0C: .4byte 0x37363534
_0803CC10: .4byte 0x42413938
_0803CC14: .4byte 0x46454443
_0803CC18: .4byte 0x00000000
_0803CC1C: .4byte 0x00005830
_0803CC20: .4byte 0x33323130
_0803CC24: .4byte 0x37363534
_0803CC28: .4byte 0x62613938
_0803CC2C: .4byte 0x66656463
_0803CC30: .4byte 0x00000000
_0803CC34: .4byte 0x00007830
_0803CC38: .4byte 0x00000040
_0803CC3C: .4byte 0x00000030
_0803CC40: .4byte 0x00000000
_0803CC44: .4byte 0x00000000
_0803CC48: .4byte 0x0000002D
_0803CC4C: .4byte 0x0000002B
_0803CC50: .4byte 0x00000020
_0803CC54:
	cmp r3, #0
	beq _0803CBB0
_0803CC58:
	adds r0, r3, #0
	bl sub_803D270
	adds r1, #0x30
	adds r2, r1, #0
	adds r1, r6, #0
	add r3, sp, #0x14
	strb r2, [r3, r1]
	adds r6, #1
	adds r3, r0, #0
	beq _0803CBB0
	b _0803CC58
_0803CC70:
	ldr r0, [r4, #8]
	subs r1, r0, r6
	str r1, [sp, #0xc]
	bpl _0803CC7C
	movs r0, #0
	str r0, [sp, #0xc]
_0803CC7C:
	ldr r0, [r4, #4]
	bl sub_803C2DC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r1, r1, r6
	adds r0, r0, r1
	ldr r1, [sp, #8]
	subs r0, r1, r0
	str r0, [sp, #8]
	lsls r0, r2, #0x17
	bmi _0803CCBA
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bmi _0803CCBA
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bmi _0803CCBA
_0803CCA6:
	adds r5, #1
	ldr r2, [r4, #0x1c]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bpl _0803CCA6
_0803CCBA:
	ldr r1, [r4, #4]
	ldrb r0, [r1]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _0803CCDC
_0803CCC6:
	adds r1, r7, #0
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r1, [sp, #4]
	adds r5, #1
	ldrb r0, [r1]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	bne _0803CCC6
_0803CCDC:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bmi _0803CD0E
	ldr r2, [sp, #0x10]
	movs r0, #0x30
	lsls r1, r2, #0x17
	bmi _0803CCEC
	movs r0, #0x20
_0803CCEC:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bmi _0803CD0E
_0803CCFA:
	adds r5, #1
	ldr r2, [r4, #0x1c]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	bpl _0803CCFA
_0803CD0E:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x16
	bpl _0803CD7E
	movs r1, #0
	str r1, [sp, #4]
	cmp r6, #0
	ble _0803CDB8
_0803CD1C:
	ldr r1, [sp, #4]
	add r0, sp, #0x14
	ldrb r0, [r0, r1]
	cmp r0, #0x3c
	beq _0803CD34
	cmp r0, #0x3e
	bne _0803CD68
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	bmi _0803CD72
	b _0803CD52
_0803CD34:
	ldr r0, [r4, #0xc]
	subs r0, #1
	str r0, [r4, #0xc]
	bmi _0803CD72
_0803CD3C:
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [r4, #0xc]
	subs r0, #1
	str r0, [r4, #0xc]
	bpl _0803CD3C
	b _0803CD72
_0803CD52:
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	bpl _0803CD52
	b _0803CD72
_0803CD68:
	adds r1, r7, #0
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	adds r5, #1
_0803CD72:
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	cmp r1, r6
	blt _0803CD1C
	b _0803CDB8
_0803CD7E:
	ldr r0, [sp, #0xc]
	subs r0, #1
	str r0, [sp, #0xc]
	bmi _0803CD9A
_0803CD86:
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x30
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	ldr r0, [sp, #0xc]
	subs r0, #1
	str r0, [sp, #0xc]
	bpl _0803CD86
_0803CD9A:
	adds r5, r5, r6
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	ble _0803CDB8
_0803CDA4:
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	ldr r2, [r4, #0x1c]
	adds r1, r7, #0
	bl sub_803B8CC
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt _0803CDA4
_0803CDB8:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x1f
	bpl _0803CDD4
	ldr r6, [sp, #8]
	subs r6, #1
	bmi _0803CDD4
_0803CDC4:
	adds r5, #1
	adds r1, r7, #0
	movs r0, #0x20
	ldr r2, [r4, #0x1c]
	bl sub_803B8CC
	subs r6, #1
	bpl _0803CDC4
_0803CDD4:
	adds r0, r5, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_803CDE0
sub_803CDE0: @ 0x0803CDE0
	lsls r0, r0, #0x18
	ldr r2, [r1]
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	str r2, [r1]
	bx lr

	non_word_aligned_thumb_func_start sub_803CDEE
sub_803CDEE: @ 0x0803CDEE
	movs r0, #0
	bx lr
	.align 2, 0

	arm_func_start sub_0803CDF4
sub_0803CDF4: @ 0x0803CDF4
	bl sub_803DAC4
	bl sub_803E234
	ldr ip, _0803CE20 @ =0xFFFCE2D1
	add ip, ip, pc
	tst ip, #1
	add lr, pc, #0xD @ =sub_803CE1C
	moveq lr, pc
	bx ip
	.align 2, 0
_0803CE14: .4byte 0xE28FC001
_0803CE18: .4byte 0xE12FFF1C

	thumb_func_start sub_803CE1C
sub_803CE1C: @ 0x0803CE1C
	bl sub_803D090
	.align 2, 0
_0803CE20: .4byte 0xFFFCE2D1

	thumb_func_start sub_803CE24
sub_803CE24: @ 0x0803CE24
	bx pc
	.align 2, 0

	arm_func_start sub_803CE28
sub_803CE28: @ 0x0803CE28
	push {r0, lr}
	bl sub_803E240
	pop {r0, lr}
	b _0803CE40

	thumb_func_start sub_803CE38
sub_803CE38: @ 0x0803CE38
	bx pc
	.align 2, 0

	arm_func_start sub_803CE3C
sub_803CE3C: @ 0x0803CE3C
	mvn r0, #0
_0803CE40:
	b _0803DB24

	thumb_func_start sub_803CE44
sub_803CE44: @ 0x0803CE44
	bx pc
	.align 2, 0

	arm_func_start sub_0803CE48
sub_0803CE48: @ 0x0803CE48
	push {r4, r5, r6, lr}
	mov lr, r0
	umull r0, ip, r2, lr
	mla r1, r2, r1, ip
	mla r1, r3, lr, r1
	pop {r4, r5, r6, lr}
	bx lr

	thumb_func_start sub_803CE64
sub_803CE64: @ 0x0803CE64
	bx pc
	.align 2, 0

	arm_func_start sub_803CE68
sub_803CE68: @ 0x0803CE68
	push {r4, r5, r6, lr}
	mov r4, r3
	mov r5, r2
	mov r6, #0
	orrs ip, r1, r0, lsr #31
	bne _0803CEC8
	tst r0, r0
	beq _0803BD7C
	lsrs ip, r0, #0xf
	addeq r6, r6, #0x10
	lsl ip, r0, r6
	lsrs lr, ip, #0x17
	lsleq ip, ip, #8
	addeq r6, r6, #8
	lsrs lr, ip, #0x1b
	lsleq ip, ip, #4
	addeq r6, r6, #4
	lsrs lr, ip, #0x1d
	lsleq ip, ip, #2
	addeq r6, r6, #2
	lsrs lr, ip, #0x1e
	lsleq ip, ip, #1
	addeq r6, r6, #1
	b _0803BAE8
_0803CEC8:
	tst r1, #-0x80000000
	bne _0803CF1C
	lsrs ip, r1, #0xf
	addeq r6, r6, #0x10
	lsl ip, r1, r6
	lsrs lr, ip, #0x17
	lsleq ip, ip, #8
	addeq r6, r6, #8
	lsrs lr, ip, #0x1b
	lsleq ip, ip, #4
	addeq r6, r6, #4
	lsrs lr, ip, #0x1d
	lsleq ip, ip, #2
	addeq r6, r6, #2
	lsrs lr, ip, #0x1e
	lsleq ip, ip, #1
	addeq r6, r6, #1
	rsb r1, r6, #0x20
	orr ip, ip, r0, lsr r1
	lsl lr, r0, r6
	b _0803BC10
_0803CF1C:
	mov ip, r1
	mov lr, r0
	b _0803BD5C

	thumb_func_start sub_803CF28
sub_803CF28: @ 0x0803CF28
	push {r3, lr}
	movs r1, #0
	bl sub_803D250
	add sp, #4
	pop {r3}
	movs r0, #0
	bx r3

	thumb_func_start sub_803CF38
sub_803CF38: @ 0x0803CF38
	bx pc
	.align 2, 0

	arm_func_start sub_0803CF3C
sub_0803CF3C: @ 0x0803CF3C
	mov r0, #2
	mov r1, #2
	b sub_0803D254

	thumb_func_start sub_803CF48
sub_803CF48: @ 0x0803CF48
	bx pc
	.align 2, 0

	arm_func_start sub_803CF4C
sub_803CF4C: @ 0x0803CF4C
	push {r4, lr}
	bl sub_803B908
	pop {r4, lr}
	bx lr

	thumb_func_start sub_803CF5C
sub_803CF5C: @ 0x0803CF5C
	push {r5, r6, r7, lr}
	push {r0, r1, r2, r4}
	adds r5, r1, #0
	adds r6, r2, #0
	movs r7, #0
	ldr r4, [sp]
	bl sub_803D234
_0803CF6C:
	ldrb r1, [r4]
	adds r4, #1
	cmp r1, #0
	beq _0803CF7C
	ldr r2, [r0]
	ldrb r2, [r2, r1]
	lsls r2, r2, #0x1f
	bmi _0803CF6C
_0803CF7C:
	cmp r1, #0x2b
	beq _0803CF8E
	cmp r1, #0x2d
	bne _0803CF8C
	movs r0, #1
	lsls r0, r0, #0xa
	orrs r7, r0
	b _0803CF8E
_0803CF8C:
	subs r4, #1
_0803CF8E:
	adds r2, r6, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803CFD8
	adds r6, r0, #0
	cmp r5, #0
	beq _0803CFA8
	ldr r0, [r5]
	cmp r0, r4
	bne _0803CFA8
	ldr r0, [sp]
	str r0, [r5]
_0803CFA8:
	lsls r4, r7, #0x15
	movs r5, #2
	bl sub_803CF48
	adds r1, r0, #0
	cmp r4, #0
	bge _0803CFC8
	rsbs r0, r6, #0
	cmp r0, #0
	ble _0803CFC0
	str r5, [r1]
	lsls r0, r5, #0x1e
_0803CFC0:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803CFC8:
	adds r0, r6, #0
	cmp r6, #0
	bge _0803CFC0
	str r5, [r1]
	ldr r0, _0803CFD4 @ =0x7FFFFFFF
	b _0803CFC0
	.align 2, 0
_0803CFD4: .4byte 0x7FFFFFFF

	thumb_func_start sub_803CFD8
sub_803CFD8: @ 0x0803CFD8
	push {r5, r6, r7, lr}
	push {r0, r1, r2, r4}
	sub sp, #8
	ldr r5, [sp, #8]
	movs r1, #0
	ldrb r0, [r5]
	adds r5, #1
	adds r4, r2, #0
	cmp r0, #0x30
	str r1, [sp, #4]
	str r1, [sp]
	bne _0803D01A
	movs r1, #1
	str r1, [sp, #4]
	ldrb r0, [r5]
	adds r5, r5, r1
	cmp r0, #0x78
	beq _0803D000
	cmp r0, #0x58
	bne _0803D014
_0803D000:
	cmp r4, #0
	beq _0803D008
	cmp r4, #0x10
	bne _0803D01A
_0803D008:
	movs r1, #0
	str r1, [sp, #4]
	ldrb r0, [r5]
	movs r4, #0x10
	adds r5, #1
	b _0803D01A
_0803D014:
	cmp r4, #0
	bne _0803D01A
	movs r4, #8
_0803D01A:
	cmp r4, #0
	bne _0803D020
	movs r4, #0xa
_0803D020:
	movs r6, #0
	movs r7, #0
	adds r1, r4, #0
	bl sub_803D2E4
	cmp r0, #0
	blt _0803D05E
_0803D02E:
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r4, #0
	muls r1, r7, r1
	adds r0, r1, r0
	adds r1, r4, #0
	lsrs r2, r0, #0x10
	lsls r7, r0, #0x10
	movs r0, #1
	muls r1, r6, r1
	adds r6, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r7, #0x10
	cmp r6, r0
	blo _0803D050
	movs r0, #1
	str r0, [sp]
_0803D050:
	ldrb r0, [r5]
	adds r5, #1
	adds r1, r4, #0
	bl sub_803D2E4
	cmp r0, #0
	bge _0803D02E
_0803D05E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0803D072
	ldr r1, [sp, #4]
	subs r0, r5, #1
	cmp r1, #0
	bne _0803D06E
	ldr r0, [sp, #8]
_0803D06E:
	ldr r1, [sp, #0xc]
	str r0, [r1]
_0803D072:
	ldr r0, [sp]
	cmp r0, #0
	beq _0803D08A
	bl sub_803CF48
	movs r1, #2
	str r1, [r0]
	subs r0, r1, #3
_0803D082:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803D08A:
	lsls r0, r6, #0x10
	orrs r0, r7
	b _0803D082

	thumb_func_start sub_803D090
sub_803D090: @ 0x0803D090
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D098

	thumb_func_start sub_0803D098
sub_0803D098: @ 0x0803D098
	adds r0, r4, #0
	bl sub_803CE24

	non_word_aligned_thumb_func_start sub_803D09E
sub_803D09E: @ 0x0803D09E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803D0A4
sub_803D0A4: @ 0x0803D0A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	sub sp, #0xc
	bl sub_08041438
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	bl sub_0803D0BA

	non_word_aligned_thumb_func_start sub_0803D0BA
sub_0803D0BA: @ 0x0803D0BA
	str r0, [sp, #8]
	ldr r0, _0803D158 @ =0x00000094
	mov r1, sp
	add r0, pc
	bl sub_0803D0C6

	non_word_aligned_thumb_func_start sub_0803D0C6
sub_0803D0C6: @ 0x0803D0C6
	adds r5, r0, #0
	adds r6, r1, #0
	add r1, sp, #0
	ldm r1, {r0, r1}
	bl sub_0803D0D2

	non_word_aligned_thumb_func_start sub_0803D0D2
sub_0803D0D2: @ 0x0803D0D2
	bl sub_0803D0D6

	non_word_aligned_thumb_func_start sub_0803D0D6
sub_0803D0D6: @ 0x0803D0D6
	bl sub_803BDEC
	movs r1, #0
	movs r0, #0
	bl sub_0803D0E2

	non_word_aligned_thumb_func_start sub_0803D0E2
sub_0803D0E2: @ 0x0803D0E2
	adds r7, r0, #0
	bl sub_803B904
	adds r4, r0, #0
	movs r1, #0
	str r7, [r0, #0x20]
	movs r0, #0
	bl sub_803D308
	adds r1, r0, #1
	str r1, [r4, #0x24]
	movs r1, #0
	movs r0, #0
	bl sub_0803D100

	thumb_func_start sub_0803D100
sub_0803D100: @ 0x0803D100
	movs r1, #0
	str r0, [r4, #0x28]
	movs r0, #0
	bl sub_0803D10A

	non_word_aligned_thumb_func_start sub_0803D10A
sub_0803D10A: @ 0x0803D10A
	movs r1, #0
	str r0, [r4, #0x2c]
	movs r0, #0
	bl sub_0803D114

	thumb_func_start sub_0803D114
sub_0803D114: @ 0x0803D114
	str r0, [r4, #0x30]
	bl sub_0803D11A

	non_word_aligned_thumb_func_start sub_0803D11A
sub_0803D11A: @ 0x0803D11A
	bl sub_0803D11E

	non_word_aligned_thumb_func_start sub_0803D11E
sub_0803D11E: @ 0x0803D11E
	bl sub_0803D122

	non_word_aligned_thumb_func_start sub_0803D122
sub_0803D122: @ 0x0803D122
	bl sub_0803D126

	non_word_aligned_thumb_func_start sub_0803D126
sub_0803D126: @ 0x0803D126
	bl sub_0803D12A

	non_word_aligned_thumb_func_start sub_0803D12A
sub_0803D12A: @ 0x0803D12A
	bl sub_803B8D8
	bl sub_0803D132

	non_word_aligned_thumb_func_start sub_0803D132
sub_0803D132: @ 0x0803D132
	bl sub_0803D136

	non_word_aligned_thumb_func_start sub_0803D136
sub_0803D136: @ 0x0803D136
	adds r0, r5, #0
	adds r1, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803D142
sub_803D142: @ 0x0803D142
	push {r3, lr}
	bl sub_0803D148

	thumb_func_start sub_0803D148
sub_0803D148: @ 0x0803D148
	bl sub_0803D14C

	thumb_func_start sub_0803D14C
sub_0803D14C: @ 0x0803D14C
	bl sub_0803D150

	thumb_func_start sub_0803D150
sub_0803D150: @ 0x0803D150
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_0803D158: .4byte 0x00000094

	thumb_func_start sub_803D15C
sub_803D15C: @ 0x0803D15C
	bx pc
	.align 2, 0

	arm_func_start sub_803D160
sub_803D160: @ 0x0803D160
	subs r0, r0, r2
	sbcs r1, r1, r3
	bx lr

	thumb_func_start sub_803D16C
sub_803D16C: @ 0x0803D16C
	bx pc
	.align 2, 0

	arm_func_start sub_803D170
sub_803D170: @ 0x0803D170
	cmp r1, r3
	cmpeq r0, r2
	bx lr

	thumb_func_start sub_803D17C
sub_803D17C: @ 0x0803D17C
	bx pc
	.align 2, 0

	arm_func_start sub_803D180
sub_803D180: @ 0x0803D180
	rsbs r0, r0, #0
	rsc r1, r1, #0
	bx lr

	thumb_func_start sub_803D18C
sub_803D18C: @ 0x0803D18C
	bx pc
	.align 2, 0

	arm_func_start sub_803D190
sub_803D190: @ 0x0803D190
	push {r4, r5, lr}
	subs r2, r0, #0xa
	sbcs r3, r1, #0
	lsr lr, r0, #2
	orr lr, lr, r1, lsl #30
	subs r0, r0, lr
	sbc r1, r1, r1, lsr #2
	lsr lr, r0, #4
	orr lr, lr, r1, lsl #28
	adds r0, r0, lr
	adc r1, r1, r1, lsr #4
	lsr lr, r0, #8
	orr lr, lr, r1, lsl #24
	adds r0, r0, lr
	adc r1, r1, r1, lsr #8
	lsr lr, r0, #0x10
	orr lr, lr, r1, lsl #16
	adds r0, r0, lr
	adc r1, r1, r1, lsr #16
	adds r0, r0, r1
	adc r1, r1, #0
	lsr r0, r0, #3
	orr r0, r0, r1, lsl #29
	lsr r1, r1, #3
	lsl r4, r1, #2
	orr r4, r4, r0, lsr #30
	adds r5, r0, r0, lsl #2
	adc r4, r4, r1
	adds r5, r5, r5
	adc r4, r4, r4
	subs r2, r2, r5
	sbcs r3, r3, r4
	mov r3, #0
	addmi r2, r2, #0xa
	popmi {r4, r5, lr}
	bxmi lr
	adds r0, r0, #1
	adc r1, r1, #0
	pop {r4, r5, lr}
	bx lr

	thumb_func_start sub_803D230
sub_803D230: @ 0x0803D230
	movs r0, #0
	bx lr

	thumb_func_start sub_803D234
sub_803D234: @ 0x0803D234
	bx pc
	.align 2, 0

	arm_func_start sub_803D238
sub_803D238: @ 0x0803D238
	push {r4, lr}
	bl sub_803B908
	add r0, r0, #0x24
	pop {r4, lr}
	bx lr
	.align 2, 0
_0803D24C: .4byte 0x000000BD

	thumb_func_start sub_803D250
sub_803D250: @ 0x0803D250
	bx pc
	.align 2, 0

	arm_func_start sub_0803D254
sub_0803D254: @ 0x0803D254
	push {r4, lr}
	bl sub_803E24C
	cmp r0, #0
	popeq {r4, lr}
	bxeq lr
	pop {r4, lr}
	b _0803DB24

	thumb_func_start sub_803D270
sub_803D270: @ 0x0803D270
	bx pc
	.align 2, 0

	arm_func_start sub_803D274
sub_803D274: @ 0x0803D274
	sub r1, r0, #0xa
	sub r0, r0, r0, lsr #2
	add r0, r0, r0, lsr #4
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	lsr r0, r0, #3
	add r2, r0, r0, lsl #2
	subs r1, r1, r2, lsl #1
	addpl r0, r0, #1
	addmi r1, r1, #0xa
	bx lr

	thumb_func_start sub_803D2A0
sub_803D2A0: @ 0x0803D2A0
	push {r4, r5, r6, lr}
	ldr r6, _0803D2DC @ =0xF7FC2D51
	adds r5, r1, #0
	adds r1, r0, #0
	adds r4, r0, #0
	add r6, pc
	adds r0, r6, #0
	bl sub_0803D2B2

	non_word_aligned_thumb_func_start sub_0803D2B2
sub_0803D2B2: @ 0x0803D2B2
	adds r2, r0, #0
	cmp r0, r6
	bne _0803D2C6
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803D334
_0803D2C0:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0803D2C6:
	ldr r0, _0803D2E0 @ =0xF7FC2D31
	add r0, pc
	cmp r2, r0
	beq _0803D2D6
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803B8CC
_0803D2D6:
	movs r0, #0
	b _0803D2C0
	.align 2, 0
_0803D2DC: .4byte 0xF7FC2D51
_0803D2E0: .4byte 0xF7FC2D31

	thumb_func_start sub_803D2E4
sub_803D2E4: @ 0x0803D2E4
	cmp r0, #0x3a
	bhs _0803D2EA
	subs r0, #0x30
_0803D2EA:
	movs r3, #0x20
	adds r2, r0, #0
	bics r2, r3
	cmp r2, #0x41
	blo _0803D2F8
	adds r0, r2, #0
	subs r0, #0x37
_0803D2F8:
	movs r2, #0
	mvns r2, r2
	cmp r0, r1
	bhs _0803D302
	adds r2, r0, #0
_0803D302:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_803D308
sub_803D308: @ 0x0803D308
	push {r3, lr}
	adds r0, r1, #0
	beq _0803D31E
	ldrb r1, [r0]
	cmp r1, #0
	beq _0803D31E
	add r1, pc, #0x14 @ =_0803D32C
	bl sub_803C1EC
	cmp r0, #0
	bne _0803D328
_0803D31E:
	ldr r0, _0803D330 @ =0x000141E4
	add r0, pc
_0803D322:
	add sp, #4
	pop {r3}
	bx r3
_0803D328:
	movs r0, #0
	b _0803D322
	.align 2, 0
_0803D32C: .4byte 0x00000043
_0803D330: .4byte 0x000141E4

	thumb_func_start sub_803D334
sub_803D334: @ 0x0803D334
	push {r3, r4, r5, lr}
	subs r2, r0, #1
	cmp r2, #0xd
	add r4, pc, #0x90 @ =_0803D3CC
	bhs _0803D38C
	movs r2, #0x17
	ldr r3, _0803D3D0 @ =0x000142C4
	muls r2, r0, r2
	add r3, pc
	adds r5, r2, r3
	subs r5, #0x17
	cmp r0, #2
	bne _0803D378
	lsls r0, r1, #5
	bpl _0803D356
	add r4, pc, #0x80 @ =_0803D3D4
	b _0803D38E
_0803D356:
	ldr r0, _0803D3E8 @ =0x08000002
	ands r0, r1
	beq _0803D360
	add r4, pc, #0x8C @ =_0803D3EC
	b _0803D38E
_0803D360:
	lsls r0, r1, #3
	bpl _0803D368
	add r4, pc, #0x94 @ =_0803D3FC
	b _0803D38E
_0803D368:
	lsls r0, r1, #2
	bpl _0803D370
	add r4, pc, #0x98 @ =_0803D408
	b _0803D38E
_0803D370:
	lsls r0, r1, #1
	bpl _0803D38E
	add r4, pc, #0x9C @ =_0803D414
	b _0803D38E
_0803D378:
	cmp r0, #8
	bne _0803D380
	adds r4, r1, #0
	b _0803D38E
_0803D380:
	cmp r0, #9
	bne _0803D38E
	cmp r1, #1
	bne _0803D38E
	add r5, pc, #0x98 @ =_0803D424
	b _0803D38E
_0803D38C:
	add r5, pc, #0xAC @ =_0803D43C
_0803D38E:
	movs r0, #0xa
	bl sub_803D44C
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803D3A8
_0803D39A:
	ldrb r0, [r5]
	adds r5, #1
	bl sub_803D44C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803D39A
_0803D3A8:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803D3BC
_0803D3AE:
	ldrb r0, [r4]
	adds r4, #1
	bl sub_803D44C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D3AE
_0803D3BC:
	movs r0, #0xa
	bl sub_803D44C
	pop {r3, r4, r5}
	pop {r3}
_0803D3C6:
	movs r0, #1
	bx r3
	.align 2, 0
_0803D3CC: .4byte 0x00000000
_0803D3D0: .4byte 0x000142C4
_0803D3D4: .4byte 0x61766E49
_0803D3D8: .4byte 0x2064696C
_0803D3DC: .4byte 0x7265704F
_0803D3E0: .4byte 0x6F697461
_0803D3E4: .4byte 0x0000006E
_0803D3E8: .4byte 0x08000002
_0803D3EC: .4byte 0x69766944
_0803D3F0: .4byte 0x42206564
_0803D3F4: .4byte 0x655A2079
_0803D3F8: .4byte 0x00006F72
_0803D3FC: .4byte 0x7265764F
_0803D400: .4byte 0x776F6C66
_0803D404: .4byte 0x00000000
_0803D408: .4byte 0x65646E55
_0803D40C: .4byte 0x6F6C6672
_0803D410: .4byte 0x00000077
_0803D414: .4byte 0x78656E49
_0803D418: .4byte 0x20746361
_0803D41C: .4byte 0x75736552
_0803D420: .4byte 0x0000746C
_0803D424: .4byte 0x6548203A
_0803D428: .4byte 0x6D207061
_0803D42C: .4byte 0x726F6D65
_0803D430: .4byte 0x6F632079
_0803D434: .4byte 0x70757272
_0803D438: .4byte 0x00646574
_0803D43C: .4byte 0x6E6B6E55
_0803D440: .4byte 0x206E776F
_0803D444: .4byte 0x6E676973
_0803D448: .4byte 0x00006C61

	thumb_func_start sub_803D44C
sub_803D44C: @ 0x0803D44C
	push {r3, lr}
	add r3, sp, #0
	strb r0, [r3]
	movs r0, #3
	mov r1, sp
	svc #0xab
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start j_nullsub_8
j_nullsub_8: @ 0x0803D460
	bx pc
	.align 2, 0

	arm_func_start nullsub_8
nullsub_8: @ 0x0803D464
	bx lr

	thumb_func_start sub_803D468
sub_803D468: @ 0x0803D468
	svc #0xb
	bx lr

	thumb_func_start sub_803D46C
sub_803D46C: @ 0x0803D46C
	svc #6
	bx lr

	thumb_func_start sub_803D470
sub_803D470: @ 0x0803D470
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_803D478
sub_803D478: @ 0x0803D478
	svc #0x12
	bx lr

	thumb_func_start sub_803D47C
sub_803D47C: @ 0x0803D47C
	svc #0x15
	bx lr

	thumb_func_start sub_0803D480
sub_0803D480: @ 0x0803D480
	ldr r3, _0803D490 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _0803D494 @ =gUnknown_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_0803D490: .4byte 0x04000208
_0803D494: .4byte gUnknown_03007F00

	thumb_func_start sub_803D498
sub_803D498: @ 0x0803D498
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start nullsub_64
nullsub_64: @ 0x0803D4A0
	bx lr
	.align 2, 0
_0803D4A4: .4byte 0xFFFFFFFD

	thumb_func_start sub_803D4A8
sub_803D4A8: @ 0x0803D4A8
	push {r4, lr}
	cmp r0, #8
	bhs _0803D57C
	add r3, pc, #0x8 @ =_0803D4B8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0803D4B8:
	.byte 0x04
_0803D4B9:
	.byte 0x08
_0803D4BA:
	.byte 0x17
_0803D4BB:
	.byte 0x26
_0803D4BC:
	.byte 0x35
_0803D4BD:
	.byte 0x44
_0803D4BE:
	.byte 0x53
_0803D4BF:
	.byte 0x63
loc_803d4c0:
	movs r0, #0
_0803D4C2:
	pop {r4}
	pop {r3}
	bx r3
loc_803d4c8:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x30
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D4E2
	adds r0, r4, #0
	bl sub_803E258
_0803D4E2:
	adds r0, r4, #0
	b _0803D4C2
loc_803d4e6:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D500
	adds r0, r4, #0
	bl sub_803E260
_0803D500:
	adds r0, r4, #0
	b _0803D4C2
loc_803d504:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D51E
	adds r0, r4, #0
	bl sub_803E268
_0803D51E:
	adds r0, r4, #0
	b _0803D4C2
loc_803d522:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x3c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D53C
	adds r0, r4, #0
	bl sub_803E270
_0803D53C:
	adds r0, r4, #0
	b _0803D4C2
loc_803d540:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D55A
	adds r0, r4, #0
	bl sub_803E278
_0803D55A:
	adds r0, r4, #0
	b _0803D4C2
loc_803d55e:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0803D5A0 @ =0x00005524
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D578
	adds r0, r4, #0
	bl sub_803E280
_0803D578:
	adds r0, r4, #0
	b _0803D4C2
_0803D57C:
	b _0803D59C
loc_803d57e:
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x5c
	bl sub_803DA80
	adds r4, r0, #0
	beq _0803D598
	adds r0, r4, #0
	bl sub_803E17C
_0803D598:
	adds r0, r4, #0
	b _0803D4C2
_0803D59C:
	movs r0, #0
	b _0803D4C2
	.align 2, 0
_0803D5A0: .4byte 0x00005524

	thumb_func_start sub_803D5A4
sub_803D5A4: @ 0x0803D5A4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _0803D664 @ =0x04000100
	adds r5, r2, #0
	movs r7, #0
	sub sp, #0x1c
	strh r7, [r1, #0xa]
	ldr r1, _0803D668 @ =gUnknown_030033F4
	str r7, [r1]
	str r7, [r1, #4]
	bl sub_803D4A8
	adds r4, r0, #0
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0x10]
	rsbs r0, r0, #0
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
	bl sub_803B8CC
	str r0, [sp, #0x14]
	str r7, [sp, #0x18]
	cmp r5, #0
	beq _0803D648
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	ldr r1, [sp, #4]
	bl sub_803B8CC
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
	bl sub_803B8CE
_0803D61A:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	ldr r1, [sp, #0x14]
	bl sub_803B8CE
	cmp r5, #0
	beq _0803D648
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_0803D648:
	adds r0, r4, #0
	beq _0803D658
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0803D658:
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803D664: .4byte 0x04000100
_0803D668: .4byte gUnknown_030033F4

	thumb_func_start sub_803D66C
sub_803D66C: @ 0x0803D66C
	ldrh r2, [r0]
	ldr r1, _0803D67C @ =0x04000040
	strh r2, [r1, #0x10]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x12]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0803D67C: .4byte 0x04000040

	thumb_func_start sub_803D680
sub_803D680: @ 0x0803D680
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #4
	add r2, sp, #0x28
	ldm r2, {r0, r2}
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
	add r3, pc, #0x4 @ =_0803D6CC
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D6CC:
	.byte 0x02
_0803D6CD:
	.byte 0x12
_0803D6CE:
	.byte 0x24
_0803D6CF:
	.byte 0x34
_0803D6D0:
	.byte 0x46
_0803D6D1:
	.byte 0x59
loc_803d6d2:
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
loc_803d6f2:
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
loc_803d716:
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
loc_803d736:
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
_0803D758:
	b _0803D7A2
loc_803d75a:
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
loc_803d780:
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
_0803D7A2:
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bhs _0803D7F8
	add r3, pc, #0x4 @ =_0803D7B4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0803D7B4:
	.byte 0x02
_0803D7B5:
	.byte 0x14
_0803D7B6:
	.byte 0x02
_0803D7B7:
	.byte 0x14
_0803D7B8:
	.byte 0x14
_0803D7B9:
	.byte 0x02
loc_803d7ba:
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
loc_803d7de:
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
_0803D7F8:
	ldr r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #4
	beq _0803D806
	cmp r0, #5
	bne _0803D812
_0803D806:
	adds r0, r5, #0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	bl sub_8004784
	b _0803D81C
_0803D812:
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_8004784
_0803D81C:
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
sub_803D834: @ 0x0803D834
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r1, r0, #5
	bmi _0803D846
	movs r0, #1
_0803D840:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0803D846:
	lsls r1, r0, #6
	bpl _0803D84E
	movs r0, #0
	b _0803D840
_0803D84E:
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
	add r3, pc, #0x8 @ =_0803D884
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_0803D884:
	.byte 0x03
_0803D885:
	.byte 0x1D
_0803D886:
	.byte 0x03
_0803D887:
	.byte 0x1D
_0803D888:
	.byte 0x37
_0803D889:
	.byte 0x59
loc_803d88a:
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
_0803D8AE:
	adds r0, r5, #0
	bl sub_80047BA
	adds r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
	b _0803D8F0
loc_803d8be:
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
_0803D8E2:
	adds r0, r5, #0
	bl sub_80047BA
	subs r1, r0, #1
	adds r0, r5, #0
	bl sub_80047B6
_0803D8F0:
	b _0803D978
loc_803d8f2:
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
_0803D918:
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
loc_803d936:
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
_0803D95C:
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
_0803D978:
	movs r0, #1
	b _0803D840

	thumb_func_start sub_803D97C
sub_803D97C: @ 0x0803D97C
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_803D984
sub_803D984: @ 0x0803D984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9A4 @ =gUnknown_030033E8
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
	.align 2, 0
_0803D9A4: .4byte gUnknown_030033E8

	thumb_func_start sub_803D9A8
sub_803D9A8: @ 0x0803D9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803D9C0 @ =gUnknown_030033E8
	adds r3, r2, #0
	adds r2, r1, #0
	adds r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_8005220
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_0803D9C0: .4byte gUnknown_030033E8

	thumb_func_start sub_803D9C4
sub_803D9C4: @ 0x0803D9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0803D9F4 @ =gUnknown_030033E8
	sub sp, #8
	ldr r0, [r0, #8]
	str r3, [sp]
	adds r3, r2, #0
	muls r4, r1, r4
	adds r5, r4, #0
	movs r2, #3
	adds r1, r5, #0
	bl sub_80051D6
	adds r4, r0, #0
	beq _0803D9EA
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803BE68
_0803D9EA:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	.align 2, 0
_0803D9F4: .4byte gUnknown_030033E8

	thumb_func_start sub_803D9F8
sub_803D9F8: @ 0x0803D9F8
	adds r1, r0, #0
	ldr r0, _0803DA14 @ =gUnknown_030033E8
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
	.align 2, 0
_0803DA14: .4byte gUnknown_030033E8

	thumb_func_start sub_803DA18
sub_803DA18: @ 0x0803DA18
	push {lr}
	adds r1, r0, #0
	beq _0803DA42
	ldr r0, _0803DA48 @ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA3A
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA38
_0803DA30:
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA30
_0803DA38:
	ldr r0, [r0, #4]
_0803DA3A:
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA42:
	pop {r3}
	bx r3
	.align 2, 0
_0803DA48: .4byte gUnknown_030033E8

	thumb_func_start sub_803DA4C
sub_803DA4C: @ 0x0803DA4C
	push {lr}
	adds r1, r0, #0
	beq _0803DA76
	ldr r0, _0803DA7C @ =gUnknown_030033E8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803DA6E
	adds r0, r1, #0
	subs r0, #0xc
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	beq _0803DA6C
_0803DA64:
	ldr r0, [r0, #4]
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	bne _0803DA64
_0803DA6C:
	ldr r0, [r0, #4]
_0803DA6E:
	movs r3, #0
	movs r2, #0
	bl sub_8005220
_0803DA76:
	pop {r3}
	bx r3
	.align 2, 0
_0803DA7C: .4byte gUnknown_030033E8

	thumb_func_start sub_803DA80
sub_803DA80: @ 0x0803DA80
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
sub_803DA9C: @ 0x0803DA9C
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
nullsub_5: @ 0x0803DAB8
	bx lr
	.align 2, 0

	thumb_func_start sub_803DABC
sub_803DABC: @ 0x0803DABC
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_803DAC0
sub_803DAC0: @ 0x0803DAC0
	adds r0, r1, #0
	bx lr

	arm_func_start sub_803DAC4
sub_803DAC4: @ 0x0803DAC4
	ldr sp, _0803DB28 @ =gUnknown_03007F00
	ldr sl, _0803DB2C @ =gUnknown_03003EC4
	mov r0, #0x2000000
	mov r1, #0x2000000
	add r1, r1, #0x40000
	push {r0, r1, lr}
	sub r1, r1, r0
	bl sub_803E288
	pop {r0, r1, lr}
	ldr r1, _0803DB30 @ =gUnknown_030033EC
	str r0, [r1]
	ldr r1, _0803DB34 @ =gUnknown_030033F0
	str r0, [r1]
	mov pc, lr

	arm_func_start sub_803DAFC
sub_803DAFC: @ 0x0803DAFC
	ldr r0, _0803DB38 @ =0x04000208
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x64
	b _0803DB24

	arm_func_start sub_803DB10
sub_803DB10: @ 0x0803DB10
	mov r0, #0
	mov pc, lr

	arm_func_start sub_803DB18
sub_803DB18: @ 0x0803DB18
	push {r0, r1}
	ldm sp, {sl, sp}
	mov pc, lr
_0803DB24:
	b _0803DB24
	.align 2, 0
_0803DB28: .4byte gUnknown_03007F00
_0803DB2C: .4byte gUnknown_03003EC4
_0803DB30: .4byte gUnknown_030033EC
_0803DB34: .4byte gUnknown_030033F0
_0803DB38: .4byte 0x04000208

	arm_func_start sub_803DB3C
sub_803DB3C: @ 0x0803DB3C
	push {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov r3, r2
	ldr r8, [r0, #0x38]
	ldr r5, [r0, #0x20]
	ldr r4, [r0, #0x24]
	ldr r6, [r0, #0x28]
_0803DB54:
	cmp r4, #0xf
	bhs _0803DB6C
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DB6C:
	lsr sb, r5, #0x18
	add sb, r8, sb, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	lsr sl, sl, #9
	cmp sl, #0x10
	blo _0803DBA0
	lsl ip, r5, #8
	sub ip, fp, ip, lsr sl
	add sb, sb, ip, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	lsr sl, sl, #9
_0803DBA0:
	sub r4, r4, sl
	lsl r5, r5, sl
	cmp fp, #0x10
	bhs _0803DBD0
	strb fp, [r3], #1
	subs r1, r1, #1
	bne _0803DB54
	str r5, [r0, #0x20]
	str r4, [r0, #0x24]
	str r6, [r0, #0x28]
	pop {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DBD0:
	bgt _0803DC2C
	cmp r4, #2
	bhs _0803DBEC
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DBEC:
	lsr r2, r5, #0x1e
	add r2, r2, #3
	sub r4, r4, #2
	lsl r5, r5, #2
	sub r1, r1, r2
_0803DC00:
	ldrb sb, [r3, #-1]
	strb sb, [r3], #1
	subs r2, r2, #1
	bne _0803DC00
	cmp r1, #0
	bne _0803DB54
	str r5, [r0, #0x20]
	str r4, [r0, #0x24]
	str r6, [r0, #0x28]
	pop {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DC2C:
	cmp fp, #0x11
	bgt _0803DC8C
	cmp r4, #3
	bhs _0803DC4C
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DC4C:
	lsr r2, r5, #0x1d
	add r2, r2, #3
	sub r4, r4, #3
	lsl r5, r5, #3
	sub r1, r1, r2
	mov sb, #0
_0803DC64:
	strb sb, [r3], #1
	subs r2, r2, #1
	bne _0803DC64
	cmp r1, #0
	bne _0803DB54
	str r5, [r0, #0x20]
	str r4, [r0, #0x24]
	str r6, [r0, #0x28]
	pop {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803DC8C:
	cmp r4, #7
	bhs _0803DCA4
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
_0803DCA4:
	lsr r2, r5, #0x19
	add r2, r2, #0xb
	sub r4, r4, #7
	lsl r5, r5, #7
	sub r1, r1, r2
	mov sb, #0
_0803DCBC:
	strb sb, [r3], #1
	subs r2, r2, #1
	bne _0803DCBC
	cmp r1, #0
	bne _0803DB54
	str r5, [r0, #0x20]
	str r4, [r0, #0x24]
	str r6, [r0, #0x28]
	pop {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr

	arm_func_start sub_803DCE4
sub_803DCE4: @ 0x0803DCE4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x294
	add r3, sp, #0x280
	mov sb, #0
	mov sl, #0
	mov fp, #0
	mov ip, #0
	stm r3, {sb, sl, fp, ip}
	sub lr, r1, #1
	add r4, r2, lr
_0803DD0C:
	ldrb r8, [r4], #-1
	ldrb sb, [r3, r8]
	add sb, sb, #1
	strb sb, [r3, r8]
	subs lr, lr, #1
	bpl _0803DD0C
	add r5, sp, #0x40
	add r6, sp, #0
	mov r7, r5
	mov r8, #0x1000000
	mov sb, #0
	mov lr, #1
_0803DD3C:
	str r7, [r6, lr, lsl #2]
	ldrb sl, [r3, lr]
	add r7, r7, sl, lsl #1
	cmp sl, #0
	beq _0803DD60
	cmp lr, r8
	movlo r8, lr
	cmp lr, sb
	movgt sb, lr
_0803DD60:
	add lr, lr, #1
	cmp lr, #0x10
	blo _0803DD3C
	str r8, [r0, #4]
	str sb, [r0, #8]
	mov lr, #0
	add r4, r4, #1
_0803DD7C:
	ldrb ip, [r4], #1
	cmp ip, #0
	beq _0803DD98
	ldr sl, [r6, ip, lsl #2]
	orr fp, lr, ip, lsl #9
	strh fp, [sl], #2
	str sl, [r6, ip, lsl #2]
_0803DD98:
	add lr, lr, #1
	cmp lr, r1
	blo _0803DD7C
	ldr sl, [r6, #0x3c]
	sub sl, sl, r5
	str sl, [sp, #0x290]
	mov r1, sb
	cmp r1, #8
	movhi r1, #8
	mov ip, #1
	rsb r2, r8, #8
	lsl r2, ip, r2
	ldr r4, [r0]
	add r6, r3, sb
	add r3, r3, r8
_0803DDD4:
	ldrb r7, [r3], #1
	cmp r7, #0
	beq _0803DDFC
_0803DDE0:
	mov lr, r2
	ldrh fp, [r5], #2
_0803DDE8:
	strh fp, [r4], #2
	subs lr, lr, #1
	bne _0803DDE8
	subs r7, r7, #1
	bne _0803DDE0
_0803DDFC:
	cmp r3, r6
	bgt _0803DE0C
	lsrs r2, r2, #1
	bne _0803DDD4
_0803DE0C:
	cmp sb, #8
	bgt _0803DE24
	add sp, sp, #0x294
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0x100
	bx lr
_0803DE24:
	sub r1, sb, #8
	mov r8, r1
	add r3, sp, #0x280
	add r3, r3, sb
	mov r6, #1
	lsl r6, r6, sb
	sub r6, r6, #1
	mov r2, #1
	ldr sl, [sp, #0x290]
	add r5, sp, #0x40
	add r5, r5, sl
	sub r5, r5, #2
	ldr sb, [r0]
	add sb, sb, #0x200
	mov r4, sb
_0803DE60:
	ldrb r7, [r3], #-1
	cmp r7, #0
	beq _0803DE98
_0803DE6C:
	mov sl, r2
	ldrh fp, [r5], #-2
_0803DE74:
	strh fp, [sb], #2
	subs sl, sl, #1
	bne _0803DE74
	lsr sl, r6, r1
	sub r6, r6, #1
	teq sl, r6, lsr r1
	bne _0803DEAC
	subs r7, r7, #1
	bne _0803DE6C
_0803DE98:
	lsr r6, r6, #1
	lsl r2, r2, #1
	subs r1, r1, #1
	bne _0803DE60
	b _0803DEE0
_0803DEAC:
	rsb sl, r8, #0x20
	sub fp, sb, r4
	lsr fp, fp, #1
	orr fp, fp, sl, lsl #9
	strh fp, [r4, #-2]!
	subs r7, r7, #1
	mov r2, #1
	movne r8, r1
	bne _0803DE6C
	lsr r6, r6, #1
	subs r1, r1, #1
	mov r8, r1
	bne _0803DE60
_0803DEE0:
	ldr r0, [r0]
	sub r0, sb, r0
	lsr r0, r0, #1
	add sp, sp, #0x294
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_803DEF8
sub_803DEF8: @ 0x0803DEF8
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	stmdb sp!, {r0}
	ldr r5, [r0, #8]
	ldr r6, [r0, #0xc]
	lsl r6, r6, #0x11
	ldr r7, _0803E0FC @ =gUnknown_0804A948
	ldr r8, [r0, #0x38]
	ldr sb, [r0, #0x2c]
	ldr sl, [r0, #0x20]
	ldr fp, [r0, #0x24]
	ldr ip, [r0, #0x28]
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ble _0803E0AC
_0803DF30:
	ldr r4, _0803E100 @ =gUnknown_030033F4
	ldr r4, [r4]
	cmp r4, #1
	beq _0803E0AC
	cmp fp, #0xf
	bhs _0803DF58
	ldrh r0, [ip], #2
	rsb r1, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r0, lsl r1
_0803DF58:
	lsr r0, sl, #0x18
	add r0, sb, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	lsr r3, r3, #9
	cmp r3, #0x10
	blo _0803DF8C
	lsl r1, sl, #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	lsr r3, r3, #9
_0803DF8C:
	sub fp, fp, r3
	lsl sl, sl, r3
	cmp r2, #0x100
	bhs _0803DFB0
	strb r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	subs lr, lr, #1
	bne _0803DF30
	b _0803E0AC
_0803DFB0:
	subs r2, r2, #0x100
	beq _0803E0D0
	add r0, r7, r2, lsl #3
	ldrh r1, [r0, #6]
	ldrh r4, [r0, #4]
	cmp r1, #0
	beq _0803DFF4
	cmp fp, r1
	bhs _0803DFE4
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803DFE4:
	rsb r2, r1, #0x20
	add r4, r4, sl, lsr r2
	sub fp, fp, r1
	lsl sl, sl, r1
_0803DFF4:
	cmp fp, #0xf
	bhs _0803E00C
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803E00C:
	lsr r0, sl, #0x18
	add r0, r8, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	lsr r3, r3, #9
	cmp r3, #0x10
	blo _0803E040
	lsl r1, sl, #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	lsr r3, r3, #9
_0803E040:
	sub fp, fp, r3
	lsl sl, sl, r3
	add r0, r7, r2, lsl #3
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0803E084
	cmp fp, r0
	bhs _0803E074
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
_0803E074:
	rsb r2, r0, #0x20
	add r1, r1, sl, lsr r2
	sub fp, fp, r0
	lsl sl, sl, r0
_0803E084:
	sub lr, lr, r4
	sub r1, r6, r1, lsl #17
_0803E08C:
	ldrb r2, [r5, r1, lsr #17]
	strb r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	add r1, r1, #0x20000
	subs r4, r4, #1
	bne _0803E08C
	cmp lr, #0
	bgt _0803DF30
_0803E0AC:
	lsr r6, r6, #0x11
	ldm sp!, {r0}
	str sl, [r0, #0x20]
	str fp, [r0, #0x24]
	str ip, [r0, #0x28]
	str r6, [r0, #0xc]
	str lr, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
_0803E0D0:
	lsr r6, r6, #0x11
	ldm sp!, {r0}
	str sl, [r0, #0x20]
	str fp, [r0, #0x24]
	str ip, [r0, #0x28]
	str r6, [r0, #0xc]
	str lr, [r0, #0x1c]
	mov r1, #0
	str r1, [r0, #0x4c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
	.align 2, 0
_0803E0FC: .4byte gUnknown_0804A948
_0803E100: .4byte gUnknown_030033F4

	arm_func_start sub_803E104
sub_803E104: @ 0x0803E104
	ldr ip, _0803E10C @ =sub_803D9F8
	bx ip
	.align 2, 0
_0803E10C: .4byte sub_803D9F8

	arm_func_start sub_803E110
sub_803E110: @ 0x0803E110
	ldr ip, _0803E118 @ =sub_800802E
	bx ip
	.align 2, 0
_0803E118: .4byte sub_800802E

	arm_func_start sub_803E11C
sub_803E11C: @ 0x0803E11C
	ldr ip, _0803E124 @ =sub_800805E
	bx ip
	.align 2, 0
_0803E124: .4byte sub_800805E

	arm_func_start sub_803E128
sub_803E128: @ 0x0803E128
	ldr ip, _0803E130 @ =sub_803DA18
	bx ip
	.align 2, 0
_0803E130: .4byte sub_803DA18

	arm_func_start sub_803E134
sub_803E134: @ 0x0803E134
	ldr ip, _0803E13C @ =sub_800808E
	bx ip
	.align 2, 0
_0803E13C: .4byte sub_800808E

	arm_func_start sub_803E140
sub_803E140: @ 0x0803E140
	ldr ip, _0803E148 @ =sub_80081B6
	bx ip
	.align 2, 0
_0803E148: .4byte sub_80081B6

	arm_func_start sub_803E14C
sub_803E14C: @ 0x0803E14C
	ldr ip, _0803E154 @ =sub_803D468
	bx ip
	.align 2, 0
_0803E154: .4byte sub_803D468
_0803E158:
	ldr ip, _0803E160 @ =sub_803D984
	bx ip
	.align 2, 0
_0803E160: .4byte sub_803D984

	arm_func_start sub_803E164
sub_803E164: @ 0x0803E164
	ldr ip, _0803E16C @ =sub_803D9A8
	bx ip
	.align 2, 0

_0803E16C: .4byte sub_803D9A8

	arm_func_start sub_803E170
sub_803E170: @ 0x0803E170
	ldr ip, _0803E178 @ =sub_8008008
	bx ip
	.align 2, 0
_0803E178: .4byte sub_8008008

	thumb_func_start sub_803E17C
sub_803E17C: @ 0x0803E17C
	bx pc
	nop

	arm_func_start sub_0803E180
sub_0803E180: @ 0x0803E180
	ldr pc, _0803E184 @ =gUnknown_03000000
	.align 2, 0
_0803E184: .4byte gUnknown_03000000

	thumb_func_start sub_803E188
sub_803E188: @ 0x0803E188
	bx pc
	nop

	arm_func_start sub_0803E18C
sub_0803E18C: @ 0x0803E18C
	ldr pc, _0803E190 @ =gUnknown_0300028C
	.align 2, 0
_0803E190: .4byte gUnknown_0300028C

	thumb_func_start sub_803E194
sub_803E194: @ 0x0803E194
	bx pc
	nop

	arm_func_start sub_0803E198
sub_0803E198: @ 0x0803E198
	ldr pc, _0803E19C @ =gUnknown_03000284
	.align 2, 0
_0803E19C: .4byte gUnknown_03000284

	thumb_func_start sub_803E1A0
sub_803E1A0: @ 0x0803E1A0
	bx pc
	nop

	arm_func_start sub_0803E1A4
sub_0803E1A4: @ 0x0803E1A4
	ldr pc, _0803E1A8 @ =gUnknown_03000058
	.align 2, 0
_0803E1A8: .4byte gUnknown_03000058

	thumb_func_start sub_803E1AC
sub_803E1AC: @ 0x0803E1AC
	bx pc
	nop

	arm_func_start sub_0803E1B0
sub_0803E1B0: @ 0x0803E1B0
	ldr pc, _0803E1B4 @ =gUnknown_03000190
	.align 2, 0
_0803E1B4: .4byte gUnknown_03000190

	thumb_func_start sub_803E1B8
sub_803E1B8: @ 0x0803E1B8
	bx pc
	nop

	arm_func_start sub_0803E1BC
sub_0803E1BC: @ 0x0803E1BC
	ldr pc, _0803E1C0 @ =gUnknown_03000090
	.align 2, 0
_0803E1C0: .4byte gUnknown_03000090

	thumb_func_start sub_803E1C4
sub_803E1C4: @ 0x0803E1C4
	bx pc
	nop

	arm_func_start sub_0803E1C8
sub_0803E1C8: @ 0x0803E1C8
	ldr pc, _0803E1CC @ =gUnknown_030001E0
	.align 2, 0
_0803E1CC: .4byte gUnknown_030001E0

	thumb_func_start sub_803E1D0
sub_803E1D0: @ 0x0803E1D0
	bx pc
	nop

	arm_func_start sub_0803E1D4
sub_0803E1D4: @ 0x0803E1D4
	ldr pc, _0803E1D8 @ =gUnknown_03000308
	.align 2, 0
_0803E1D8: .4byte gUnknown_03000308

	thumb_func_start sub_803E1DC
sub_803E1DC: @ 0x0803E1DC
	bx pc
	nop

	arm_func_start sub_0803E1E0
sub_0803E1E0: @ 0x0803E1E0
	b sub_08004C44

	thumb_func_start sub_803E1E4
sub_803E1E4: @ 0x0803E1E4
	bx pc
	nop

	arm_func_start sub_0803E1E8
sub_0803E1E8: @ 0x0803E1E8
	b _080130DC

	thumb_func_start sub_803E1EC
sub_803E1EC: @ 0x0803E1EC
	bx pc
	nop

	arm_func_start sub_0803E1F0
sub_0803E1F0: @ 0x0803E1F0
	ldr pc, _0803E1F4 @ =gUnknown_03001BBC
	.align 2, 0
_0803E1F4: .4byte gUnknown_03001BBC

	thumb_func_start sub_803E1F8
sub_803E1F8: @ 0x0803E1F8
	bx pc
	nop

	arm_func_start sub_0803E1FC
sub_0803E1FC: @ 0x0803E1FC
	ldr pc, _0803E200 @ =gUnknown_03001C24
	.align 2, 0
_0803E200: .4byte gUnknown_03001C24

	thumb_func_start sub_803E204
sub_803E204: @ 0x0803E204
	bx pc
	nop

	arm_func_start sub_0803E208
sub_0803E208: @ 0x0803E208
	ldr pc, _0803E20C @ =gUnknown_03001A54
	.align 2, 0
_0803E20C: .4byte gUnknown_03001A54

	thumb_func_start sub_803E210
sub_803E210: @ 0x0803E210
	bx pc
	nop

	arm_func_start sub_0803E214
sub_0803E214: @ 0x0803E214
	ldr pc, _0803E218 @ =gUnknown_03001444
	.align 2, 0
_0803E218: .4byte gUnknown_03001444

	thumb_func_start sub_803E21C
sub_803E21C: @ 0x0803E21C
	bx pc
	nop

	arm_func_start sub_0803E220
sub_0803E220: @ 0x0803E220
	ldr pc, _0803E224 @ =gUnknown_03002F48
	.align 2, 0
_0803E224: .4byte gUnknown_03002F48

	arm_func_start sub_803E228
sub_803E228: @ 0x0803E228
	ldr ip, _0803E230 @ =sub_80132F4
	bx ip
	.align 2, 0
_0803E230: .4byte sub_80132F4

	arm_func_start sub_803E234
sub_803E234: @ 0x0803E234
	ldr ip, _0803E23C @ =sub_803D0A4
	bx ip
	.align 2, 0
_0803E23C: .4byte sub_803D0A4

	arm_func_start sub_803E240
sub_803E240: @ 0x0803E240
	ldr ip, _0803E248 @ =sub_803D142
	bx ip
	.align 2, 0
_0803E248: .4byte sub_803D142

	arm_func_start sub_803E24C
sub_803E24C: @ 0x0803E24C
	ldr ip, _0803E254 @ =sub_803D2A0
	bx ip
	.align 2, 0
_0803E254: .4byte sub_803D2A0

	thumb_func_start sub_803E258
sub_803E258: @ 0x0803E258
	bx pc
	nop

	arm_func_start sub_0803E25C
sub_0803E25C: @ 0x0803E25C
	b _0800A9BC

	thumb_func_start sub_803E260
sub_803E260: @ 0x0803E260
	bx pc
	nop

	arm_func_start sub_0803E264
sub_0803E264: @ 0x0803E264
	b _08008B14

	thumb_func_start sub_803E268
sub_803E268: @ 0x0803E268
	bx pc
	nop

	arm_func_start sub_0803E26C
sub_0803E26C: @ 0x0803E26C
	b _0800AD8C

	thumb_func_start sub_803E270
sub_803E270: @ 0x0803E270
	bx pc
	nop

	arm_func_start sub_0803E274
sub_0803E274: @ 0x0803E274
	b _0800A270

	thumb_func_start sub_803E278
sub_803E278: @ 0x0803E278
	bx pc
	nop

	arm_func_start sub_0803E27C
sub_0803E27C: @ 0x0803E27C
	b sub_80081D4

	thumb_func_start sub_803E280
sub_803E280: @ 0x0803E280
	bx pc
	nop

	arm_func_start sub_0803E284
sub_0803E284: @ 0x0803E284
	b _08008EB4

	arm_func_start sub_803E288
sub_803E288: @ 0x0803E288
	ldr ip, _0803E290 @ =sub_80050C0
	bx ip
	.align 2, 0
_0803E290: .4byte sub_80050C0
_0803E294:
	ldr ip, _0803E29C @ =sub_803D230
	bx ip
	.align 2, 0
_0803E29C: .4byte sub_803D230
