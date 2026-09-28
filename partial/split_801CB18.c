/* Five functions of split_801CB18; the rest of the unit is still assembly
 * in asm/nonmatching/split_801CB18/. sub_801CB4E and sub_801CBDE were tried
 * but parked -- see notes/parked.md.
 */
#include "winxclub.h"

void sub_801CB18(struct Unknown_03003458 *a0, unsigned int a1, unsigned int a2)
{
    unsigned short first = a0->field_1b0[a1];
    unsigned int i;

    for (i = a1; i < a1 + a2 - 1; i++) {
        a0->field_1b0[i] = a0->field_1b0[i + 1];
    }

    a0->field_1b0[a1 + a2 - 1] = first;
}

void sub_801CBAA(struct Unknown_03003458 *a0, unsigned int a1)
{
    unsigned int i = 0;
    unsigned int count;

    count = (a0->total_object_count << 24) >> 25;
    if (count == 0)
        goto end;
next:
    sub_801F640(a0->objects[i], a1);
    i++;
    count = (a0->total_object_count << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CC72(struct Unknown_03003458 *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (a0->total_object_count << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = a0->objects[i];
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x1c)))(obj);
    i++;
    count = (a0->total_object_count << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CC3C(struct Unknown_03003458 *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (a0->total_object_count << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = a0->objects[i];
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x18)))(obj);
    i++;
    count = (a0->total_object_count << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}

void sub_801CCA8(struct Unknown_03003458 *a0)
{
    unsigned int i = 0;
    unsigned int count;
    void *obj;
    int *vtbl;

    count = (a0->total_object_count << 24) >> 25;
    if (count == 0)
        goto end;
next:
    obj = a0->objects[i];
    vtbl = *(int **)obj;
    ((void (*)(void *))((char *)vtbl + *(int *)((char *)vtbl + 0x20)))(obj);
    i++;
    count = (a0->total_object_count << 24) >> 25;
    if (count > i)
        goto next;
end:
    ;
}
