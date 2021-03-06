* gzvert_his5_qud5.F
* form factors for {MNE1, MNE1} -> {0, MZ}
* generated by FormCalc 25 Oct 2014 23:26

	subroutine gzvert_his5_qud5
	implicit none

#include "gzvars.h"

        Cloop(1) = Cloop(1) + 
     -   (Cval(cc0,iint66(qud5))*
     -       (-(1/(48.D0*Pi**2)*
     -            ((Abb5 + Abb7)*EE*MNE1**2*
     -              (AAABR(185) - 1/2.D0*AAABR(699))*
     -              MTR086(qud5,his5)*MTR112(1,1,his5)*
     -              qudMass(qud5))) + 
     -         1/(96.D0*Pi**2)*
     -          (EE*(AbbSum20 + AbbSum21 + AbbSum28 + AbbSum29 + 
     -              Abb7*T + Abb7*U + Abb5*(T + U))*
     -            (AAABR(185) - 1/2.D0*AAABR(699))*MTR086(qud5,his5)*
     -            MTR112(1,1,his5)*qudMass(qud5))) - 
     -      1/(48.D0*Pi**2)*((Abb5 + Abb7)*EE*B0(S,qudMass(qud5)**2,qudMass(qud5)**2)*
     -         (AAABR(185) - 1/2.D0*AAABR(699))*MTR086(qud5,his5)*
     -         MTR112(1,1,his5)*qudMass(qud5)) + 
     -      1/(12.D0*Pi**2)*((Abb5 + Abb7)*EE*
     -         Cval(cc00,iint66(qud5))*
     -         (AAABR(185) - 1/2.D0*AAABR(699))*MTR086(qud5,his5)*
     -         MTR112(1,1,his5)*qudMass(qud5)) - 
     -      1/(12.D0*Pi**2)*((AbbSum30 + AbbSum31)*EE*
     -         Cval(cc12,iint66(qud5))*
     -         (AAABR(185) - 1/2.D0*AAABR(699))*MTR086(qud5,his5)*
     -         MTR112(1,1,his5)*qudMass(qud5)))/
     -    (S - hisMass(his5)**2)

#ifdef DEBUG
	DEB 'vert_his5_qud5: Cloop(1) =', Cloop(1)
#endif

	end

