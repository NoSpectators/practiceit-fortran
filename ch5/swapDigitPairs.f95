! Write a method named swapDigitPairs that accepts an integer n as a parameter
! and returns a new integer whose value is similar to n's but with each pair 
! of digits swapped in order. If the number contains an odd number of digits,
! leave the leftmost digit in its original place. You should solve this
! problem without using a String.

program SwapPairs
    implicit none
    integer :: inputNum, solution
  
    write(*,'(A)', advance='no') 'Enter an integer: '
    read(*,*) inputNum
    solution = swapDigitPairs(inputNum)
    write(*, '(A I0)') 'solution: ', solution

contains
integer function swapDigitPairs(inputNum) result(r)
    integer, intent(in) :: inputNum
    integer :: place, digit1, digit2, temp
    
    temp = inputNum
    r = 0
    ! 'place' is the anchor. it starts at 1 (the one's place).
    ! since we swap pairs, we move it by 100 each time (1, 100, 10000...)
    place = 1

    ! we only enter the loop if there are at least two digits to swap    
    do while (temp >= 10)
        ! extract the last two digits
        digit1 = mod(temp, 10)       ! (e.g., 1234, 1234 / 10 = 4)
        digit2 = mod(temp / 10, 10)  ! (e.g., 1234 / 10 = 123; 123 mod 10 = 3)
          
        ! swap them and place them in the result
        ! (e.g., (d1=4, d2=3), this math creates '43': 4*10+3=43.
        ! then, 43*100= 4300.
        r = r + (digit1 * 10 + digit2) * place
        
        temp = temp / 100   ! chop off the two digits we just used above
        place = place * 100 ! shift the 'bookmark' two spots to the left
    end do

    ! if an odd digit remains at the far left, add it now
    r = r + (temp * place)

end function swapDigitPairs

end program SwapPairs
