! Write a method called scientific that accepts two real numbers as 
! parameters for a base and an exponent and computes the base times 10 to the 
! exponent, as seen in scientific notation.

program TestScientific
    implicit none
    real :: b, e, res 
    write(*, '(A)', advance='no') 'enter base: '
    read (*,*) b
    write(*, '(A)', advance='no') 'enter exponent: '
    read (*,*) e
    res = scientific(b,e)
    write(*, '(A, F0.2)', advance='no') 'solution: ', res
    write(*,*)
contains

function scientific(b, e) result (r) 
    real, intent(in) :: b, e
    real :: r
    r = b * (10.0**e)
end function scientific

end program TestScientific
