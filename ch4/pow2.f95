! Write a method named pow2 (a variation of the previous pow exercise) that 
! accepts a real number base and an integer exponent as parameters and 
! returns the base raised to the given power. Your code should work for both 
! positive and negative exponents.

program TestPow2
    implicit none
    real :: base
    real :: solution
    integer :: power 
    
    write(*, '(A)') 'enter base:'
    read(*,*) base
    write(*, '(A)') 'enter exponent:'
    read(*,*) power
    solution = pow2(base, power)
    write(*,'(A, F0.5)') 'solution: ', solution
 
contains
function pow2(base, power) result (r)
    real, intent(in) :: base
    integer, intent(in) :: power
    integer :: i 
    real :: r ! result
    r = 1. ! initialize result

    ! guard for user error (division by zero)
    if (base == 0.0 .and. power < 0) then
        write(*, '(A)') "Error: Division by zero (zero base with negative exponent"
        stop 
    end if 

    do i = 1, abs(power)
        r = r * base     
    end do

    ! if exponent was negative, it's the same as 1 / result
    if (power < 0) then
        r = 1. / r
    end if 

end function pow2

end program TestPow2
