! write a method named diceSum that prompts the user for a desired sum,
! then repeatedly rolls two six-side dice until their sum is the desired
! sum


program Dice
    implicit none
    call diceSum()

contains
subroutine diceSum
    integer :: desiredSum, seed, die1, die2
    write(*,'(A)', advance='no') 'enter desired sum: '
    read(*,*) desiredSum
   
    ! validate input
    if (desiredSum < 2 .or. desiredSum > 12) then
        write(*, '(A, I0, A)') "It's impossible to roll a ", desiredSum, " with two dice!"
        return
    end if 

    ! initialize variables
    seed = time() 
    call srand(seed)
    die1 = 0
    die2 = 0
    
    ! use random number generator for dice rolls and add together
    do while (die1 + die2 .ne. desiredSum) 
        die1 = int(rand(0) * 6.0d0 ) + 1
        die2 = int(rand(0) * 6.0d0 ) + 1
        write(*,'(A, I0)') 'dice 1: ', die1
        write(*,'(A, I0)') 'dice 2: ', die2
        write(*,'(A, I0)') 'current roll: ', die1 + die2
    end do 

end subroutine diceSum

end program Dice
