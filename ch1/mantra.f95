! Write a complete Fortran program that produces the following output.
! The program should remove redundancy by adding a subroutine.

! Expected output:

! There's one thing every coder must understand:
! The System.out.println command.

! There's one thing every coder must understand:
! The System.out.println command.

program OneThing
    implicit none
    call mantra()
    call printSpace()
    call mantra()
end program OneThing

subroutine mantra()
    write(*,*) "There's one thing every coder must understand:"
    write(*,*) "The write(*,*) command."
end subroutine mantra

subroutine printSpace()
    write(*,*)
end subroutine printSpace

