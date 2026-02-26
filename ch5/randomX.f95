! Write a method named randomX that keeps printing lines, where each line 
! contains a random number of x characters between 5 and 19 inclusive, until 
! it prints a line with 16 or more characters.


program RandX
    implicit none
    call randomX()

contains
subroutine randomX
    real :: r
    integer :: i, n 

    call random_seed()
   
    n = 0 

    do while (n < 16)
        call random_number(r) ! get a new number every line
        
        ! length of each line: range formula=low + int(r*(high-low+1))
        n = 5 + int(r*(19-5+1)) ! [5, 19] 
       
        do i = 1, n
            write(*, '(A)', advance='no') 'x' 
        end do
        write(*,*)
    end do 

end subroutine randomX

end program RandX
