! Write a program in a class named Shining that prints the following line of 
! output 1000 times:
! All work and no play makes Jack a dull boy.

program Shining
    implicit none
    integer :: i 
    do i = 1, 1000
        write(*,*) "All work and no play makes Jack a dull boy."
    enddo
end program Shining 
