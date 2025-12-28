! Write a function named cylinderSurfaceArea that accepts a radius and height 
! (both real numbers) as parameters and returns the surface area of a 
! cylinder with those dimensions.

program cylinder
    implicit none
    real :: r, h, area
     
    write(*, '(A)') 'enter radius'
    read(*,*) r
    write(*, '(A, f0.2)') 'you entered ', r
    write(*, '(A)') 'enter height'
    read(*,*) h
    write(*, '(A, f0.2)') 'you entered ', h
    area = cylinderSurfaceArea(r, h)
    !0.2 means zero padding and two decimal points
    write(*, '(A, f0.2)') 'surface area: ', area
    
contains

function cylinderSurfaceArea(r, h) result(sa)
    implicit none
    real, intent(in) :: r, h !best practice to define intent for args
    real sa
    
    !PI
    real, parameter :: PI = 4.0 * atan(1.0) 
    ! formula: 2*PI*r*h + 2*PI*r^2
    sa = (2.0*PI*r*h) + (2*PI*r**2) 

end function cylinderSurfaceArea


end program cylinder
