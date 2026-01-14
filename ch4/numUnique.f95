! Write a method named numUnique that takes three integers as parameters and 
! that returns the number of unique integers among the three.

program TestUnique
    implicit none
    integer :: n1, n2, n3, s
    write(*, '(A)', advance='no') 'n1: '
    read(*,*) n1   
    write(*, '(A)', advance='no') 'n2: '
    read(*,*) n2    
    write(*, '(A)', advance='no') 'n3: '
    read(*,*) n3   
    s = numUnique(n1, n2, n3)
    write(*,'(A, I0)') 'unique ints: ', s

contains

function numUnique(a, b, c) result (res)
    integer, intent(in) :: a, b, c
    integer :: res
    ! initialize variable 
    res = 0

    if (a == b .and. b == c) then
        res = 1
    else if (a == b .or. a == c .or. b == c) then
        res = 2
    else
        res = 3
    end if 

end function numUnique

end program TestUnique
