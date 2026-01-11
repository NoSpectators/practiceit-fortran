! Write a method called average that takes two integers as parameters and 
! returns the average of the two integers.

program TestAverage
    implicit none
    integer :: x1, x2
    real :: ave
    write(*,'(A)', advance='no') 'int 1: '
    read(*,*) x1
    write(*,'(A)', advance='no') 'int 2: '
    read(*,*) x2
    ave = average(x1, x2)
    write(*, '(A, F0.2)') 'average: ', ave ! let carriage return occur since it concludes program output here.
contains

function average(x1, x2) result (a)
    integer, intent(in) :: x1, x2
    real :: a
    a = real(x1 + x2)/2.
end function average
    
end program TestAverage
