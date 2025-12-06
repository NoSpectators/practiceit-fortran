! Write a complete Fortran program in a class named TwoRockets that generates
! the following output. Use static methods to show structure and eliminate
! redundancy in your solution.
!    /\       /\
!   /  \     /  \
!  /    \   /    \
! +------+ +------+
! |      | |      |
! |      | |      |
! +------+ +------+
! |United| |United|
! |States| |States|
! +------+ +------+
! |      | |      |
! |      | |      |
! +------+ +------+
!   /\        /\
!  /  \      /  \
! /    \    /    \

program TwoRockets
    implicit none
    call cone()
    call square()
    call united()
    call square()
    call cone()
end program TwoRockets

subroutine cone
    write(*,*) "   /\        /\    "
    write(*,*) "  /  \      /  \   "
    write(*,*) " /    \    /    \  "
end subroutine cone

subroutine square
    write(*,*) "+------+  +------+"
    write(*,*) "|      |  |      |"
    write(*,*),"|      |  |      |"
    write(*,*),"+------+  +------+" 
end subroutine square

subroutine united
    write(*,*) "|United|  |United|"
    write(*,*),"|States|  |States|" 
end subroutine united
