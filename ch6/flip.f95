! Write a method named coinFlip that accepts as its parameter a Scanner for 
! an input file. Assume that the input file data represents results of sets 
! of coin flips that are either heads (H) or tails (T) in either upper or 
! lower case, separated by at least one space. Your method should consider 
! each line to be a separate set of coin flips and should output to the 
! console the number of heads and the percentage of heads in that line, 
! rounded to the nearest tenth. If this percentage is more than 50%, you 
! should print a "You win" message. You may assume that the Scanner contains 
! at least 1 line of input, that each line contains at least one token, and 
! that no tokens other than h, H, t, or T will be in the lines.


program Flip
    implicit none
    character(len=50) :: fileName

    write(*, '(A)', advance='no') 'enter filename: ' ! flips.txt
    read(*, '(A)') fileName

    call coinFlip(filename)

contains

subroutine coinFlip(fName) 
    ! file variables
    character(len=*), intent(in) :: fName
    integer :: ios 
    character(len=200) :: line
    
    ! program variables 
    integer :: i, heads, tails
    real :: h_pctg
   
    ! initialize variables
    h_pctg = 0.0
    i = 0

    write(*, '(A A)') 'fileName: ', fName

    !open the file for reading
    open(unit=10, file=fName, status="old", action="read")
    
    do
        read(10, '(A)', iostat=ios) line
        if (ios /= 0) exit  ! nonzero ios = end of file or error
 
        ! need to reset heads and tails each row
        heads = 0
        tails = 0
        
        do i = 1, len_trim(line)
            write(*, '(A)', advance='no') line(i:i)
            if (line(i:i) == "H") then
                heads = heads + 1 
            else if (line(i:i) == "T") then 
                tails = tails + 1
            end if
        end do       

        h_pctg = real(heads) / real(heads + tails) * 100.
        write(*, '(A F6.2)') ' | heads pctg: ', h_pctg 
       
        ! this line has 50% or more 'H'
        if (h_pctg > 50.0) then 
            write(*, '(A)') 'You win!'
        end if 

    end do
end subroutine coinFlip

end program Flip
