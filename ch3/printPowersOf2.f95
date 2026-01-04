! Write a subroutine called printPowersOf2 that accepts a maximum number as an 
! argument and prints each power of 2 from 2^0 (1) up to that maximum power, 
! inclusive. You may assume that the value passed to printPowersOf2 is 0 or 
! greater.

program TestPowersof2
    implicit none
    integer :: power
    write(*, '(A)', advance='no') 'enter max power: '
    read(*,*) power
    call printPowersOf2(power)
    
contains 
subroutine printPowersOf2(maxPower)
    integer, intent(in) :: maxPower
    integer :: i, res
    do i = 0, maxPower
        res = 2**i  
        ! fencepost check (boundary). don't add space at very end. 
        if (i < maxPower) then
            write(*, '(I0, A)', advance='no') res, ' ' 
        else
            write(*, '(I0)', advance='no') res
        end if  
    end do
    write(*,*)
end subroutine printPowersOf2

end program TestPowersOf2
