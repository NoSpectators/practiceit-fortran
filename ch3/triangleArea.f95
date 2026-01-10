! Write a method called triangleArea that accepts the three side lengths of a 
! triangle (all real numbers) as parameters and returns the area of a 
! triangle with those side lengths.

program TestTriangleArea
    implicit none
    real :: s1, s2, s3, area
    write(*, '(A)', advance='no') 'enter s1 length: '
    read(*,*) s1
    write(*, '(A)', advance='no') 'enter s2 length: '
    read(*,*) s2
    write(*, '(A)', advance='no') 'enter s3 length: '
    read(*,*) s3
    area = triangleArea(s1, s2, s3)
    write(*, '(A, F0.2)', advance='no') 'area is: ', area
    write(*,*)

contains

function triangleArea(s1, s2, s3) result (a)
    real, intent(in) :: s1, s2, s3
    real :: s, a
    ! heron's forula 
    s = (s1 + s2 + s3)/2.0
    a = sqrt(s*(s-s1)*(s-s2)*(s-s3))
end function triangleArea
    
end program TestTriangleArea
