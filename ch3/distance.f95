! Write a function named distance that accepts four integer coordinates x1, y1,
! x2, and y2 as parameters and computes the distance between points (x1, y1) 
! and (x2, y2) on the Cartesian plane.

program Distance
    implicit none
    integer :: x1, y1, x2, y2
    real :: dist
    write(*, '(A)') 'enter x1: '
    read(*,*) x1
    write(*, '(A, I0)') 'you entered ', x1 
   
    write(*, '(A)') 'enter x2: '
    read(*,*) x2
    write(*, '(A, I0)') 'you entered ', x2
    
    write(*, '(A)') 'enter y1: '
    read(*,*) y1
    write(*, '(A, I0)') 'you entered ', y1
   
    write(*, '(A)') 'enter y2: '
    read(*,*) y2
    write(*, '(A, I0)') 'you entered ', y2
    
    dist = getDistance(x1, y1, x2, y2)
    write(*, '(A, f0.2)') 'distance calculated: ', dist


contains

function getDistance(x1, y1, x2, y2) result (d)
    implicit none
    integer, intent(in) :: x1, y1, x2, y2
    real :: d
    ! d = sqrt( (x2-x1)**2+(y2-y1)**2 )
    d = sqrt( real(x2-x1)**2 + real(y2-y1)**2)      
end function getDistance
      
end program Distance
