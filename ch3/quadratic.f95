! Write a subroutine called quadratic that solves quadratic equations 
! and prints their roots. 
!
! The subroutine should accept the coefficients a, b, and c as 
! parameters and print the roots of the equation. 
!
! Note: You may assume that the equation has two real roots. 
! Print the root resulting from the addition first, followed by 
! the root resulting from the subtraction.

! NOTE: the parabola needs to touch the x-axis at least once for it to be legit
! if the discriminant is positive or zero, it meets the requirements. 
! if the discriminant is negative, it fails. 
program TestQuadratic
    implicit none
    real :: a, b, c
    write(*,'(A)', advance='no') 'enter coefficient a: '
    read(*,*) a
    write(*,'(A)', advance='no') 'enter coefficient b: '
    read(*,*) b
    write(*,'(A)', advance='no') 'enter coefficient c: '
    read(*,*) c
    call quadratic(a, b, c)

contains

subroutine quadratic(a, b, c)
    implicit none
    real, intent(in) :: a, b, c
    real :: root1
    real :: root2
    real :: discriminant
    discriminant = b**2-4.0*a*c
    if (discriminant < 0) then
        print *, "Error: Roots are complex (imaginary)"
    else
        root1 = (-b + sqrt(discriminant)) / (2.0 * a)
        root2 = (-b - sqrt(discriminant)) / (2.0 * a)
    end if  
    print*, "First root: ", root1
    print*, "Second root: ", root2
end subroutine quadratic

end program TestQuadratic
