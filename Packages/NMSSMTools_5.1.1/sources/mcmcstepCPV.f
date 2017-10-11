      SUBROUTINE MCMCSTEPCPV(PAR,PROB,NPROB,IFAIL) 

      IMPLICIT NONE 
 
      INTEGER IFAIL,I,NTOT,IDUM,TOTMIN,TOTMAX,NMAX,NPROB
      INTEGER M1FLAG,M2FLAG,M3FLAG,MHDFLAG,MHUFLAG
      INTEGER MSFLAG,AKFLAG,ALFLAG,OMGFLAG,MAFLAG,MOFLAG
      INTEGER MCFLAG

      DOUBLE PRECISION PAR(*),PROB(*),P,RAN2,XDUM,PP
      DOUBLE PRECISION LCEN,LDEV,KCEN,KDEV,TBCEN,TBDEV,MUCEN,MUDEV,
     . ALCEN,ALDEV,AKCEN,AKDEV,XIFCEN,XIFDEV,XISCEN,XISDEV,MUPCEN,
     . MUPDEV,MSPCEN,MSPDEV,M3HCEN,M3HDEV,MACEN,MADEV,MPCEN,MPDEV,
     . M1CEN,M1DEV,M2CEN,M2DEV,M3CEN,M3DEV,XCEN,XDEV,X,LMIN,KMIN,
     . TBMIN,MUMIN,ALMIN,AKMIN,XIFMIN,XISMIN,MUPMIN,MSPMIN,M3HMIN,
     . MAMIN,MPMIN,M1MIN,M2MIN,M3MIN,
     . AQCEN,AQDEV,AQMIN,MQCEN,MQDEV,MQMIN
      DOUBLE PRECISION M1ICEN,M1IDEV,M2ICEN,M2IDEV,M3ICEN,M3IDEV,
     . AU3ICEN,AU3IDEV,AD3ICEN,AD3IDEV,AE3ICEN,AE3IDEV,LICEN,
     . LIDEV,KICEN,KIDEV,XIFICEN,XIFIDEV,XISICEN,XISIDEV,
     . MUPICEN,MUPIDEV,MSPICEN,MSPIDEV,M3HICEN,M3HIDEV,
     . M1IMIN,M2IMIN,M3IMIN,AU3IMIN,AD3IMIN,AE3IMIN,LIMIN,
     . KIMIN,XIFIMIN,XISIMIN,MUPIMIN,MSPIMIN,M3HIMIN
      DOUBLE PRECISION XIF,XIS,MUP,MSP,M3H
      DOUBLE PRECISION REALP(14),IMAGP(14)
      DOUBLE PRECISION MHC_CPV,XC(2,2),MH0T(5),XH0(5,5),MA2
      DOUBLE PRECISION MST2_CPV(2),UT(2,2,2),MSB2_CPV(2),
     .      UB(2,2,2),MSL2_CPV(2),UTAU(2,2,2),MSNT2_CPV
      DOUBLE PRECISION MSU2_CPV(2),MSD2_CPV(2),MSE2_CPV(2),MSNE2_CPV,
     .      MSMU2_CPV(2),UMU(2,2,2)
      DOUBLE PRECISION MST2P(2),MSB2P(2),MSU2P(2),MSD2P(2)

      COMMON/SCANFLAGS/M1FLAG,M2FLAG,M3FLAG,MHDFLAG,MHUFLAG,
     . MSFLAG,AKFLAG,ALFLAG
      COMMON/FLAGS/OMGFLAG,MAFLAG,MOFLAG
      COMMON/STEPS/NTOT,IDUM,TOTMIN,TOTMAX,NMAX
      COMMON/MCFLAG/MCFLAG
      COMMON/MCMCPAR/LCEN,LDEV,KCEN,KDEV,TBCEN,TBDEV,MUCEN,MUDEV,
     . ALCEN,ALDEV,AKCEN,AKDEV,XIFCEN,XIFDEV,XISCEN,XISDEV,MUPCEN,
     . MUPDEV,MSPCEN,MSPDEV,M3HCEN,M3HDEV,MACEN,MADEV,MPCEN,MPDEV,
     . M1CEN,M1DEV,M2CEN,M2DEV,M3CEN,M3DEV,XCEN,XDEV,X,LMIN,KMIN,
     . TBMIN,MUMIN,ALMIN,AKMIN,XIFMIN,XISMIN,MUPMIN,MSPMIN,M3HMIN,
     . MAMIN,MPMIN,M1MIN,M2MIN,M3MIN,
     . AQCEN,AQDEV,AQMIN,MQCEN,MQDEV,MQMIN
      COMMON/MCMCIPAR/M1ICEN,M1IDEV,M2ICEN,M2IDEV,M3ICEN,M3IDEV,
     . AU3ICEN,AU3IDEV,AD3ICEN,AD3IDEV,AE3ICEN,AE3IDEV,LICEN,
     . LIDEV,KICEN,KIDEV,XIFICEN,XIFIDEV,XISICEN,XISIDEV,
     . MUPICEN,MUPIDEV,MSPICEN,MSPIDEV,M3HICEN,M3HIDEV,
     . M1IMIN,M2IMIN,M3IMIN,AU3IMIN,AD3IMIN,AE3IMIN,LIMIN,
     . KIMIN,XIFIMIN,XISIMIN,MUPIMIN,MSPIMIN,M3HIMIN
      COMMON/SUSYEXT/XIF,XIS,MUP,MSP,M3H
      COMMON/REAL_IMAG/REALP,IMAGP
      COMMON/HISPEC/MHC_CPV,XC,MH0T,XH0,MA2
      COMMON/SFERM3SPEC/MST2_CPV,UT,MSB2_CPV,UB,MSL2_CPV,UTAU,MSNT2_CPV
      COMMON/SFERM1SPEC/MSU2_CPV,MSD2_CPV,MSE2_CPV,MSNE2_CPV,MSMU2_CPV,
     .     UMU
      COMMON/SFERMPSPEC/MST2P,MSB2P,MSU2P,MSD2P

      X=0d0

      IF(IFAIL.EQ.9.OR.IFAIL.GE.11)THEN
       X=1d40
      ENDIF

      IF(IFAIL.EQ.1.OR.IFAIL.EQ.5)THEN
       X=X+(2d0-MH0T(1))*1d20
      ENDIF
      IF(IFAIL.EQ.4.OR.IFAIL.EQ.5)THEN
       X=X+(2d0-MHC_CPV)*1d20
      ENDIF

      IF(IFAIL.EQ.8)THEN
       DO I=1,2
        X=MIN(X,MSD2P(I))
        X=MIN(X,MSU2P(I))
        X=MIN(X,MSB2P(I))
        X=MIN(X,MST2P(I))
        X=MIN(X,MSE2_CPV(I))
        X=MIN(X,MSL2_CPV(I))
       ENDDO
       X=MIN(X,MSNE2_CPV)
       X=MIN(X,MSNT2_CPV)
       X=(1d0-X)*1d20
      ENDIF

      IF(IFAIL.EQ.10)THEN
       DO I=1,NPROB
        X=X+DABS(PROB(I))
       ENDDO
       IF(X.NE.0d0)X=(1d0+X)*1d10
      ENDIF

      X=X+1d0

      PP=(X-XCEN)/(.28d0*XDEV*MIN(X,XCEN))
      PP=MAX(PP,-8d0*DLOG(10d0))
      PP=MIN(PP,8d0*DLOG(10d0))
      P=1d0/(1d0+DEXP(PP))
      XDUM=RAN2(IDUM)
!      WRITE(0,*)"X",XCEN,X
!      WRITE(0,*)"P",P,XDUM
      IF(P.GE.XDUM)THEN
!       WRITE(0,*)"OK",IFAIL
       XCEN=X
       TBCEN=PAR(3)
       IF(M1FLAG.EQ.1)THEN
        M1CEN=REALP(3)
       ENDIF
       M2CEN=REALP(4)
       IF(M3FLAG.EQ.1)THEN
        M3CEN=REALP(5)
       ENDIF
       LCEN=REALP(1)
       KCEN=REALP(2)
       MUCEN=REALP(14)
       IF(MOD(MAFLAG,3).EQ.0)THEN
        ALCEN=PAR(5)
        XIFCEN=REALP(9)
       ELSEIF(MOD(MAFLAG,3).EQ.1)THEN
        MACEN=PAR(23)
        XIFCEN=REALP(9)
       ELSE
        ALCEN=PAR(5)
        MACEN=PAR(23)
        REALP(9)=0d0
       ENDIF
       IF(MAFLAG/3.EQ.0)THEN
        AKCEN=PAR(6)
        XISCEN=REALP(10)
       ELSEIF(MAFLAG/3.EQ.1)THEN
        MPCEN=PAR(24)
        XISCEN=REALP(10)
       ELSE
        AKCEN=PAR(6)
        MPCEN=PAR(24)
        REALP(10)=0d0
       ENDIF
       MUPCEN=REALP(11)
       MSPCEN=REALP(12)
       M3HCEN=REALP(13)
       AQCEN=REALP(6)
       MQCEN=DSQRT(PAR(7))
       LICEN=IMAGP(1)
       KICEN=IMAGP(2)
       M1ICEN=IMAGP(3)
       M2ICEN=IMAGP(4)
       M3ICEN=IMAGP(5)
       AU3ICEN=IMAGP(6)
       AD3ICEN=IMAGP(7)
       AE3ICEN=IMAGP(8)
       XIFICEN=IMAGP(9)
       XISICEN=IMAGP(10)
       MUPICEN=IMAGP(11)
       MSPICEN=IMAGP(12)
       M3HICEN=IMAGP(13)
      ELSE
!       WRITE(0,*)"NO",IFAIL
      ENDIF 
!      WRITE(0,*)""
!      WRITE(0,*)""

      END
