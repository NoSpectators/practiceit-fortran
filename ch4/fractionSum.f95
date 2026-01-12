! Write a method called fractionSum that accepts an integer parameter n and 
! returns as a double the sum of the first n terms of the sequence:
! sum i = 1 to n of 1 / i
! You may assume that the parameter n is non-negative.


program TestFractionSum
    implicit none
    integer :: n
    real :: fs
    write(*, '(A)', advance='no') 'enter number of integers: '
    read(*,*) n
    fs = fractionSum(n)
    write(*, '(A, I0, A, F0.2)') 'fractionSum(', n, ') = ', fs

contains
function fractionSum(n) result (s)
    integer, intent(in) :: n
    integer :: i 
    real :: s
  
    s = 0.0
    do i = 1, n
        s = s + (1. / i)
    end do
end function fractionSum

end program TestFractionSum
