! Write a method called swapPairs that accepts a String as a parameter and 
! returns that String with each pair of adjacent letters reversed. If the 
! String has an odd number of letters, the last letter is unchanged.

program TestSwapPairs
    implicit none
    character(len=20) :: str
    character(len=:), allocatable :: result
    write(*,'(A)', advance='no') 'enter string: '
    read(*,'(A)') str
    result = swapPairs(trim(str))
    write(*,'(A, A, A)') 'result: "', result, '"'

contains
function swapPairs(str) result (s)
    character(len=*), intent(in) ::  str
    character(len=len(str)) :: s
    integer :: i

    s = str
    ! loop from 1 to len(str)-1, jumping by 2
    do i = 1, len(str)-1, 2 
        s(i:i) = str(i+1:i+1)  ! current position gets next character
        s(i+1:i+1) = str(i:i)  ! next position gets current character
    end do
end function swapPairs

end program TestSwapPairs
