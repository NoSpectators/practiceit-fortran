! Write a method called randomLines that prints between 5 and 10 random 
! strings of letters (between "a" and "z"), one per line. Each string should 
! have random length of up to 80 characters.


program Lines
    implicit none
    call randomLines()

contains
subroutine randomLines
    real :: r     
    integer :: i, j, strLength
    character(len=80) :: s 
    character :: c

    call random_seed()
    call random_number(r)
    do i = 1, int(r*6) + 5                 ! [5, 10] 
        s = ""                             ! initialize line 
        call random_number(r)
        strLength = int(r*80)+1            ! [1,80]
        do j = 1, strLength 
            call random_number(r)
            s(j:j) = achar(int(r*26) + 97) ! [a,z]
        end do 
        write(*, '(A)') s(1:strLength) !print each line up to 80 characters of random lowercase letters 
    end do 
end subroutine randomLines

end program Lines 
