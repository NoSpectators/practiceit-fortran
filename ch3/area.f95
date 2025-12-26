! Write a function named area that accepts the radius of a circle as a 
! parameter and returns the area of a circle with that radius. You may assume 
! that the radius is non-negative.

program Circle
    implicit none
    real :: r, a, area 
    r = 5.0
    a = area(r)
    print*, a

end program Circle

function area(r) result (a)
    real :: r, a 
    real, parameter :: PI = 4.0 * atan(1.0) !calculate pi to maximum precision (single precision)
    a = PI*r**2    
end function area
