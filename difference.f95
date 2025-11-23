!Write a complete Java program in a class named Difference that prints the 
!following output:

! What is the difference between
! a ' and a "?  Or between a " and a \"?
! 
! One is what we see when we're typing our program.
! The other is what appears on the "console."


program Difference

    implicit none
    !character(len=30), parameter::message="What is the difference between" 
    !write(*, '(A)') message ! no leading space prepended 
    print*,'What is the difference between'
    
end program Difference

