* vert.F
* form factors for {MNE1, MNE1} -> {0, 0}
* generated by FormCalc 12 Apr 2013 15:13

	subroutine vert
	implicit none

#include "vars.h"

	double complex dup1180

        dup1180 = -(1/4.D0*(AAABR(249)*MTR191(1,1))) - 
     -   1/4.D0*(AAABR(249)*MTR192(1,1)) + 
     -   AAABR(15)*(MTR191(1,1) + MTR192(1,1))

        Cloop(1) = Cloop(1) + 
     -   (B0(S,MW2,MW2)*(1/(8.D0*Pi**2)*
     -          (AbbSum68*dup1180*MNE1*AAABR(1072)) + 
     -         AAABR(1072)*
     -          (1/(32.D0*Pi**2)*(AbbSum129*AAABR(15)*MTR191(1,1)) - 
     -            1/(32.D0*Pi**2)*(AbbSum130*AAABR(15)*MTR192(1,1))))
     -        + B1(S,MW2,MW2)*
     -       (1/(4.D0*Pi**2)*(AbbSum68*dup1180*MNE1*AAABR(1072)) + 
     -         AAABR(1072)*
     -          (1/(16.D0*Pi**2)*(AbbSum129*AAABR(15)*MTR191(1,1)) - 
     -            1/(16.D0*Pi**2)*(AbbSum130*AAABR(15)*MTR192(1,1))))
     -        + B0(0.D0,MW2,MW2)*
     -       (-(1/(32.D0*Pi**2)*
     -            (AbbSum66*EE*AAABR(1273)*MTR191(1,1))) - 
     -         1/(32.D0*Pi**2)*
     -          (AbbSum69*EE*AAABR(1273)*MTR191(1,1)) + 
     -         AbbSum68*EE*MNE1*AAABR(1273)*
     -          (-(1/(32.D0*Pi**2)*MTR191(1,1)) - 
     -            1/(32.D0*Pi**2)*MTR192(1,1)) + 
     -         1/(32.D0*Pi**2)*
     -          (AbbSum67*EE*AAABR(1273)*MTR192(1,1)) + 
     -         1/(32.D0*Pi**2)*(AbbSum70*EE*AAABR(1273)*MTR192(1,1)))
     -        + B1(0.D0,MW2,MW2)*
     -       (-(1/(16.D0*Pi**2)*
     -            (AbbSum66*EE*AAABR(1273)*MTR191(1,1))) - 
     -         1/(16.D0*Pi**2)*
     -          (AbbSum69*EE*AAABR(1273)*MTR191(1,1)) + 
     -         AbbSum68*EE*MNE1*AAABR(1273)*
     -          (-(1/(16.D0*Pi**2)*MTR191(1,1)) - 
     -            1/(16.D0*Pi**2)*MTR192(1,1)) + 
     -         1/(16.D0*Pi**2)*
     -          (AbbSum67*EE*AAABR(1273)*MTR192(1,1)) + 
     -         1/(16.D0*Pi**2)*(AbbSum70*EE*AAABR(1273)*MTR192(1,1)))
     -        - 1/(32.D0*Pi**2)*
     -       (AbbSum68*MNE1*AAABR(249)*AAABR(1072)*B0(S,MHc**2,MHc**2)*
     -         (MTR191(1,1) + MTR192(1,1))) - 
     -      1/(16.D0*Pi**2)*(AbbSum68*MNE1*AAABR(249)*AAABR(1072)*
     -         B1(S,MHc**2,MHc**2)*(MTR191(1,1) + MTR192(1,1))))/
     -    (-MZ2 + S)

#ifdef DEBUG
	DEB 'vert: Cloop(1) =', Cloop(1)
#endif

	end

