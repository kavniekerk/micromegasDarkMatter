* vert_cha5.F
* form factors for {MNE1, MNE1} -> {0, 0}
* generated by FormCalc 25 Oct 2014 23:21

	subroutine vert_cha5
	implicit none

#include "vars.h"

        Cloop(1) = Cloop(1) + 
     -   (Cval(cc0,iint16(cha5))*
     -       (-(1/(16.D0*Pi**2)*
     -            ((-AbbSum21 + AbbSum29)*AAABR(1896)*
     -              chaMass(cha5)*MTR055(cha5,cha5)*MTR110(1,1)))+
     -           1/(16.D0*Pi**2)*
     -          ((-Abb5 + Abb7)*MNE1**2*AAABR(1896)*chaMass(cha5)*
     -            (MTR055(cha5,cha5) - MTR056(cha5,cha5))*
     -            MTR110(1,1)) + 
     -         1/(32.D0*Pi**2)*
     -          ((Abb5 - Abb7)*(2*MNE1**2 - S)*AAABR(1896)*
     -            chaMass(cha5)*
     -            (MTR055(cha5,cha5) - MTR056(cha5,cha5))*
     -            MTR110(1,1)) + 
     -         1/(16.D0*Pi**2)*
     -          ((-AbbSum20 + AbbSum28)*AAABR(1896)*chaMass(cha5)*
     -            MTR056(cha5,cha5)*MTR110(1,1))) + 
     -      B0(S,chaMass(cha5)**2,chaMass(cha5)**2)*
     -       (1/(16.D0*Pi**2)*
     -          ((-Abb5 + Abb7)*AAABR(1896)*chaMass(cha5)*
     -            (MTR055(cha5,cha5) - MTR056(cha5,cha5))*
     -            MTR110(1,1)) - 
     -         1/(16.D0*Pi**2)*
     -          ((-AbbSum48 + AbbSum54)*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1))) + 
     -      Cval(cc00,iint16(cha5))*
     -       (-(1/(4.D0*Pi**2)*
     -            ((-Abb5 + Abb7)*AAABR(1896)*chaMass(cha5)*
     -              (MTR055(cha5,cha5) - MTR056(cha5,cha5))*
     -              MTR110(1,1))) - 
     -         1/(8.D0*Pi**2)*
     -          ((AbbSum57 + AbbSum58)*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1))) + 
     -      Cval(cc2,iint16(cha5))*
     -       (1/(8.D0*Pi**2)*
     -          (AbbSum76*MNE1*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1)) + 
     -         1/(16.D0*Pi**2)*
     -          ((-AbbSum78 + AbbSum82)*MNE1**2*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1)) - 
     -         1/(32.D0*Pi**2)*
     -          ((2*AbbSum88 - AbbSum80*T + AbbSum83*T - 
     -              AbbSum79*U + AbbSum81*U)*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1))) + 
     -      Cval(cc12,iint16(cha5))*
     -       (1/(4.D0*Pi**2)*
     -          ((-AbbSum30 + AbbSum31)*AAABR(1896)*chaMass(cha5)*
     -            (MTR055(cha5,cha5) - MTR056(cha5,cha5))*
     -            MTR110(1,1)) - 
     -         1/(16.D0*Pi**2)*
     -          ((-2*AbbSum73 + 2*AbbSum74 - AbbSum75*T + 
     -              AbbSum75*U + AbbSum71*(-T + U))*AAABR(1896)*
     -            (MTR113(cha5,cha5) - MTR114(cha5,cha5))*
     -            MTR117(1,1))) + 
     -      1/(16.D0*Pi**2)*((-AbbSum55 + AbbSum56)*AAABR(1896)*
     -         B1(S,chaMass(cha5)**2,chaMass(cha5)**2)*
     -         (MTR113(cha5,cha5) - MTR114(cha5,cha5))*MTR117(1,1))
     -      )/(-MZ2 + S)

#ifdef DEBUG
	DEB 'vert_cha5: Cloop(1) =', Cloop(1)
#endif

	end

