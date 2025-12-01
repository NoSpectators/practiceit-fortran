! Write a complete Fortran program in a class named MuchBetter that prints the 
! following output:
! 
! A "quoted" String is
! 'much' better if you learn
! the rules of "escape sequences."
! Also, "" represents an empty String.
! Don't forget: use \" instead of " !
! '' is not the same as "

program MuchBetter
    implicit none
    write(*, '(A)') "A ""quoted"" String is"    
    write(*, '(A)') "'much' better if you learn"
    write(*, '(A)') "the rules of ""escape sequences."""
    write(*, '(A)') "Also, """" represents an empty String."
    write(*, '(A)') "Don't forget: use """" instead of "" !"
    write(*, '(A)') "'' is not the same as """
end program MuchBetter
