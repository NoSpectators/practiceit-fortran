! Write a complete program in a class named StarFigures that generates
! the following output. Use static methods to show structure and eliminate
! redundancy in your solution.
! *****
! *****
!  * *
!   *
!  * *
!
! *****
! *****
!  * *
!   *
!  * *
! *****
! *****
!
!   *
!   *
!   *
! *****
! *****
!  * *
!   *
!  * *

program StarFigures
    implicit none
    call twoBars()
    call x()
    call emptyLine()
    call twoBars()
    call x()
    call twoBars()
    call emptyLine()
    call verticalStars()
    call twoBars()
    call x()
end program StarFigures

subroutine twoBars
    write(*,*) "*****"
    write(*,*) "*****"
end subroutine twoBars

subroutine x
    write(*,*) " * * "
    write(*,*) "  *  "
    write(*,*) " * * "
end subroutine x

subroutine emptyLine
    write(*,*) 
end subroutine emptyLine

subroutine verticalStars
    write(*,*) "  *  "
    write(*,*) "  *  "
    write(*,*) "  *  "
end subroutine 
