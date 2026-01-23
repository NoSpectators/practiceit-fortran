! Write a subroutine named smallestLargest that asks the user to enter numbers, 
! then prints the smallest and largest of all the numbers typed in by the 
! user. You may assume the user enters a valid number greater than 0 for the 
! number of numbers to read.

program TestSmallestLargest
    implicit none
    call smallestLargest()

contains

subroutine smallestLargest()
    integer :: numCount, i 
    real :: current, minValue, maxValue
    
    write(*, '(A)', advance='no') 'How many numbers do you want to enter? '
    read(*,*) numCount

    !current is a real number, which is what we want to use inside huge()
    minValue = huge(current)
    maxValue = -huge(current)

    do i = 1, numCount
        write(*, '(A)', advance='no') 'enter num: '
        read(*,*) current
     
        ! use logical-if (instead of block-if)
        if (current >= maxValue) maxValue = current
        if (current <= minValue) minValue = current
    end do 

    write(*, '(A, F0.2)') 'smallest: ', minValue
    write(*, '(A, F0.2)') 'largest: ', maxValue

end subroutine smallestLargest

end program TestSmallestLargest
