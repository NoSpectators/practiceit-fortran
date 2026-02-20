! Write a method named printAverage that accepts a Scanner for the console as 
! a parameter and repeatedly prompts the user for numbers. Once any number 
! less than zero is typed, the average of all non-negative numbers typed is 
! displayed. Display the average as a double, and do not round it.

program Average
    implicit none
    call printAverage()

contains
subroutine printAverage
    real :: inputNum, total
    integer :: numCount

    total = 0.0
    numCount = 0


    do 
        write(*, '(A)', advance='no') 'Enter a number: '
        read(*,*) inputNum
        
        if (inputNum <= 0) exit ! stop immediately
        
        numCount = numCount + 1
        total = total + inputNum

    end do

    if (numCount > 0) then
        write(*, '(A, F0.2)') 'average: ', (total / numCount)
    else 
        write(*, '(A)') 'no valid numbers entered.'
    end if

end subroutine printAverage

end program Average
