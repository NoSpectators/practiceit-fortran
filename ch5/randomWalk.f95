! Write a method named randomWalk that performs a random one-dimensional 
! walk, reporting each position reached and the maximum position reached 
! during the walk. The random walk should begin at position 0. On each step, 
! you should either increase or decrease the position by 1 (with equal 
! probability). The walk stops when 3 or -3 is hit.

program Walk
    implicit none
    call randomWalk()

contains

subroutine randomWalk
    integer :: currentPosition, maxPosition
    real :: r

    call random_seed()
    call random_number(r)
    ! r is a random real number drawn from a uniform distribution on [0,1)
    
    currentPosition = 0
    maxPosition = 0


    do while (currentPosition > -3 .and. currentPosition < 3)
        write(*, '(A I0)') 'position = ', currentPosition 
        call random_number(r)
       
        if (r < 0.5) then
       ! Since the interval [0,1) is split in half, r < 0.5 happens with probability 1/2
            currentPosition = currentPosition - 1
        else 
            currentPosition = currentPosition + 1
        end if

        if (currentPosition > maxPosition) maxPosition = currentPosition
    end do
    
    write(*, '(A I0)') 'final position: ', currentPosition
    write(*, '(A I0)') 'maximum reached: ', maxPosition
    
end subroutine randomWalk

end program Walk
