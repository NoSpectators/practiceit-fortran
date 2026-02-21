! Write a method named printFactors that accepts an integer as its parameter 
! and uses a fencepost loop to print the factors of that number, separated by 
! the word " and ".

program Factors
    implicit none
    integer :: inputNum
    
    write(*, '(A)', advance='no') 'enter integer: '
    read(*,*) inputNum

    call printFactors(inputNum)

contains
subroutine printFactors(n)
    integer, intent(in) :: n
    integer :: i

    ! user input validation
    if (n <= 0) then
        write(*, '(A)') 'Please enter a positive integer.'
        return
    end if

    write(*, '(I0 A)', advance='no') 1   ! the "fencepost"
    do i = 2, n
        if (mod(n, i) == 0) write (*, '(A I0)', advance='no') " and ", i   ! all other cases
    end do
    write(*,*) 
end subroutine printFactors

end program Factors
