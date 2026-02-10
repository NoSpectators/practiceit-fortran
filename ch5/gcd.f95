! Write a method named gcd that accepts two integers as parameters and returns
! the greatest common divisor of the two numbers. The greatest common divisor 
! (GCD) of two integers a and b is the largest integer that is a factor of 
! both a and b. The GCD of any number and 1 is 1, and the GCD of any number 
! and 0 is that number.

!Example 1: GCD of 30 and 12
!Start: You have 30, I have 12.
!The Extra: How many 12s fit into 30? Two 12s make 24. The leftover (extra) is 6.
!The Swap: Now I have your old number (12) and you have the leftover (6).
!The Extra: How many 6s fit into 12? Exactly two! The leftover is 0.
!Winner: I am at zero, so you win. The GCD is 6.

program TestGCD
    implicit none
    integer :: x, y, greatest

    write(*, '(A)', advance='no') 'Enter num 1: '
    read(*,*) x
    
    write(*, '(A)', advance='no') 'Enter num 2: '
    read(*,*) y

    greatest = gcd(x, y)
    write(*, '(A, I0)') 'gcd: ', greatest

contains
integer function gcd(x, y) result (r)
    integer, intent(in) :: x, y
    integer :: a, b, temp
   
    ! 1. initialize local variables with the absolute values
    a = abs(x) 
    b = abs(y) 
    
    ! 2. The Euclidean algorithm
    ! keep replacing (a, b) with (b, a mod b) until b is 0 
    do while (b /= 0) 
        temp = b
        b = mod(a, b)
        a = temp
    end do
    ! 3. when b is 0, the GCD is stored in a 
    r = a
end function gcd 

end program TestGCD
