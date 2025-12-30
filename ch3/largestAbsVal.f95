! Write a function named largestAbsVal that takes three integers as parameters 
! and returns the largest of the three absolute values.

program TestLargestAbsVal
    implicit none
    integer :: x, y, z, res 
    write(*,'(A)', advance='no') 'enter x val: '
    read(*,*) x
    write(*,'(A)', advance='no') 'enter y val: '
    read(*,*) y
    write(*,'(A)', advance='no') 'enter z val: '
    read(*,*) z
    res = largestAbsVal(x, y, z)
    write(*, '(A, I0)') 'largest value = ', res

contains

function largestAbsVal(x,y, z) result (largest)
    implicit none
    integer, intent(in) :: x, y, z
    integer :: largest
    largest = max(abs(x), abs(y), abs(z))
end function largestAbsVal

end program TestLargestAbsVal
