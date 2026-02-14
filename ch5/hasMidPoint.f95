! Write a method named hasMidpoint that accepts three integers as parameters 
! and returns true if one of the integers is the midpoint between the other 
! two integers; that is, if one integer is exactly halfway between them. Your 
! method should return false if no such midpoint relationship exists. The 
! integers could be passed in any order; the midpoint could be the 1st, 2nd, 
! or 3rd. You must check all cases.

program MidPoint
    implicit none
    integer :: a, b, c
    logical :: hasMid
    write(*, '(A)', advance='no') 'enter integer a: '
    read(*,*) a
    write(*, '(A)', advance='no') 'enter integer b: '
    read(*,*) b
    write(*, '(A)', advance='no') 'enter integer c: '
    read(*,*) c
    
    hasMid = hasMidpoint(a, b, c)
    if (hasMid) then
        write(*, '(A)') 'has a midpoint!'
    else 
        write(*, '(A)') 'no midpoint.'
    end if 

contains
logical function hasMidpoint(a, b, c) result (exists)
    integer, intent(in) :: a, b, c
    ! normally M = (a+b) / 2 but to only have integers in the computer, we do 2M=a+b.
    exists = (2*a == b+c) .or. (2*b == a+c) .or. (2*c == a+b) 

end function hasMidpoint

end program MidPoint
