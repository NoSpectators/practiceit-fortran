! Write a method named pow that accepts a base and an exponent as parameters 
! and returns the base raised to the given power. For example, the call 
! pow(3, 4) returns 3 * 3 * 3 * 3 or 81. Do not use Math.pow in your 
! solution. Assume that the base and exponent are non-negative.


program TestPow
    implicit none
    integer :: base, power, solution
    write(*, '(A)', advance='no') 'enter base: '
    read(*,*) base
    write(*, '(A)', advance='no') 'enter exponent: '
    read(*,*) power
    solution = pow(base, power)
    write(*,'(A, I0)') 'solution: ', solution

contains
function pow(base, power) result (res)
    integer, intent(in) :: base, power
    integer :: res, i
    res = 1
    do i = 1, power
        res = res * base
    end do
end function pow 

end program TestPow
