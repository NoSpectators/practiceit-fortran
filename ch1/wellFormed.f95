! Write a complete Fortran program in a program unit named well_formed that prints the
! following output:
!
! A well-formed Fortran program has
! a PROGRAM statement and an END PROGRAM statement
! to define the main scope.
!
! A WRITE statement
! has an output unit (like * or 6) and a format descriptor (like *) 
! and usually a String literal
! that starts and ends
! with a " character.
! (Note: Fortran uses " for strings!)

program WellFormed
    implicit none
    write(*,*) "A well-formed Fortran program has"
    write(*,*) "a PROGRAM statement and an END PROGRAM statement"
    write(*,*) "to define the main scope."
    write(*,*)
    write(*,*) "A WRITE statement"
    write(*,*) "has an output unit (like * or 6) and a format descriptor (like *)" 
    write(*,*) "and usually a String literal"
    write(*,*) "that starts and ends"
    write(*,*) "with a "" character."
    write(*,*) "(Note: Fortran uses "" for strings!)"
end program WellFormed
