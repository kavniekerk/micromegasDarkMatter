#!usr/bin/env python
from pylab import *
import commands

def OMEGA(shift,MN1,h1,h2): #Relic density calculus
    '''Relic density calculus using micromegas'''
    inputfile=open('data1.par','w')
    inputfile.write('MH0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH    ')
    inputfile.write('140')
    inputfile.write('\n')
    inputfile.write('MA0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH1    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('La2    ')
    inputfile.write('0.5')
    inputfile.write('\n')
    #inputfile.write('LaL    ')
    #inputfile.write('\n')
    #inputfile.close()
    inputfile.write('MN1    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN2    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN3    ')
    inputfile.write('6000')
    inputfile.write('\n')
    inputfile.write('h11    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h21    ')
    inputfile.write('%E I' %(h1))
    inputfile.write('\n')
    inputfile.write('h31    ')
    inputfile.write('%E I' %(h1))
    inputfile.write('\n')
    inputfile.write('h12    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h22    ')
    inputfile.write('%E' %(h2))
    inputfile.write('\n')
    inputfile.write('h31    ')
    inputfile.write('%E' %(h2))
    inputfile.write('\n')
    inputfile.write('h13    ')
    inputfile.write('0.285')
    inputfile.write('\n')
    inputfile.write('h23    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.write('h33    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.close()
#calculo de la densidad de reliquia
    a=commands.getoutput('./main data1.par | grep Omega | awk -F"=" \'{print $3}\'')
    if len(a)==8:
        omega=float(a)
    else:
        omega=-1.0
    #print omega
    return omega

def OMEGA_minimal(shift,MN1,h1,h2): #Relic density calculus
    '''Relic density calculus using micromegas'''
    inputfile=open('data1.par','w')
    inputfile.write('MH0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH    ')
    inputfile.write('140')
    inputfile.write('\n')
    inputfile.write('MA0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH1    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('La2    ')
    inputfile.write('0.5')
    inputfile.write('\n')
    #inputfile.write('LaL    ')
    #inputfile.write('\n')
    #inputfile.close()
    inputfile.write('MN1    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN2    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN3    ')
    inputfile.write('6000')
    inputfile.write('\n')
    inputfile.write('h11    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h21    ')
    inputfile.write('%E' %(h1))
    inputfile.write('\n')
    inputfile.write('h31    ')
    inputfile.write('%E' %(h1))
    inputfile.write('\n')
    inputfile.write('h12    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h22    ')
    inputfile.write('%E I' %(h2))
    inputfile.write('\n')
    inputfile.write('h31    ')
    inputfile.write('%E I' %(h2))
    inputfile.write('\n')
    inputfile.write('h13    ')
    inputfile.write('0.285')
    inputfile.write('\n')
    inputfile.write('h23    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.write('h33    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.close()
#calculo de la densidad de reliquia
    a=commands.getoutput('./main data1.par | grep Omega | awk -F"=" \'{print $3}\'')
    if len(a)==8:
        omega=float(a)
    else:
        omega=-1.0
    #print omega
    return omega

def OMEGA_minimal_complex(shift,MN1,h1,h2): #Relic density calculus
    '''Relic density calculus using micromegas'''
    inputfile=open('data1.par','w')
    inputfile.write('MH0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH    ')
    inputfile.write('140')
    inputfile.write('\n')
    inputfile.write('MA0    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('MH1    ')
    inputfile.write('%E' %(MN1*shift))
    inputfile.write('\n')
    inputfile.write('La2    ')
    inputfile.write('0.5')
    inputfile.write('\n')
    #inputfile.write('LaL    ')
    #inputfile.write('\n')
    #inputfile.close()
    inputfile.write('MN1    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN2    ')
    inputfile.write('%E' %(MN1))
    inputfile.write('\n')
    inputfile.write('MN3    ')
    inputfile.write('6000')
    inputfile.write('\n')

    inputfile.write('h11R    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h11I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h21R    ')
    inputfile.write('%E' %(h1))
    inputfile.write('\n')
    inputfile.write('h21I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h31R    ')
    inputfile.write('%E' %(h1))
    inputfile.write('\n')
    inputfile.write('h31I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h12R    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.write('h12I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h22I    ')
    inputfile.write('%E' %(h2))
    inputfile.write('\n')
    inputfile.write('h22R    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h31I    ')
    inputfile.write('%E' %(h2))
    inputfile.write('\n')
    inputfile.write('h31R    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h13R    ')
    inputfile.write('0.285')
    inputfile.write('\n')
    inputfile.write('h13I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h23R    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.write('h23I    ')
    inputfile.write('0.0')
    inputfile.write('\n')

    inputfile.write('h33R    ')
    inputfile.write('0.3')
    inputfile.write('\n')
    inputfile.write('h33I    ')
    inputfile.write('0.0')
    inputfile.write('\n')
    inputfile.close()
#calculo de la densidad de reliquia
    a=commands.getoutput('./main data1.par | grep Omega | awk -F"=" \'{print $3}\'')
    if len(a)==8:
        omega=float(a)
    else:
        omega=-1.0
    #print omega
    return omega

if __name__=='__main__':
    gap=array([1.05,1.1,1.15,1.2])
    MN1=linspace(10.,1000.,500)
    psi=linspace(1E-3,1E-2,500)
    relic=array([zeros_like(MN1),zeros_like(MN1),zeros_like(MN1),zeros_like(MN1)])
    for j in xrange(len(gap)):
        for i in xrange(len(MN1)):
            for k in xrange(len(psi)):
                h1=(10.-1E-4)*random_sample()+1E-4
                h2=psi[k]/h1
                relic[j][i]=OMEGA(gap[j],MN1[i],h1,h2)
                print relic[j][i]
    np.save('shmidt_spread', array([Mn1,psi,relic]))
    fig=figure()
    ax1=fig.add_subplot(1,1,1)
    for j in xrange(len(gap)):
        xaxis=[]
        yaxis=[]
        for i in xrange(len(MN1)):
            if 0.08<=relic[j][i]<=0.12:
                xaxis.append(MN1[i])
                yaxis.append(psi[i])
        ax1.plot(xaxis,yaxis)
    #ax1.hlines(0.2,11,1000)
    #ax1.hlines(0.08,11,1000)
    ax1.set_xscale('log')
    ax1.set_yscale('log')
    ax1.set_xlabel(r'$M_{1}$',size='x-large')
    ax1.set_ylabel(r'$|h_{1}h_{2}|sin(\phi_{1}-\phi_{2})$',size='x-large')
    fig.savefig('schmidt_spread')
    show()