! Write a piece of code that uses a for loop to compute and print the first 
! 12 Fibonacci numbers.
! The Fibonacci sequence is defined by Fn = Fn-1 + Fn-2 for n >= 2.

program fibonacci
    implicit none
    integer :: i, f0, f1, fn
   
    ! initialization of base cases
    f0 = 0 ! base case 1
    f1 = 1 ! base case 2

    write(*,*) f0
    write(*,*) f1
    
    do i = 2, 11
        fn = f0 + f1
        write(*,*) fn
        f0 = f1 ! f0 is the old f1
        f1 = fn ! f1 is the newly calculated fn
    enddo 

end program fibonacci
