! Write a static method called quadrant that takes as parameters a pair of 
! real numbers representing an (x, y) point and that returns the quadrant 
! number for that point. Recall that quadrants are numbered as integers from 1
! to 4 with the upper-right quadrant numbered 1 and the subsequent quadrants 
! numbered in a counter-clockwise fashion. Notice that the quadrant is 
! determined by whether the x and y coordinates are positive or negative 
! numbers. If a point falls on the x-axis or the y-axis, then the method 
! should return 0.

program TestQuadrant
    implicit none
    real :: x, y
    integer :: result
    write(*, '(A)', advance='no') 'enter x: '
    read(*,*) x
    write(*, '(A)', advance='no') 'enter y: '
    read(*,*) y
    result = quadrant(x, y)
    write(*, '(A, I0)') 'quadrant: ', result

contains
integer function quadrant(x, y)
    real, intent(in) :: x, y

    if (x > 0 .and. y > 0) then
        quadrant = 1
    else if (x < 0 .and. y > 0) then
        quadrant = 2
    else if (x < 0 .and. y < 0) then
        quadrant = 3
    else if (x > 0 .and. y < 0) then
        quadrant = 4
    else 
        quadrant = 0
    end if     
end function quadrant

end program TestQuadrant
