! Write a complete Fortran program in a class named Stewie2 that prints the
! following output. Use at least one static method besides main to remove
! redundancy.
! //////////////////////
! || Victory is mine! ||
! \\\\\\\\\\\\\\\\\\\\\\
! || Victory is mine! ||
! \\\\\\\\\\\\\\\\\\\\\\
! || Victory is mine! ||
! \\\\\\\\\\\\\\\\\\\\\\
! || Victory is mine! ||
! \\\\\\\\\\\\\\\\\\\\\\
! || Victory is mine! ||
! \\\\\\\\\\\\\\\\\\\\\\

program Stewie2
    implicit none
    integer :: i    
    call top()
    do i = 1, 5
        call victory()
    enddo 
end program Stewie2

subroutine top
    write(*,*) "//////////////////////"
end subroutine top

subroutine victory
    write(*,*) "|| Victory is mine! ||"
    write(*,*) "\\\\\\\\\\\\\\\\\\\\\\"
end subroutine victory
