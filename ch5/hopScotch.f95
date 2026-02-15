! Write a method named hopscotch that accepts an integer parameter for a 
! number of "hops" and prints a hopscotch board of that many hops. A "hop" is 
! defined as the split into two numbers and then back together again into one.

program HopScotchBoard
    implicit none
    integer :: hops
    write(*, '(A)', advance='no') 'Enter number of hops: '
    read(*,*) hops
    
    call hopScotch(hops)

contains
subroutine hopScotch(n)
    integer, intent(in) :: n  
    integer :: i, current

    ! handle negative hops
    if (n < 0)  return 

    current = 1

    ! print first hop
    write(*, '(A2, I3)') ' ', current
    
    do i = 1, n
        ! print the split (both feet apart)
        write(*, '(I2, A3, I3)') current+1, ' ', current+2
        ! print the next landing (one foot) 
        current = current + 3
        write(*, '(A2, I3)') ' ', current
    end do 
end subroutine hopScotch

end program HopScotchBoard
