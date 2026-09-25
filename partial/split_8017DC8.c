/* sub_8017DC8 of split_8017DC8; the rest of the unit (sub_8017DD4, sub_8017DE6)
 * is still assembly in asm/nonmatching/split_8017DC8/. config/symbols.yml is out
 * of scope for this batch, so FadeToBlack is declared locally rather than via
 * generated/functions.h. sub_8017DD4 is parked -- see notes/parked.md.
 */
extern void FadeToBlack(void);

void sub_8017DC8(void)
{
    FadeToBlack();
}
