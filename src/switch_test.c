/*

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

*/

// int sub_802EC90(int result, int a2)
// {
// 	switch ( a2 )
// 	{
// 		case 'a':
// 			a2 = 0x364;
// 			*(char *)(result + 0x18) = a2;
// 			a2++;
// 			*(char *)(result + 0x1A) = a2;
// 			a2 = 0x25;
// 			result += 0xA0;
// 			*(char *)result = a2;
// 			return result;
// 		case 'b':
// 			*(int *)(result + 0x18) = 866;
// 			*(int *)(result + 0x1A) = 869;
// 			result += 160;
// 			*(char *)result = 37;
// 			return result;
// 		case 'c':
// 			*(int *)(result + 0x18) = 872;
// 			*(int *)(result + 0x1A) = 873;
// 			result += 160;
// 			*(char *)result = 37;
// 			return result;
// 		case 'd':
// 			*(int *)(result + 0x18) = 870;
// 			*(int *)(result + 0x1A) = 871;
// 			result += 160;
// 			*(char *)result = 37;
// 			return result;
// 		case 'e':
// 			*(int *)(result + 0x18) = 864;
// 			*(int *)(result + 0x1A) = 865;
// 			result += 160;
// 			*(char *)result = 37;
// 			return result;
// 		case 'f':
// 			*(int *)(result + 0x18) = 862;
// 			*(int *)(result + 0x1A) = 863;
// 			result += 160;
// 			*(char *)result = 37;
// 			return result;
// 		default:
// 			return result;
// 	}
// 	return result;
// }