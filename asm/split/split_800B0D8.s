    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_800525C
	IMPORT sub_800527E
	IMPORT sub_800AFD4
	IMPORT sub_800B01A
	IMPORT sub_800B1F6
	IMPORT sub_800B286
	IMPORT sub_800EA22

	thumb_func_start sub_800B0D8
sub_800B0D8 ;@ 0x0800B0D8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800B124 ;@ =0x00004014
	ldr r1, _0800B128 ;@ =0x04000200
	sub sp, #0x14
	strh r0, [r1, #4]
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_800AFD4
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_800B1F6
	mov r7, sp
	mov r0, sp
	bl sub_800525C
	bl sub_800EA22
	movs r4, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_800527E
	movs r1, #0
	adds r0, r6, #0
	bl sub_800B286
	movs r1, #0
	adds r0, r5, #0
	bl sub_800B01A
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800B124 DCDU 0x00004014
_0800B128 DCDU 0x04000200
	END