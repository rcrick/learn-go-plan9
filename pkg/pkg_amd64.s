#include "textflag.h"

GLOBL ·Num(SB),NOPTR,$8
DATA ·Num+0(SB)/8,$100

GLOBL ·NameData(SB),NOPTR,$8
DATA ·NameData+0(SB)/8,$"rick"

GLOBL ·Name(SB),NOPTR,$16
DATA ·Name+0(SB)/8,$·NameData(SB)
DATA ·Name+8(SB)/8,$4

