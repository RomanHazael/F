        PROGRAM A3B
            Implicit None
            double precision :: a, ANGLE, ANGLE2, ANGLE3, dist, U,k,ri
            double precision :: A1,A2,A3,A4
            double precision, parameter:: pi=4.D0*DATAN(1.D0)
            INTEGER CONF,T,b
            NAMELIST /input/ k,b,ANGLE, ANGLE2, ANGLE3, A1, A2, A3, A4

            OPEN(UNIT=1,FILE='SS-5-30.dat',STATUS='unknown')
            !OPEN(UNIT=2,FILE='ST-5-30.dat',STATUS='unknown')
            !OPEN(UNIT=3,FILE='TT-5-30.dat',STATUS='unknown')
            
            CONF=1

            READ(unit=1,nml=input) 

            dist=2*b
            a=k*b 
            
            !OPEN(UNIT=101, FILE='outSS5-30.dat', STATUS='unknown')
            !OPEN(UNIT=102, FILE='outST5-30.dat', STATUS='unknown')
            !OPEN(UNIT=103, FILE='outTT5-30.dat', STATUS='unknown')

            OPEN(UNIT=120,FILE='comp_a3B.dat',STATUS='unknown')
            T=CONF+100
            !IF (CONF==1) THEN 
        !    Para angulos SS
        !        WRITE(*,*)'HEY'
        !        READ(unit=1,nml=input) 
        !        dist=2*b
        !        a=k*b  
        !    ELSE IF (CONF==2) THEN
        !    !PARA CONF ST
        !        READ(unit=2,nml=input)
        !        a=k*b
        !        dist=a+b
        !    ELSE 
        !        !PARA CONF TT
        !        READ(UNIT=3,nml=input)
        !        a=k*b  
        !        dist=2*a
        !    END IF
            WRITE(120,*)' conf SS step 0: comparacion A3'
            do b=1,10
                dist=2*b
                U=-A1*cos(2*ANGLE2+2*ANGLE3)*( b /
     +                             ( dist*(1- A2) + A3*b ))**A4
                WRITE(120,*) b,U 
                    
            end do 

        


        END PROGRAM 