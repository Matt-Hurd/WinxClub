/* One function of split_801897C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801897C/.
 */
extern int sub_80184BC(int a0, int a1);

int sub_801897C(int *a0, int *a1)
{
    int dv[3];
    int *p = dv;
    int angle;

    p[0] = a0[0] - a1[0];
    p[1] = a0[1] - a1[1];
    p[2] = a0[2] - a1[2];

    angle = sub_80184BC(p[1] >> 5, p[0] >> 5);
    if (angle > 127)
        angle = -(256 - angle);
    angle = -angle;
    if (angle < 0)
        angle += 256;
    return angle;
}
