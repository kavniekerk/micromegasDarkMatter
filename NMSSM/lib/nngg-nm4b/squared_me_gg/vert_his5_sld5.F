#if 0
* vert_his5_sld5.F
* form factors for {F[6, {1}], F[6, {1}]} -> {V[1], V[1]}
* generated by FormCalc 8.0 on 6-Apr-2015 1:04
#endif

#include "vars.h"


	subroutine vert_his5_sld5
	implicit none

#include "vars.h"


#include "inline.h"

        Cloop(1) = Cloop(1) + 
     &    1/Pi**2*(AAABR(373)*
     &        (1/8.D0*(Pair1*Pair2*pave10(cc12,sld5)) + 
     &          Pair3*(-(1/8.D0*pave10(cc00,sld5)) + 
     &             1/32.D0*pave9(bb0,sld5)))*MTR014(his5,sld5)*
     &        Sub7(his5))/(S - hisMass(his5)**2)

#ifdef DEBUG
	DEB("vert_his5_sld5: Cloop(1) =", Cloop(1))
#endif

	end
