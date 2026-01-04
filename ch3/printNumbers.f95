! Write a subroutine called printNumbers that accepts a maximum number as a 
! parameter and prints each number from 1 up to that maximum, inclusive, 
! boxed by square brackets. You may assume that the value passed to 
! printNumbers is 1 or greater.


program TestPrintNumbers
    implicit none
    integer :: maxNum
    write(*, '(A)', advance='no') 'enter max num: '
    read(*,*) maxNum
    call printNumbers(maxNum)
   
contains

subroutine printNumbers(maxNum) 
    integer, intent(in) :: maxNum
    integer :: i
    do i = 1, maxNum
        write(*, '("[", I0, "]")', advance='no') i 
    enddo
    write(*,*)
end subroutine printNumbers

end program TestPrintNumbers
