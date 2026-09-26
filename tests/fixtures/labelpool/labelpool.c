/* The pool tcc dumps inside `big` lands on the label the `if` branches to:
   the label comes first, then the branch over the words. Compiled alone, `big`
   has the label on the instruction after them and no pool in between. */
extern int *gBuffer;
extern int gFirst, gSecond, gThird;
extern int gLits[16];

void first(int x) {
    gLits[0] = x + 0x12345;
    gLits[1] = x + 0x13456;
    gLits[2] = x + 0x14567;
    gLits[3] = x + 0x15678;
    gLits[4] = x + 0x16789;
    gLits[5] = x + 0x1789a;
    gLits[6] = x + 0x189ab;
    gLits[7] = x + 0x19abc;
    gLits[8] = x + 0x1abcd;
    gLits[9] = x + 0x1bcde;
}

void big(int n)
{
    int *p = gBuffer;
    p[0] = n ^ 0;
    p[1] = n ^ 1;
    p[2] = n ^ 2;
    p[3] = n ^ 3;
    p[4] = n ^ 4;
    p[5] = n ^ 5;
    p[6] = n ^ 6;
    p[7] = n ^ 7;
    p[8] = n ^ 8;
    p[9] = n ^ 9;
    p[10] = n ^ 10;
    p[11] = n ^ 11;
    p[12] = n ^ 12;
    p[13] = n ^ 13;
    p[14] = n ^ 14;
    p[15] = n ^ 15;
    p[16] = n ^ 16;
    p[17] = n ^ 17;
    p[18] = n ^ 18;
    p[19] = n ^ 19;
    p[20] = n ^ 20;
    p[21] = n ^ 21;
    p[22] = n ^ 22;
    p[23] = n ^ 23;
    p[24] = n ^ 24;
    p[25] = n ^ 25;
    p[26] = n ^ 26;
    p[27] = n ^ 27;
    p[28] = n ^ 28;
    p[29] = n ^ 29;
    p[30] = n ^ 30;
    p[31] = n ^ 31;
    p[32] = n ^ 32;
    p[33] = n ^ 33;
    p[34] = n ^ 34;
    p[35] = n ^ 35;
    p[36] = n ^ 36;
    p[37] = n ^ 37;
    p[38] = n ^ 38;
    p[39] = n ^ 39;
    p[40] = n ^ 40;
    p[41] = n ^ 41;
    p[42] = n ^ 42;
    p[43] = n ^ 43;
    p[44] = n ^ 44;
    p[45] = n ^ 45;
    p[46] = n ^ 46;
    p[47] = n ^ 47;
    p[48] = n ^ 48;
    p[49] = n ^ 49;
    p[50] = n ^ 50;
    p[51] = n ^ 51;
    p[52] = n ^ 52;
    p[53] = n ^ 53;
    p[54] = n ^ 54;
    p[55] = n ^ 55;
    p[56] = n ^ 56;
    p[57] = n ^ 57;
    p[58] = n ^ 58;
    p[59] = n ^ 59;
    p[60] = n ^ 60;
    p[61] = n ^ 61;
    p[62] = n ^ 62;
    p[63] = n ^ 63;
    p[64] = n ^ 64;
    p[65] = n ^ 65;
    p[66] = n ^ 66;
    p[67] = n ^ 67;
    p[68] = n ^ 68;
    p[69] = n ^ 69;
    p[70] = n ^ 70;
    p[71] = n ^ 71;
    p[72] = n ^ 72;
    p[73] = n ^ 73;
    p[74] = n ^ 74;
    p[75] = n ^ 75;
    p[76] = n ^ 76;
    p[77] = n ^ 77;
    p[78] = n ^ 78;
    p[79] = n ^ 79;
    p[80] = n ^ 80;
    p[81] = n ^ 81;
    p[82] = n ^ 82;
    p[83] = n ^ 83;
    p[84] = n ^ 84;
    p[85] = n ^ 85;
    p[86] = n ^ 86;
    p[87] = n ^ 87;
    p[88] = n ^ 88;
    p[89] = n ^ 89;
    p[90] = n ^ 90;
    p[91] = n ^ 91;
    p[92] = n ^ 92;
    p[93] = n ^ 93;
    p[94] = n ^ 94;
    p[95] = n ^ 95;
    p[96] = n ^ 96;
    p[97] = n ^ 97;
    p[98] = n ^ 98;
    p[99] = n ^ 99;
    p[100] = n ^ 100;
    p[101] = n ^ 101;
    p[102] = n ^ 102;
    p[103] = n ^ 103;
    p[104] = n ^ 104;
    if (n != 7) {
        p[105] = n ^ 105;
        p[106] = n ^ 106;
        p[107] = n ^ 107;
        p[108] = n ^ 108;
        p[109] = n ^ 109;
        p[110] = n ^ 110;
        p[111] = n ^ 111;
    }
    gSecond = n + 0x22222;
}

void last(void) { gSecond = gThird + 0x54321; }

