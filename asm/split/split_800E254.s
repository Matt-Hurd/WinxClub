	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80103C8
	IMPORT sub_8010604
	IMPORT sub_803B15C
	IMPORT sub_803B184
	IMPORT sub_803B1AE
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4

	thumb_func_start sub_800E254

sub_800E254
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r3, _0800E4AC
	adds r5, r2, #0
	add sp, r3
	add r6, sp, #0x54
	adds r0, r6, #0
	bl sub_803B15C
	add r7, sp, #0x38
	adds r0, r7, #0
	bl sub_80103C8
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r4, r0, #0
	str r0, [sp, #0x38]
	lsls r0, r5, #0x1e
	bpl %1
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0
	bl sub_803D984
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r0, #1
	movs r2, #0
	movs r1, #0
	lsls r0, r0, #0xd
	bl sub_803D984
	str r0, [sp, #0x3c]
	b %2
1
	ldr r0, _0800E4B4
	str r0, [sp, #0x44]
	ldr r0, _0800E4B8
	str r0, [sp, #0x40]
	ldr r0, _0800E4BC
	str r0, [sp, #0x3c]
2
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_8010604
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r1, [r3]
	adds r0, r6, #0
	bl sub_803B1AE
	lsls r0, r5, #0x1e
	bpl %3
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x44]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x3c]
	bl sub_803D9A8
3
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
	movs r1, #0
	adds r0, r6, #0
	bl sub_803B184
	ldr r3, _0800E4C0
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0800E4AC DCDU 0xFFFFE880
_0800E4B0 DCDU 0x0000146C
_0800E4B4 DCDU 0x06014C00
_0800E4B8 DCDU 0x0601606C
_0800E4BC DCDU 0x06012C00
_0800E4C0 DCDU 0x0000178C

	END
