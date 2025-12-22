! It's common to print a rotating, increasing list of single-digit numbers at 
! the start of a program's output as a visual guide to number the columns of 
! the output to follow. With this in mind, write nested for loops to produce 
! the following output, with each line 60 characters wide:
!
!          |         |         |         |         |         |
! 123456789012345678901234567890123456789012345678901234567890

program NumbersOutput60
    implicit none
    integer :: i, j, k
    do i = 1, 2
        do j = 1, 6
            do k = 1, 10
                if (i == 1) then
                    if (k == 10) then
                        write(*, '(A)', advance='no') "|"
                    else 
                        write(*, '(A)', advance='no') " "
                    end if
                else
                    if (k == 10) then
                        write(*, '(A)', advance='no') "0"
                    else
                        write(*, '(I0)', advance='no') k
                    end if 
                end if
            enddo 
        enddo
        write(*,*) !newline
    enddo
end program NumbersOutput60
