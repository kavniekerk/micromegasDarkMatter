* vert_his5_lpd5.F
* form factors for {MNE1, MNE1} -> {0, 0}
* generated by FormCalc 25 Oct 2014 23:21

	subroutine vert_his5_lpd5
	implicit none

#include "vars.h"

        Cloop(1) = Cloop(1) + 
     -   (Cval(cc0,iint14(lpd5))*
     -       (1/(8.D0*Pi**2)*
     -          ((Abb5 + Abb7)*MNE1**2*AAABR(1896)*lpdMass(lpd5)*
     -            MTR072(lpd5,his5)*MTR112(1,1,his5)) - 
     -         1/(16.D0*Pi**2)*
     -          ((AbbSum20 + AbbSum21 + AbbSum28 + AbbSum29 + 
     -              2*Abb7*MNE1**2 + Abb5*(2*MNE1**2 - S) - Abb7*S)
     -             *AAABR(1896)*lpdMass(lpd5)*MTR072(lpd5,his5)*
     -            MTR112(1,1,his5))) + 
     -      1/(8.D0*Pi**2)*((Abb5 + Abb7)*AAABR(1896)*
     -         B0(S,lpdMass(lpd5)**2,lpdMass(lpd5)**2)*lpdMass(lpd5)*
     -         MTR072(lpd5,his5)*MTR112(1,1,his5)) - 
     -      1/(2.D0*Pi**2)*((Abb5 + Abb7)*AAABR(1896)*
     -         Cval(cc00,iint14(lpd5))*lpdMass(lpd5)*
     -         MTR072(lpd5,his5)*MTR112(1,1,his5)) + 
     -      1/(2.D0*Pi**2)*((AbbSum30 + AbbSum31)*AAABR(1896)*
     -         Cval(cc12,iint14(lpd5))*lpdMass(lpd5)*
     -         MTR072(lpd5,his5)*MTR112(1,1,his5)))/
     -    (S - hisMass(his5)**2)

#ifdef DEBUG
	DEB 'vert_his5_lpd5: Cloop(1) =', Cloop(1)
#endif

	end

