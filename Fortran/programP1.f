        program P1
            implicit none
            
            real :: v, t2,t1
            real :: v0, gamma, deltaT, beta
            real :: tbar, vbar,deltaTbar, vd
            real*8, parameter:: euler=2.71828182845904523536
            namelist /input/ gamma, beta, t1, v, deltaTbar, vd, vbar
          
            
            !t2=deltaT+t1

           ! write(*,*) gamma, beta
            
            open(unit=100,file='input.dat',status='unknown')
            read(unit=100,nml=input)
            !tbar=gamma*t1
            !deltaTbar=gamma*deltaT
            !vDbar=v/(beta*beta/(2*gamma))**(2.0)
            write(*,*) gamma, beta, t1, v, deltaTbar, vd, vbar


            !vbar=vbar*euler**(-deltaTbar)+vDbar(1-euler**(-deltaT))
     !+            (1-euler**(-2*deltaT))**(0.5)

            write(*,*) vbar
            Pause 
        end program