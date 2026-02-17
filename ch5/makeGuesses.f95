! Write a method named makeGuesses that will guess numbers between 1 and 50 
! inclusive until it makes a guess of at least 48. It should report each 
! guess and at the end should report the total number of guesses made.

program Guesses
    implicit none
    call makeGuesses()

contains
subroutine makeGuesses
    integer :: num, guesses
    real :: r 
    
    ! initialize random seed 
    call random_seed()
    
    num = 0
    guesses = 0

    ! loop until we hit 48 
    do while (num < 48) 
        ! generate random number between 1 and 50 inclusive 
        call random_number(r)
        num  = int(r * 50) + 1
        
        guesses = guesses + 1
        write(*,'(A, I0)') 'guess: ', num
    end do 

    write(*, '(A, I0, A)') 'found it! it took ', guesses, ' guesses.'
    
end subroutine makeGuesses

end program Guesses
