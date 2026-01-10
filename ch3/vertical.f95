! Write a method called vertical that accepts a String as its parameter and 
! prints each letter of the string on separate lines.

program TestVertical
    implicit none
    character(len=100) :: input
    write(*, '(A)', advance='no') 'enter string: '
    read(*,*) input
    call vertical(input)
contains

subroutine vertical(string)
    character(len=*), intent(in) :: string
    integer :: i 
    do i = 1, len_trim(string)
        print*, string(i:i)
    end do
end subroutine vertical

end program TestVertical
