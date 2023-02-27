        program P1AFE
            implicit none
            
            real :: vbar,tbar,dTbar, vdbar
            real :: alpha,  beta , NOR,NOR2
            real :: a,m 
            real*8, parameter:: eu=2.71828182845904523536
            integer :: conf,k
            namelist /input/ tbar, vbar , dTbar, vdbar
            open(unit=1,FILE='datos')
            open(unit=101,file='outdat.dat')
            open(unit=2,FILE='datos2')
            open(unit=102,file='outdat2.dat')
            m=0.0
            a=1.0
            do conf=1,2
                k=conf+100
                read(unit=conf,nml=input)
                write(k,*) 'tbar , vbar(tbar)'

                do while (tbar.LE.5.01)

                alpha=vbar*eu**(-dTbar)+vdbar*(1.0-eu**(-dTbar))
                beta=(1.0-eu**(-2.0*dTbar))**(0.5)

                call normal(tbar,m,a,NOR)
                call normal(tbar+dTbar,m,a,NOR2)
                NOR=NOR2-NOR
                vbar=alpha+beta*NOR
               
                    write(k,*)tbar,',',vbar
                    dTbar=0.1
                    tbar=tbar+dTbar
                    
                end do 
            end do 
        end program P1AFE
        
        subroutine normal(x,m,a,NOR)
            implicit none
            real::x,NOR
            real :: m,a 
            real, parameter :: eu=2.71828182845904523536, pi=4.0*ATAN(1.0)
            !como es con m=0 y a =1

            NOR=((2*pi*a**2)**(-0.5))*eu**(-(x-m)**2.0/(2.0*a**2))            
        
        end subroutine
