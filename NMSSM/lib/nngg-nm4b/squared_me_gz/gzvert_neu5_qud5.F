#if 0
* gzvert_neu5_qud5.F
* form factors for {F[6, {1}], F[6, {1}]} -> {V[1], V[2]}
* generated by FormCalc 8.0 on 6-Apr-2015 0:18
#endif

#include "gzvars.h"


	subroutine gzvert_neu5_qud5
	implicit none

#include "gzvars.h"


#include "inline.h"

        Cloop(1) = Cloop(1) + 
     &    EE*((1/1152.D0*(-(1/Pi**2*
     &                (pave64(cc0,qud5)*qudMass(qud5)*
     &                  Sub1007(neu5,qud5))) - 
     &             1/Pi**2*
     &              (pave65(cc0,qud5)*qudMass(qud5)*
     &                Sub1008(neu5,qud5)) + 
     &             1/Pi**2*(pave66(bb0,qud5)*Sub1021(neu5,qud5)) + 
     &             1/Pi**2*(pave64(cc2,qud5)*Sub624(neu5,qud5)) + 
     &             1/Pi**2*(pave65(cc2,qud5)*Sub634(neu5,qud5))) + 
     &          1/Pi**2*(1/1152.D0*
     &              (pave67(bb0,qud5)*Sub1023(neu5,qud5)) + 
     &             1/576.D0*(-(pave64(cc00,qud5)*
     &                   Sub1021(neu5,qud5)) - 
     &                pave68(cc00,qud5)*Sub1021(neu5,qud5) - 
     &                pave65(cc00,qud5)*Sub1023(neu5,qud5) - 
     &                pave69(cc00,qud5)*Sub1023(neu5,qud5) - 
     &                pave64(cc12,qud5)*Sub1029(neu5,qud5) - 
     &                pave65(cc12,qud5)*Sub1030(neu5,qud5) + 
     &                pave64(cc22,qud5)*Sub1047(neu5,qud5) + 
     &                pave68(cc11,qud5)*Sub1047(neu5,qud5) + 
     &                pave65(cc22,qud5)*Sub1055(neu5,qud5) + 
     &                pave69(cc11,qud5)*Sub1055(neu5,qud5) + 
     &                Sub1074*
     &                 (pave64(cc1,qud5)*Sub1089(neu5,qud5) + 
     &                   pave65(cc1,qud5)*Sub1091(neu5,qud5)) + 
     &                Pair7*
     &                 (pave68(cc22,qud5)*Sub611(neu5,qud5) + 
     &                   pave69(cc22,qud5)*Sub615(neu5,qud5)) - 
     &                pave68(cc0,qud5)*Sub625(neu5,qud5) - 
     &                pave69(cc0,qud5)*Sub635(neu5,qud5) + 
     &                pave68(cc12,qud5)*Sub640(neu5,qud5) + 
     &                pave68(cc2,qud5)*Sub645(neu5,qud5) - 
     &                pave68(cc1,qud5)*Sub650(neu5,qud5) + 
     &                pave69(cc12,qud5)*Sub659(neu5,qud5) + 
     &                pave69(cc2,qud5)*Sub664(neu5,qud5) - 
     &                pave69(cc1,qud5)*Sub670(neu5,qud5))))/
     &        (T - neuMass(neu5)**2) + 
     &       (1/1152.D0*(-(1/Pi**2*
     &                (pave70(cc0,qud5)*qudMass(qud5)*
     &                  Sub1073(neu5,qud5))) - 
     &             1/Pi**2*
     &              (pave71(cc0,qud5)*qudMass(qud5)*
     &                Sub1078(neu5,qud5)) + 
     &             1/Pi**2*(pave72(bb0,qud5)*Sub918(neu5,qud5)) - 
     &             1/Pi**2*(pave70(cc2,qud5)*Sub936(neu5,qud5)) - 
     &             1/Pi**2*(pave71(cc2,qud5)*Sub949(neu5,qud5)) + 
     &             1/Pi**2*(pave73(bb0,qud5)*Sub967(neu5,qud5))) + 
     &          1/(576.D0*Pi**2)*
     &           (pave70(cc12,qud5)*Sub1097(neu5,qud5) + 
     &             pave71(cc12,qud5)*Sub1099(neu5,qud5) + 
     &             Sub1105*
     &              (pave71(cc1,qud5)*Sub1110(neu5,qud5) + 
     &                pave70(cc1,qud5)*Sub1111(neu5,qud5)) + 
     &             pave74(cc1,qud5)*Sub866(neu5,qud5) - 
     &             Pair6*(pave70(cc22,qud5) + pave74(cc11,qud5))*
     &              Sub869(neu5,qud5) + 
     &             pave75(cc1,qud5)*Sub871(neu5,qud5) - 
     &             Pair6*(pave71(cc22,qud5) + pave75(cc11,qud5))*
     &              Sub874(neu5,qud5) - 
     &             pave74(cc22,qud5)*Sub881(neu5,qud5) - 
     &             pave75(cc22,qud5)*Sub891(neu5,qud5) - 
     &             pave74(cc2,qud5)*Sub903(neu5,qud5) + 
     &             pave74(cc12,qud5)*Sub913(neu5,qud5) - 
     &             (pave70(cc00,qud5) + pave74(cc00,qud5))*
     &              Sub918(neu5,qud5) + 
     &             Pair6*pave74(cc0,qud5)*qudMass(qud5)*
     &              Sub924(neu5,qud5) + 
     &             Pair6*pave75(cc0,qud5)*qudMass(qud5)*
     &              Sub944(neu5,qud5) - 
     &             pave75(cc2,qud5)*Sub956(neu5,qud5) + 
     &             pave75(cc12,qud5)*Sub961(neu5,qud5) - 
     &             (pave71(cc00,qud5) + pave75(cc00,qud5))*
     &              Sub967(neu5,qud5)))/(U - neuMass(neu5)**2))

#ifdef DEBUG
	DEB("vert_neu5_qud5: Cloop(1) =", Cloop(1))
#endif

	end
