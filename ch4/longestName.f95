! Write a static method named longestName that reads names typed by the user 
! and prints the longest name (the name that contains the most characters) in 
! the format shown below. Your method should accept a console Scanner and an 
! integer n as parameters and should then prompt for n names. The longest 
! name should be printed with its first letter capitalized and all subsequent 
! letters in lowercase, regardless of the capitalization the user used when 
! typing in the name. If there is a tie for longest between two or more 
! names, use the tied name that was typed earliest. Also print a message 
! saying that there was a tie.

program TestLongestName
    implicit none
    integer :: n
    write(*, '(A)', advance='no') 'enter number of names to enter: '
    read(*,*) n
    call longestName(n)
    
contains

subroutine longestName(n) 
    integer, intent(in) :: n
    integer :: i, currLen, maxLen 
    character(len=30) :: currName, longest
    logical :: tieFound ! boolean

    ! initialize variables 
    maxLen = -1
    tieFound = .false.    

    do i = 1, n
        write(*, '(A)', advance = 'no') 'enter name: '
        read(*,*) currName
        currLen = len_trim(currName)
        if (currLen > maxLen) then
            maxLen = currLen
            longest = currName
            tieFound = .false.
        else if (currLen == maxLen) then
            tieFound = .true.
        end if 
    end do 
    write(*, '(A, I0)') 'length of longest: ', maxLen
    write(*, '(A, A)') 'longest name: ', longest
    if (tieFound) write(*, '(A)') "There was a tie!"

end subroutine longestName

end program TestLongestName
