    program sumatoria 
    implicit none
    double precision:: a ,b
    integer::i,n

    write(*,*)' dame el valor de a: '
    read(*,*) a
    write(*,*) 'veces'
    read(*,*) n
    b=0.0
    do i=1,n 
        b=b+a
    end do 
    write(*,*)'suma: ',b
    end program