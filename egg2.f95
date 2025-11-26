! Write a complete Java program in a class named Egg2 that generates the 
! following output. Use static methods to show structure and eliminate 
!  redundancy in your solution.
!   _______
!  /       \
! /         \
! \         /
!  \_______/
! -"-'-"-'-"-
!   _______
!  /       \
! /         \
! \         /
!  \_______/
! -"-'-"-'-"-
! \         /
!  \_______/
!   _______
!  /       \
! /         \
! -"-'-"-'-"-
! \         /
!  \_______/

program Egg2
    implicit none
    call top()
    call middle()
    call bottom()  
    call printSpace()
    call top()
    call bottom()
    call middle()
    call bottom()
    call printSpace()
    call top()
    call middle()
    call bottom()
end program Egg2

subroutine top() 
    write(*,*) "  _______  "
    write(*,*) " /       \ "  
    write(*,*) "/         \"
end subroutine top      

subroutine bottom()
    write(*,*) "\         /"
    write(*,*) " \_______/"
end subroutine bottom

subroutine middle()
    write(*,*) "-""-'-""-'-""-"
end subroutine middle

subroutine printSpace()
    write(*,*)
end subroutine printSpace 
