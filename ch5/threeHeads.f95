! Write a method named threeHeads that repeatedly flips a coin until three 
! heads in a row are seen. You should use a Random object to give an equal 
! chance to a head or a tail appearing. Each time the coin is flipped, what 
! is seen is displayed (H for heads, T for tails). When 3 heads in a row are 
! flipped a congratulatory message is printed.

program Heads
    implicit none
    call threeHeads()

contains

subroutine threeHeads
    integer :: headsInRow
    real :: r

    call random_seed()
    
    headsInRow = 0

    do while (headsInRow < 3)
        call random_number(r)
       
        if (r < 0.5) then
       ! Since the interval [0,1) is split in half, r < 0.5 happens with probability 1/2
            write(*,'(A)') 'T'
            headsInRow = 0
        else 
            write(*, '(A)') 'H'
            headsInRow = headsInRow + 1
        end if

    end do
    
    write(*, '(A)') 'three heads in a row!'
    
end subroutine threeHeads

end program Heads
