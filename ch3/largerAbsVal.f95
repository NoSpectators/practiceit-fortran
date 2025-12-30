! Write a function named largerAbsVal that takes two integers as parameters 
! and returns the larger of the two absolute values.

program TestLargerAbsVal
    implicit none
    integer :: x, y, res 
    write(*,'(A)') 'enter x val: '
    read(*,*) x
    write(*,'(A)') 'enter y val: '
    read(*,*) y
    res = largerAbsVal(x, y)
    write(*, '(A, I0)') 'larger value = ', res

contains

function largerAbsVal(x,y) result (larger)
    implicit none
    integer, intent(in) :: x, y
    integer :: larger
    larger = max(abs(x), abs(y))
end function largerAbsVal

end program TestLargerAbsVal
