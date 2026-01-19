! Write a method called printTriangleType that accepts three integer 
! arguments representing the lengths of the sides of a triangle and prints 
! what type of triangle it is. The three types are equilateral, isosceles, 
! and scalene.

program TriangleType
    implicit none
    integer :: a, b, c
    write(*, '(A)', advance='no') 'side a: '
    read(*,*) a
    write(*, '(A)', advance='no') 'side b: '
    read(*,*) b 
    write(*, '(A)', advance='no') 'side c: '
    read(*,*) c
    call printTriangleType(a, b, c)

contains
subroutine printTriangleType(a, b, c)
    integer, intent(in) :: a, b, c
    if (a == b .and. b == c) then
        write(*, '(A)') 'equilateral'
    else if (a == b .or. a == c .or. b == c) then
        write(*, '(A)') 'isosceles'
    else
        write(*, '(A)') 'scalene' 
    end if 
end subroutine printTriangleType

end program TriangleType
