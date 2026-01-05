! Write a subroutine called printPowersOfN that accepts a base and an exponent  
! as arguments and prints each power of the base from base^0 (1) up to that maximum power, 
! inclusive. You may assume that the exponent passed to printPowersOfN is 0 or 
! greater.

program TestPowersofN
    implicit none
    integer :: base, maxPower
    write(*, '(A)', advance='no') 'enter base: '
    read(*,*) base
    write(*, '(A)', advance='no') 'enter max power: '
    read(*,*) maxPower
    call printPowersOfN(base, maxPower)
    
contains 
subroutine printPowersOfN(base, maxPower)
    integer, intent(in) :: base, maxPower
    integer :: i, res
    ! base stays the same, exponent increases from 0 to maxPower inclusive  
    do i = 0, maxPower
        res = base**i 
        ! fencepost check (boundary). don't add space at very end. 
        if (i < maxPower) then
            write(*, '(I0, A)', advance='no') res, ' ' 
        else
            write(*, '(I0)', advance='no') res
        end if  
    end do
    write(*,*)
end subroutine printPowersOfN

end program TestPowersOfN
